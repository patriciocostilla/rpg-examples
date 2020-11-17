     H dftactgrp(*no) option(*nodebugio)
     F*--------------- FILES ----------------------------------------
     Fmyfile    if   e             disk
     D*--------------- GLOBALS --------------------------------------
     D myarr           s              4s 0 dim(1000)
     D i               s              4s 0
     D tot             s              7s 0
     C*--------------- PROGRAM ENTRY POINT --------------------------
       i = 0;
       read myfile;
       dow not %eof();
        i = i + 1;
        myarr(i) = fld2;
        read myfile;
       enddo;
       tot = %xfoot(myarr);
       dsply tot;
       *inlr = *on;
