     H dftactgrp(*no)
     D wwarr           s             52a   dim(5) ctdata perrcd(1)
     D i               s              2s 0
       for i = 1 to 5;
        dsply wwarr(i);
       endfor;
       return;
**CTDATA WWARR
Success: Everything is going OK|
Info: We are cool for now
Warning: This does not seems good
Error: Oh no| Something went wrong
Fatal error: Leave everything behind and run|
