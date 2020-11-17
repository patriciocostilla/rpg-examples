     H dftactgrp(*no) option(*nodebugio)
     F*--------------- FILES ----------------------------------------
     Fmyfile    if   e             disk
     D*--------------- GLOBALS --------------------------------------
     D myfilearr     e ds                  extname(myfile) qualified
     D                                     dim(1000)
     D i               s              4s 0
     D tot             s              4s 0
     C*--------------- PROGRAM ENTRY POINT --------------------------
       i = 0;
       for i = 1 to 1000;
         myfilearr(i).id = 0;
         myfilearr(i).fld1 = '';
         myfilearr(i).fld2 = 0;
       endfor;
       i = 0;
       read myfile;
       dow not %eof();
        i = i + 1;
        myfilearr(i).id = id;
        myfilearr(i).fld1 = fld1;
        myfilearr(i).fld2 = fld2;
        read myfile;
       enddo;
       i = %lookup('999999':myfilearr(*).fld1);
       dsply i;
       *inlr = *on;
