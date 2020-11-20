     H dftactgrp(*no) actgrp(*new)
     Ftrpurc    if   e             disk
     D wwstart         s               z
     D wwend           s               z
     D wwtotal         s             15p 0
     D i               s              7s 0
     D j               s              7s 0
     D wwvar           s              7s 0
       wwtotal = 0;
        wwstart = %timestamp();
        read trpurc;
        dow not %eof();
         read trpurc;
        enddo;
        wwend = %timestamp();
        wwtotal = %diff(wwend: wwstart: *mseconds);
       dsply wwtotal;
       *inlr = *on;
