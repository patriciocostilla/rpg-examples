     H option(*nodebugio)                       
     Fmyfile    uf   e             disk         
     C     '------------'dsply                  
     C/EXEC SQL                                 
     C+ update myfile set fld2 = 55 where id = 1
     C/END-EXEC                                 
     C                   if        sqlcod = 0   
     C     'success'     dsply                  
     C                   elseif    sqlcod > 0   
     C     'warning'     dsply                  
     C                   elseif    sqlcod < 0   
     C     'error'       dsply                  
     C                   endif                  
     C                   eval      *inlr = *on  