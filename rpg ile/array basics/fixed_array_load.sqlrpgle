     H dftactgrp(*no)
     D*--------------- VARIABLES ---------------------
     D myArr         e ds                  extname(myfile) qualified
     D                                     dim(1000)
     D i               s              4s 0
     D rows            s              4s 0
     C*--------------- PROGRAM ENTRY POINT -----------
       exec sql set option closqlcsr=*endmod;
       exec sql declare c1 cursor for select * from myfile;
       exec sql open c1;
       exec sql fetch c1 for 1000 rows into :myArr;
       exec sql get diagnostics :rows = ROW_COUNT;
       for i = 1 to rows;
        dsply myArr(i);
       endfor;
       return;
