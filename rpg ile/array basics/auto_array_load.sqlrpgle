     H dftactgrp(*no)
     D*--------------- VARIABLES ---------------------
     D myArr         e ds                  extname(myfile) qualified
     D                                     dim(*auto:1000)
     D i               s              4s 0
     C*--------------- PROGRAM ENTRY POINT -----------
       exec sql set option closqlcsr=*endmod;
       exec sql declare c1 cursor for select * from myfile;
       exec sql open c1;
       exec sql fetch c1 for 1000 rows into :myArr;
       FOR i = 1 to %elem(myArr);
        dsply myArr(i);
       ENDFOR;
       return;
