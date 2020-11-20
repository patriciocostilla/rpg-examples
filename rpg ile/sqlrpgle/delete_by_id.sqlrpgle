     H option(*nodebugio)                        
     D wwid            s              4S 0 inz(1)
     C     '------------'dsply                   
     C/EXEC SQL                                  
     C+ Set Option Commit=*NONE                  
     C/END-EXEC                                  
     C/EXEC SQL                                  
     C+ delete from myfile where id = :wwid      
     C/END-EXEC                                  
     C                   if        sqlcod = 0    
     C     'success'     dsply                   
     C                   elseif    sqlcod > 0    
     C     'warning'     dsply                   
     C                   elseif    sqlcod < 0    
     C     'error'       dsply                   
     C                   endif                   
     C                   eval      *inlr = *on