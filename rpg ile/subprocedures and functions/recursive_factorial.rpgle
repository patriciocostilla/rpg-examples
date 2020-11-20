     H dftactgrp(*no)
     D*--------------- PROTOTYPES ----------------------------
     D factrecur       pr                  extpgm('FACTRECUR')
     D  panum                         2p 0
     D*
     D factorial       pr            15s 0
     D  num                           2s 0 value
     D*--------------- PROCEDURE INTERFACE -------------------
     D                 pi
     D  panum                         2p 0
     D*--------------- GLOBALS -------------------------------
     D wwnum           s              2s 0
     C*--------------- PROGRAM ENTRY POINT -------------------
       wwnum = panum;
       dsply factorial(wwnum);
       return;
     P*--------------- FUNCTIONS -----------------------------
     P factorial       b
     D                 pi            15s 0
     D pinum                          2s 0 value
     C*
       if pinum = 0 or pinum = 1;
         return 1;
       endif;
       return pinum * factorial(pinum - 1);
     P factorial       e
