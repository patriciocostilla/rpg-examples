     H dftactgrp(*no)
     Fmyfileflatit   f   33        disk
     D len             c                   const(4)
     D wwarr           s             33a   dim(len)
     D                                     fromfile(myfileflat)
     D wwarrds       e ds                  qualified dim(len)
     D                                     extname(myfile)
     D i               s              2s 0
       for i = 1 to len;
        wwarrds(i) = wwarr(i);
       endfor;
       for i = 1 to len;
        dsply ('Record ' + %char(i));
        dsply wwarrds(i).id;
        dsply wwarrds(i).fld1;
        dsply wwarrds(i).fld2;
       endfor;
       *inlr = *on;
