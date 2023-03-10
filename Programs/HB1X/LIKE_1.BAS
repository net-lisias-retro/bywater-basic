  100 rem Purpose:  Verify LIKE operator
  110 rem  Author:  Howard Wulf, AF5NE
  120 rem    Date:  2015-06-04
  130 rem
  140 restore
  150 read Y, A$, B$
    : let X = A$ like B$
    : print using "%          % LIKE %          % = ## (should be ##) ";A$;B$;X;Y;
    : if X <> Y then
    : print "ERROR"
    : else
    : print "OK"
    : end if
    : if len(A$) = 0 and len(B$) = 0 then 999
  199 goto 150
  200 data -1, "TEST.BAS", "*.BAS"
    : data -1, "TEST.BAS", "TEST.*"
    : data -1, "TEST.BAS", "*.*"
    : data -1, "TEST.BAS", "*"
    : data -1, "TBAS.BAS", "*BAS"
    : data -1, "BAST.BAS", "*BAS"
    : data -1, "TEST.BAS", "*T.B*"
    : data -1, "TEST.BAS", "*ST.BA*"
    : data -1, "TEST.BAS", "*.[B][A][S]"
    : data -1, "TEST.BAS", "*.[Bb][Aa][Ss]"
    : data  0, "TEST.BAS", "*.[!B][A][S]"
    : data  0, "TEST.BAS", "*.[B][!A][S]"
    : data  0, "TEST.BAS", "*.[B][A][!S]"
    : data -1, "TEST.BAS", "*.[A-Z][A-Z][A-Z]"
    : data -1, "TEST.BAS", "*.[!AC-Z0-9][!B-Z0-9][!A-RT-Z0-9]"
    : data  0, "ABCDEFG" , "*.BAS"
    : data  0, "ABCDEFG" , "TEST.*"
    : data  0, "ABCDEFG" , "*.*"
    : data -1, "ABCDEFG" , "*"
    : data -1, "ABCDEFG" , "A*"
    : data  0, "BBCDEFG" , "A*"
    : data -1, "ABCDEFG" , "*G"
    : data  0, "ABCDEFF" , "*G"
    : data -1, "ABCDEFG" , "[A-Z]*"
    : data -1, "ABCDEFG" , "*[A-Z]"
    : data -1, "ABCDEFG" , "[A-Z]*[A-Z]"
    : data -1, "1234567" , "#*"
    : data  0, "X234567" , "#*"
    : data -1, "1234567" , "*#"
    : data  0, "123456X" , "*#"
    : data -1, "1234567" , "#######"
    : data -1, "123X567" , "###?###"
    : data -1, "123X567" , "###X###"
    : data  0, "123X567" , "##?####"
    : data -1, "123X567" , "##?X###"
    : data -1, "ABCDEFG" , "?*"
    : data -1, "ABCDEFG" , "*?"
    : data -1, "ABA"     , "*BA"
    : data -1, "ABA"     , "AB*"
    : data -1, "ABA"     , "ABA"
    : data -1, "ABBA"    , "*BA"
    : data -1, "ABBA"    , "AB*"
    : data -1, "ABBA"    , "*BB*"
    : data -1, "ABBA"    , "A*A"
    : data -1, "ABBBA"   , "*BA"
    : data -1, "ABBBBA"  , "*BA"
    : data  0, "ABBAA"   , "*BA"
    : data -1, "ABABABA" , "*BA"
    : data -1, "ABAZZBA" , "*BA"
    : data -1, "ABAZZBA" , "*BA"
    : data -1, "AZBAZBA" , "*B*Z*A"
    : data -1, "AZBAZBA" , "*A*Z*B*A"
    : data -1, "AZBAZBA" , "*A*Z*B*A*"
    : data  0, ""        , "[!]"
    : data  0, ""        , "[!]*"
    : data  0, ""        , "*[!]"
    : data -1, "X"       , "[!]"
    : data -1, "X"       , "[!]*"
    : data -1, "X"       , "*[!]"
    : data -1, ""        , "[]"
    : data -1, ""        , "[]*"
    : data -1, ""        , "*[]"
    : data  0, "X"       , "[]"
    : data -1, "X"       , "[]*"
    : data -1, "X"       , "*[]"
    : data -1, "X"       , "?[]"
    : data -1, "X"       , "?[]*"
    : data -1, "X"       , "*?[]"
    : data -1, "X"       , "?*[]"
    : data -1, "X"       , "X[]"
    : data -1, "X"       , "X[]*"
    : data -1, "X"       , "*X[]"
    : data -1, "X"       , "X*[]"
    : data -1, ""        , "*"
    : data -1, ""        , ""
  999 end
