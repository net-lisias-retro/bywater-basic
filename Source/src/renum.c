/*-------------------------------------------------------------------*/
/* renum.c -- Renumbers a BASIC program in an ASCII file.            */
/* Originally written in HP 2000 BASIC by David Lance Robinson, 1977 */
/* Adapted to MS BASIC and translated to C 4/1995 by Jon B. Volkoff  */
/* (eidetics@cerf.net)                                               */
/*                                                                   */
/* Some changes 04-2020 Ken. Re cp or copy and input terminator      */
/*                           when compiling under DOS use -DMSDOS    */
/*                           And fgets under Ubuntu.                 */
/*                                                                   */
/* 8-2021 Ken.  Saves original program in editfl.bas                 */
/*              Cleans up editfl                                     */
/*              Handles both upper and lower case GOTo GOSub IF THEN */
/*               ON , PRInt , SHEll and INPut                        */
/*              Trims leading white space on line numbers.           */
/*               Thanks Chipmaster                                   */
/*                                                                   */
/*              Compile as    gcc renum.c -o renum                   */
/*-------------------------------------------------------------------*/
/* *WARN* This code is still broken. Use at your own risk! Its taken
          more effort than writing it from scratch. I'm not putting
          any more effort into it. -- ChipMaster */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_LINE_LENGTH  255
#define MAX_LINE_COUNT   1500

int instr();
char *midstr1();
char *midstr2();
char *myfget;
void binary_search(void);
void trim(char *s);
char *umids(char *astr, int start, int len);

int f2, l2, n, x;
int sidx[MAX_LINE_COUNT][2];
int myretn;
char rstr[MAX_LINE_LENGTH];

