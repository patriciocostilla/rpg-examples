     H dftactgrp(*no) option(*nodebugio)
     D*--------------- GLOBALS -------------------------------------
     D myfileds      e ds                  extname(myfile) qualified
     D                                     occurs(1000)
     D wwtot           s              4s 0
     D i               s              4s 0
     C*--------------- PROGRAM ENTRY POINT -------------------------
       exec sql set option closqlcsr=*endmod;
       exec sql declare c1 cursor for
                select * from myfile;
       exec sql open c1;
       %occur(myfileds) = 1;
       exec sql fetch c1 into :myfileds;
       dow sqlcod = 0;
        %occur(myfileds) = %occur(myfileds) + 1;
        exec sql fetch c1 into :myfileds;
       enddo;
       wwtot = %occur(myfileds) - 1;
       for i = 1 to wwtot;
        %occur(myfileds) = i;
        dsply myfileds;
       endfor;
       *inlr = *on;
