  100 rem Purpose: Verify OPEN - PUT - GET - CLOSE sequence
  110 rem  Author: Howard Wulf, AF5NE
  120 rem    Date: 2016-01-12
  130 rem    Note: OPTION VERSION RSTS-11
  140 rem
  200 let F$ = "GET_1.DAT"
  210 let F% = 123
  220 open F$ as file F% , recordsize 234 , clustersize 345, filesize 456, mode 567
  230 put F% , record 16
  240 get F% , record 16
  250 close F%
  999 end