int main(argc, argv)
   int argc;
   char *argv[];
{
   int f, d, s, p, s1, t, l, g;
   int c, f1, c1, i, f8, r, l1, l3;
   int v1, f6, l6, b, f9, x9, b1, p8, p9, a, d9;
   char pstr[MAX_LINE_LENGTH];
   char sstr[MAX_LINE_LENGTH];
   char f9str[MAX_LINE_LENGTH];
   char s9str;
   char tempstr[MAX_LINE_LENGTH  + 64];
   FILE *fdin;
   FILE *fdout;
   int skip, bp, temp, getout, disp_msg , xken;

   f = 1;

   printf("Version 08/12/2021 Known issues. See version renum2.c\n");

   if (argc > 1) strcpy(pstr, argv[1]);
   else
   {
      printf("Program in file (basic bas file)? ");
      myfget=fgets(pstr,MAX_LINE_LENGTH, stdin);
      if (strchr(pstr, '\n') != NULL)
        {
           pstr[strlen(pstr)-1] = '\0'; /* NULL terminate input. Ken */
        }

   }
   if (strlen(pstr) == 0) strcpy(pstr, "0.doc");

   if (strcmp(pstr,"editfl.bas") == 0)
    {
      printf("Can not use editfl.bas as progran in file.\n");
      printf("editfl.bas is a backup original of the last run.\n");
      printf("Exiting.\n");
      exit(1);
    }

   fdin = fopen(pstr, "rt");
   if (fdin == NULL)
   {
      printf("Unable to open input file. Exiting.\n");
      exit(1);
   }
   strcpy(f9str, pstr);

#if defined(__MVS__) || defined(__CMS__)
   strcpy(pstr, "dd:editfl");
#else
   strcpy(pstr, "editfl");
#endif

   fdout = fopen(pstr, "wt");
   /* After editfl is created it is left behind. Ken */
   if (fdout == NULL)
   {
      printf("Unable to open temporary file editfl for output.\n");
      printf("Exiting.\n");
      exit(1);
   }

   /* Main program begins here */
   s = 0; l2 = 0; d = 0;
   f2 = 10000;
   printf ("PLEASE WAIT A FEW SECONDS! READING INPUT.\n");
   while (fgets(pstr, MAX_LINE_LENGTH, fdin) != NULL)
   {
      trim(pstr);
      p = instr(pstr, " ");
      if (p != 0 && p <= 5)
      {
         n = atoi(midstr2(pstr, 1, p));
         if (n != 0)
         {
            s++;
            if( s < MAX_LINE_COUNT )
            {
              /* OK */
            }
            else
            {
              printf("Too many lines. Over %d\n",MAX_LINE_COUNT);
              printf("Exiting.\n");
              exit(1);
            }
            sidx[s][0] = n;
            s1 = s;
            while (s1 >= 2)
            {
               s1--;
               if (sidx[s1][0] < sidx[s1 + 1][0]) break;
               if (sidx[s1][0] == sidx[s1 + 1][0])
               {
                  printf("ERROR !!! MORE THAN ONE STATEMENT FOR A ");
                  printf("STATEMENT NUMBER\n");
                  printf("Line #%s\n",pstr);
                  printf("Exiting.\n");
                  exit(1);
               }

               t = sidx[s1][0];
               sidx[s1][0] = sidx[s1 + 1][0];
               sidx[s1 + 1][0] = t;
            }
         }
      }
   }
   fclose(fdin);

   if (s == 0)
   {
      printf("Programs must start with a number in column 1.\n");
      printf("NO PROGRAM IS IN THE FILE!\n");
      printf("Exiting.\n");
      exit(1);
   }

   strcpy(pstr, "");

   for (l = 1; l <= s; l++)
      sidx[l][1] = sidx[l][0];
   g = 1;
   disp_msg = 1;

   /*------------------------------------------------------------------------*/
   /* Find out how and what to renumber (using HP BASIC renumber parameters) */
   /* MS BASIC renumber is: RENUM (newnum) (,(oldnum) (,increment))          */
   /*------------------------------------------------------------------------*/

   while(1)
   {
      if (disp_msg == 1)
      {
         printf("Enter (-starting number (,interval (,first statement ");
         printf("(,last))))\n");
         disp_msg = 0;
      }

      skip = 0;
      bp = 0;
      printf("RENUMBER-");
      myfget=fgets(pstr,MAX_LINE_LENGTH,stdin);
      p = strlen(pstr);

      if (g == 0)
      {
         if (strlen(pstr) == 0) break;
         if (p == 0) skip = 1;
         else
         {
            t = atoi(midstr2(pstr, 1, 1));
            if (t == 0) break;
         }
      }

      if (strlen(pstr) == 0) skip = 1;

      if (skip == 0)
      {
         c = instr(pstr, ",");
         temp = 0; if (c != 0) temp = -1;
         f1 = atoi(midstr2(pstr, 1, p + temp*(p - c + 1)));
         if (f1 == 0) bp = 1;
         if (c == 0) skip = 2;
      }

      if (skip == 0 && bp == 0)
      {
         c1 = instr(midstr1(pstr, c + 1), ",") + c;
         temp = 0; if (c1 != c) temp = -1;
         i = atoi(midstr2(pstr, c + 1, p + temp*(p - c1 + 1) - c));
         if (i == 0) bp = 1;
         if (c1 == c) skip = 3;
      }

      if (skip == 0 && bp == 0)
      {
         c = instr(midstr1(pstr, c1 + 1), ",") + c1;
         temp = 0; if (c != c1) temp = -1;
         f8 = atoi(midstr2(pstr, c1 + 1, p + temp*(p - c + 1) - c1));
         if (f8 == 0) bp = 1;
         if (c == c1) skip = 4;
      }

      if (skip == 0 && bp == 0)
      {
         l = atoi(midstr1(pstr, c + 1));
         if (l == 0) bp = 1;
      }

      if (bp == 0) switch (skip)
      {
         case 1:
            f1 = 10;
            i = 10;
            f8 = 1;
            l = 99999;
            break;

         case 2:
            i = 10;
            f8 = 1;
            l = 99999;
            break;

         case 3:
            f8 = 1;
            l = 99999;
            break;

         case 4:
            l = 99999;
            break;
      }

      if (f1 < 1 || i == 0 || f8 < 1 || l < 1) bp = 1;

      if (f1 > 99999 || i > 99999 || f8 > 99999 || l > 99999 || f8 > l)
         bp = 1;

      c = 0;
      for (r = 1; r <= s; r++)
         if (sidx[r][0] >= f8 && sidx[r][0] <= l) c = c + 1;
      if (c == 0)
      {
         printf("There is nothing to renumber !!\n");
         disp_msg = 1;
      }

      /*------------------------------------*/
      /* Make list of new statement numbers */
      /*------------------------------------*/

      l1 = f1 + (c - 1)*i;
      if (l1 < 1 || l1 > 99999) bp = 1;

      x = 0; c = 0;
      if (bp == 0 && disp_msg == 0) for (r = 1; r <= s; r++)
      {
         if (sidx[r][0] < f8 || sidx[r][0] > l)
         if (sidx[r][1] >= f1 && sidx[r][1] <= l1)
         {
            printf("SEQUENCE NUMBER OVERLAP\n");
            printf("Exiting.\n");
            exit(1);
         }
         else {}
         else
         {
            if (sidx[r][0] != f1 + c*i)
            {
               if (x == 0)
               {
                  if (r < f2) f2 = r;
                  x = 1;
               }

               if (r > l2) l2 = r;
            }

            sidx[r][1] = f1 + c*i;
            c++;
            l3 = r;
         }
      }

      if (bp == 0 && disp_msg == 0) g = 0;

      if (bp == 1) printf("BAD PARAMETER\n");
   }

   /*-------------------*/
   /* Start renumbering */
   /*-------------------*/

   if (l2 == 0)
   {
      printf("NOTHING RENUMBERED!\n");
      exit(1);
   }

   printf("RENUMBERING\n");

/*
   for (r = 1; r <= s; r ++)
      printf("%d -> %d\n", sidx[r][0], sidx[r][1]);
 */

   printf("VERIFY? N or n cancels:");
   myfget=fgets(pstr,MAX_LINE_LENGTH,stdin);
   v1 = 0;
   if (strcmp(midstr2(pstr, 1, 1), "N") == 0) v1 = 1; /* Except n or N. Ken */
   if (strcmp(midstr2(pstr, 1, 1), "n") == 0) v1 = 1;

   if (v1 == 1) {
	   printf("Operation cancelledi.\n");
   	 exit(1);
   }

   fdin = fopen(f9str, "rt");
   if (fdin == NULL)
   {
      printf("Unable to open input file.\n");
      exit(1);
   }

   f6 = sidx[f2][0];
   l6 = sidx[l2][0];

   while (fgets(pstr, MAX_LINE_LENGTH, fdin) != NULL)
   {
      trim(pstr);
      if (*pstr)
      {
         b = 0;
         if (*pstr>='0' && *pstr<='9')
         {
            b = instr(pstr, " ");
            n = atoi(midstr2(pstr, 1, b));
            if (n >= f6 && n <= l6)
            {
               binary_search();
               if (x == 0)
               {
                  strcat(rstr, midstr1(pstr, b));
                  strcpy(pstr, rstr);
                  b = instr(pstr, " ");
               }
            }
            b++;
         }

         /*-------------------------------------------------------------*/
         /* There are differences, of course, between processing for HP */
         /* BASIC and MS BASIC.                                         */
         /*                                                             */
         /* CONVERT, PRINT USING, and MAT PRINT USING changes are not   */
         /* applicable in MS BASIC.                                     */
         /*                                                             */
         /* Had to also add capability for multiple statements here.    */
         /*-------------------------------------------------------------*/

         while(1)
         {
            /* ChipMaste-20210817 skip leading WS to start on a token */
            while(pstr[b-1]==' ' || pstr[b-1]=='\t') b++;
            xken = 0;
            if (strcmp(umids(pstr, b, 3), "REM") == 0 || pstr[b-1]=='\'')
               break;
            f9 = 0;
            skip = 0;
            b1 = strlen(pstr);
            for (x9 = b-1; x9 < b1; x9++)
            {
               if (pstr[x9] == '"')
               {
                  f9 = !f9;
               }
               else if (f9 == 0 && pstr[x9] == ':')
               {
                  b1 = x9; /* NOTE: most of this code runs @ BASIC's 1 base */
               }
            }

     /* GOSub , GOTo , IF , ON , RESet , RETurn , SHEll , PRInt , INPut Ken */
     /* 2       3      4    5    6       7        8       9       10        */
            t = instr("GOSGOTIF ON RESRETSHEPRIINP", umids(pstr, b, 3));
            temp = (t + 5)/3;
            if (temp != 1)
            {
               if (temp == 2 || temp == 3 || temp == 4 ||
                   temp == 6 || temp == 7 || temp == 8 ||
                   temp == 9 || temp ==10 )
               {
                /*---------------------------------------------------------*/
                /* Change GOSub, GOTo, IF , REStore, RETurn, SHEll         */
                /* PRInt , INPut                                           */
                /* routine.                                                */
                /* Go word by word through the statement.                  */
                /*---------------------------------------------------------*/
                  getout = 0;
                  p8 = b;
                  s9str=' ';
               }
               else if (temp == 5) /* 5 = ON as in ON ERROR */
               {
                  /*---------------------------------------------------*/
                  /* Change ON event/expression GOSUB/GOTO routine.    */
                  /* Find starting point appropriate to this statement */
                  /* type. There are several variations of the ON ...  */
                  /* statments but only the ones with "GOTO" or        */
                  /* "GOSUB" get renumbered. ANd they can have         */
                  /* multiple line numbers.                            */
                  /*---------------------------------------------------*/
                  getout = 1;
                  x9 = instr(pstr+b-1, " GOTO ");
                  if(x9) {
                    x9+=5;
                  } else {
                     x9 = instr(pstr+b-1, " GOSUB ");
                     if(x9) x9+=6;
                  }
                  if(x9) {
                     p8 = x9+b;
                     getout = 0;
                     s9str=',';
                  }
               }
               /* End of scanning statement                          */

               /* Start looping here */
               if (getout == 0) while(1)
               {
                  f9 = 0;
                  skip = 0;
                  /* ChipMaster-20210816 skip leading WS */
                  while(p8<b1 && (pstr[p8-1]==' ' || pstr[p8-1]=='\t'))
                    p8++;
                  for (x9 = p8-1; x9 < b1; x9++)
                  {
                     /* Is a quote " ? */
                     if (pstr[x9] == '"')
                     {
                        f9 = !f9;
                     }
                     else if (f9 == 0 && pstr[x9]==s9str)
                     {
                        p9 = x9;
                        skip = 1;
                        break;
                     }
                  }
                  if (skip == 0) p9 = b1;
                  skip = 0;
                  for (x9 = p8-1; x9 < p9; x9++)
                  {
                     /* Is not a digit 0 to 9 ?  */
                     if (pstr[x9] < '0' || pstr[x9] > '9')
                     {
                        skip = 1;
                        break;
                     }
                  }

                  if (skip == 0)
                  {
                     /*---------------------*/
                     /* Found a line number */
                     /*---------------------*/
                     n = atoi(midstr2(pstr, p8, p9 - p8 + 1));
                     if (n != 0)
                     {
                        if (n >= f6 && n <= l6)
                        {
                           binary_search();
                           if (x == 0)
                           {
                              if (p9 == strlen(pstr))
                              {
                                 strcpy(tempstr, midstr2(pstr, 1, p8 - 1));
                                 strcat(tempstr, rstr);
                                 strcpy(pstr, tempstr);
                              }
                              else
                              {
                                 strcpy(tempstr, midstr2(pstr, 1, p8 - 1));
                                 strcat(tempstr, rstr);
                                 strcat(tempstr, midstr1(pstr, p9 + 1));
                                 strcpy(pstr, tempstr);
                              }

                              /*-----------------------------------*/
                              /* Adjust indices to account for new */
                              /* substring length, if any.         */
                              /*-----------------------------------*/
                              d9 = strlen(rstr) - (p9 - p8 + 1);
                              p9 = p9 + d9;
                              b1 = b1 + d9;
                           }
                        }
                     }
                  }

                  p8 = p9 + 2;
                  if (p8 > b1) break;
               }
            }

            /*--------------------------------------------------*/
            /* No more words to process in the statement, go to */
            /* next statement.                                  */
            /*--------------------------------------------------*/
            if (b1 == strlen(pstr)) break;
            b = b1 + 2;
         }
      }

      fprintf(fdout, "%s\n", pstr);
      if (v1 == 0) printf("%s\n", pstr);
   }

   fclose(fdin);
   fclose(fdout);

/* 11-2019 Ken */
#if !defined(__MVS__) && !defined(__CMS__) && !defined(MSDOS)
   tempstr[strlen(tempstr)] = '\0';
   sprintf(tempstr, "cp %s editfl.bas", f9str);
   myretn=system(tempstr);
   printf("\nOriginal basic program is stored in editfl.bas\n\n");
   sprintf(tempstr, "cp editfl %s", f9str); /* Linux type systems use cp. Ken */
   myretn=system(tempstr);
   sprintf(tempstr, "rm editfl");
   myretn=system(tempstr);
#endif
#if defined(MSDOS)
   tempstr[strlen(tempstr)] = '\0';
   sprintf(tempstr, "copy %s editfl.bas", f9str); /* MSDOS no cp command. Ken */
   myretn=system(tempstr);
   printf("\nOriginal basic program is stored in editfl.bas\n\n");
   sprintf(tempstr, "copy editfl %s", f9str);
   myretn=system(tempstr);
   sprintf(tempstr, "del editfl");
   myretn=system(tempstr);
#endif

   return (0);
}


