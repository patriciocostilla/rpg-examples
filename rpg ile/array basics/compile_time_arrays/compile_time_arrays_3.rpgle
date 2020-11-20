     H dftactgrp(*no)
     D msg             s             52a   dim(5) ctdata perrcd(1)
     D success         c                   const(1)
     D info            c                   const(2)
     D warning         c                   const(3)
     D error           c                   const(4)
     D fatal           c                   const(5)
     C*
       dsply msg(success);
       dsply msg(info);
       dsply msg(warning);
       dsply msg(error);
       dsply msg(fatal);
       return;
**CTDATA MSG
Success: Everything is going OK|
Info: We are cool for now
Warning: This does not seems good
Error: Oh no| Something went wrong
Fatal error: Leave everything behind and run|
