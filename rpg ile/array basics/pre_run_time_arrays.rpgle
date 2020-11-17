     H dftactgrp(*no)
     Fflatfile  it   f    4        disk
     D wwarr           s              4s 0 dim(5) perrcd(1)
     D                                     fromfile(flatfile)
     D i               s              2s 0
       for i = 1 to 5;
        dsply wwarr(i);
       endfor;
       return;
