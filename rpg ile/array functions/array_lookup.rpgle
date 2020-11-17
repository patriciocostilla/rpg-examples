     H dftactgrp(*no)
     D wwarr1          s              4s 0 dim(4)
     D i               s              4s 0
       wwarr1(1) = 1;
       wwarr1(2) = 2;
       wwarr1(3) = 3;
       wwarr1(4) = 4;

       i = %lookup(3:wwarr1); // i = 3
       dsply i;
       return;
