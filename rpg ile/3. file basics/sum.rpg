     F* File definition                               
     FMYFILE    IF   E             DISK               
     D* Variable declaration                          
     Dsum              s              4s 0 inz(0)     
     Dstr              s             25a   inz('')    
     C* Program start                                 
     C                   EXSR      CALC               
     C                   eval      *inlr = *on        
     C     CALC          BEGSR                        
     C                   READ      MYFILE             
     C     *IN90         DOWEQ     *OFF               
     C                   eval      sum = sum + fld2   
     C                   READ      MYFILE             
     C                   ENDDO                        
     C                   eval      str = 'La suma es '
     C     str           DSPLY                        
     C     sum           DSPLY
     C                   ENDSR
