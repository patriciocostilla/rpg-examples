     H dftactgrp(*no)
     D* Data definition
     D* Prototype for procedure Square. This is optional
     Dsquare           pr            10i 0
     D pnum                           5i 0 value
     D* Global variables
     Dwwnum            s             10i 0
     C* Main code
     C                   eval      wwnum = square(5)
     C     wwnum         dsply
     C                   eval      *inlr = *on
     P* Subprocedures definitions
     Psquare           b
     Dsquare           pi            10i 0
     D pnum                           5i 0 value
     Dwires            s             10i 0
     C                   eval      wires = pnum ** 2
     C                   return    wires
     P                 e
