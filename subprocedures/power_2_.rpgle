     H dftactgrp(*no)
     D* Program parameters
     DPOWER2           pr                  extpgm('POWER2')
     D                                5i 0
     D                 pi
     Dpanum                           5i 0
     D* Data definition
     Dsquare           pr            10i 0
     D §num                           5i 0 value
     D* Global variables
     Dwwnum            s             10i 0
     C* Main code
     C                   eval      wwnum = square(panum)
     C     wwnum         dsply
     C                   eval      *inlr = *on
     P* Subprocedures definitions
     Psquare           b
     Dsquare           pi            10i 0
     D §num                           5i 0 value
     Dwires            s             10i 0
     C                   eval      wires = §num ** 2
     C                   return    wires
     P                 e
