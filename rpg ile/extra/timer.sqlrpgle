     H dftactgrp(*no) actgrp(*new)
     D dspurc        e ds                  extname(trpurc)
     D wwstart         s               z
     D wwend           s               z
     D wwtotal         s             15p 0
     D i               s              7s 0
     D j               s              7s 0
     D wwvar           s              7s 0
       wwtotal = 0;
        wwstart = %timestamp();
        exec sql declare c1 cursor for select * from trpurc;
        exec sql open c1;
        exec sql fetch c1 into: dspurc;
        dow sqlcod=0;
         exec sql fetch c1 into: dspurc;
        enddo;
        exec sql close c1;
        wwend = %timestamp();
        wwtotal = %diff(wwend: wwstart: *mseconds);
       dsply wwtotal;
       *inlr = *on;