/* 20210826 ChipMaster - make a case insensitive compare */
int instr(astr, bstr)
   char *astr, *bstr;
{
   char *p, *compa, *compb, ca, cb;
   int q;

   for(p=astr; *p; p++) {
      for(compa=p, compb=bstr; *compa && *compb; compa++, compb++) {
         /* if lcase letter make ucase for comparison */
         ca = *compa>='a' && *compa<='z' ? *compa&95 : *compa;
         cb = *compb>='a' && *compb<='z' ? *compb&95 : *compb;
         if(ca!=cb) break; /* no match */
      }
      if(!*compb) return p-astr+1; /* ooh! we matched bstr */
      if(!*compa) return 0; /* unsearched astr is now shorter than bstr */
   }
   return 0; /* JIC */
}


char *midstr1(astr, start)
   char *astr;
   int start;
{
   static char tempstr[MAX_LINE_LENGTH];
   char *startptr;

   strcpy(tempstr, astr);
   startptr = &tempstr[start - 1];


   return startptr;
}


char *midstr2(astr, start, len)
   char *astr;
   int start, len;
{
   static char tempstr[MAX_LINE_LENGTH];
   char *startptr, *endptr;

   strcpy(tempstr, astr);
   startptr = &tempstr[start - 1];
   endptr = ((tempstr) + start + len - 1);
   strcpy(endptr, "\0");

   return startptr;
}


