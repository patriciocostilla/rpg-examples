     H dftactgrp(*no) option(*nodebugio)
     D*--------------- GLOBALS -------------------------------------
     D myfileds      e ds                  extname(myfile) qualified
     D                                     occurs(1000)
     D wwout           s             52a
     C*--------------- PROGRAM ENTRY POINT -------------------------
       myfileds.id = 1;
       myfileds.fld1 = 'Person 1';
       myfileds.fld2 = 1111;
       wwout = 'Occurrence ' + %char(%occur(myfileds));
       dsply wwout;
       dsply myfileds;
       %occur(myfileds) = 2;
       myfileds.id = 2;
       myfileds.fld1 = 'Person 2';
       myfileds.fld2 = 2222;
       wwout = 'Occurrence ' + %char(%occur(myfileds));
       dsply wwout;
       dsply myfileds;
       %occur(myfileds) = 1;
       wwout = 'Occurrence ' + %char(%occur(myfileds));
       dsply wwout;
       dsply myfileds;
       *inlr = *on;
