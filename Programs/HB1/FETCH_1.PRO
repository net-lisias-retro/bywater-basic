DIM M%(100)
65000 REM FAKE STUFF() & FETCH()
65010 DEF STUFF(X,Y)
65020   M%(X-18300)=Y
65030 FNEND
65040 DEF FETCH(X)
65050   FETCH=M%(X-18300)
65060 FNEND
