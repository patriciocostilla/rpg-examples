     H dftactgrp(*no)                               
     D len             c                   const(10)
     D wwarr           s              4s 0 dim(len) 
     D i               s              2s 0          
       for i = 1 to len;                            
        wwarr(i) = i;                               
       endfor;                                      
       for i = 1 to len;                            
        dsply wwarr(i);                             
       endfor;                                      
       return;                                      
