     H dftactgrp(*no)
     D wwarr1          s              4s 0 dim(5) ctdata perrcd(1)
     D wwarr2          s              4a   dim(5) alt(wwarr1)
     D
     D i               s              2s 0
     D msg             s             52a
       for i = 1 to 5;
        msg = %char(wwarr1(i)) + wwarr2(i);
        dsply msg;
       endfor;
       return;
**CTDATA WWARR1
0010AAAA
0020BBBB
0030CCCC
0040DDDD
0050EEEE
