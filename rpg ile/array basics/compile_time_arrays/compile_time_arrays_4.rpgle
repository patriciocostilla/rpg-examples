     H dftactgrp(*no)
     D len             c                   const(10)
     D wwarr           s              4s 0 dim(len) ctdata perrcd(2)
     D i               s              2s 0
       for i = 1 to len;
        dsply wwarr(i);
       endfor;
       return;
**CTDATA WWARR
00100020
00300040
00500060
00700080
00900100
