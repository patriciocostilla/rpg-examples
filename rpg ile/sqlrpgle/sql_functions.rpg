     H option(*nodebugio)                     
     D* Variable definition                   
     D wwrand          s              1s 0    
     D*                                       
     C* Program start                         
     C     '------------'dsply                
     C/EXEC SQL                               
     C+ select integer(floor(10 * rand()))    
     C+ into :wwrand                          
     C+ from sysibm/sysdummy1                 
     C/END-EXEC                               
     C                   if        sqlcod = 0 
     C     wwrand        dsply                
     C                   elseif    sqlcod > 0 
     C     'warning'     dsply                
     C                   elseif    sqlcod < 0 
     C     'error'       dsply                
     C                   endif                
     C                   eval      *inlr = *on