/* 2021-08-15 ChipMaster: a MID$() to aid with case insensitivity */
char *umids(char *astr, int start, int len) {
   static char buf[MAX_LINE_LENGTH];
   char *p;

   buf[0]=0;
   if(start<1 || len<1) return buf; /* JIC */
   for(start--; start; start--) if(!*astr++) return buf;
   if(len>MAX_LINE_LENGTH-1) len = MAX_LINE_LENGTH-1; /* have to leave room for \0 */
   for(p=buf; *astr && len; len--) {
      if(*astr>='a' && *astr<='z') *p++=(*astr++ & 95); /* UCASE it */
      else                         *p++=*astr++;
   }
   *p=0;
   return buf;
}


void binary_search(void)
{
   int f5, l5;

   f5 = f2;
   l5 = l2 + 1;

   while(1)
   {
      int m;

      m = (f5 + l5)/2;

      if (sidx[m][0] == n)
      {
         rstr[strlen(rstr)] = '\0';
         sprintf(rstr, "%d", sidx[m][1]);
         x = 0;
         return;
      }

      if (m == f5 || m == l5)
      {
         x = 1;
         return;
      }

      if (sidx[m][0] < n)
         f5 = m;
      else
         l5 = m;
   }
}

/* Chipmaster 8-2021 */

void trim(char *s) {
  char *p, *e;
  /* First trim EOL WS */
  for(p=s, e=0; *p; p++) if(*p>' ') e=p;
  if(e) *++e=0;
  /* Then trim BOL WS */
  for(p=s; *p && *p<=' '; p++) ;
  if(p==s) return;
  for(; *p; p++) *s++=*p;
  *s=0;
}
