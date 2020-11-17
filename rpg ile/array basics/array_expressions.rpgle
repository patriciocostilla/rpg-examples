     H dftactgrp(*no)
     D wwarr1          s              4s 0 dim(5)
     D wwarr2          s              4s 0 dim(4)
     D wwarr3          s              5s 0 dim(5) inz(-1)
       wwarr1(1) = 1;
       wwarr1(2) = 2;
       wwarr1(3) = 3;
       wwarr1(4) = 4;
       wwarr1(5) = 5;

       wwarr2(1) = 1;
       wwarr2(2) = 2;
       wwarr2(3) = 3;
       wwarr2(4) = 4;

       wwarr3 = wwarr1 + wwarr2; // [2, 4, 6, 8]
       dsply wwarr3(1);
       dsply wwarr3(2);
       dsply wwarr3(3);
       dsply wwarr3(4);
       dsply wwarr3(5);
       return;
