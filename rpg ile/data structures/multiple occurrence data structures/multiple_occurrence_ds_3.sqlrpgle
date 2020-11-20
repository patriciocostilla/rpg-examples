     H dftactgrp(*no) option(*nodebugio)
     D*--------------- GLOBALS -------------------------------------
     D len             c                   const(1000)
     D myfileds      e ds                  extname(myfile) qualified
     D                                     occurs(len)
     D rows            s              4s 0
     D i               s              4s 0
     C*--------------- PROGRAM ENTRY POINT -------------------------
       exec sql set option closqlcsr=*endmod;
       exec sql declare c1 cursor for
                select * from myfile;
       exec sql open c1;
       %occur(myfileds) = 1;
       exec sql fetch c1 for 1000 rows into :myfileds;
       exec sql get diagnostics :rows = ROW_COUNT;
       for i = 1 to rows;
        %occur(myfileds) = i;
        dsply myfileds;
       endfor;
       *inlr = *on;
