     H dftactgrp(*no)
     D myds            ds                  qualified
     D  fld1                          4s 0
     D  fld2                          4a
     D wwarr1          s              4s 0 dim(5) ctdata perrcd(1)
     D wwarr2          s              4a   dim(5) alt(wwarr1)
     D
     D i               s              2s 0
     D msg             s             52a
       for i = 1 to 5;
        myds = data(i);
        dsply myds.fld1;
       endfor;
       return;
     P data            b
     D                 pi                  likeds(myds)
     D i                              2s 0
     D inds            ds                  likeds(myds)
       inds.fld1 = wwarr1(i);
       inds.fld2 = wwarr2(i);
       return inds;
     P data            e
**CTDATA WWARR1
0010AAAA
0020BBBB
0030CCCC
0040DDDD
0050EEEE
