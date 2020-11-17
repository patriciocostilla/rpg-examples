     H dftactgrp(*no)
     D wwarr           s              4s 0 dim(10) inz(5)
     D wwrand          s              4s 0
     D i               s              2s 0
       for i = 1 to 5;
        exec sql select int(floor(100 * rand())) into :wwrand
                 from sysibm/sysdummy1;
        wwarr(i) = wwrand;
       endfor;
       for i = 1 to 5;
        dsply wwarr(i);
       endfor;
       return;
