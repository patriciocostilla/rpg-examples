     H option(*nodebugio) datfmt(*usa)
     D* Variable definition
     D wwout           s             20a
     D wwdate          s               d   inz(*sys)
     C* Program start
     C     '------------'dsply
     C     wwdate        dsply
     C                   eval      wwdate = d'05/31/1996'
     C     wwdate        dsply
     C                   eval      wwdate = %date(19951029)
     C     wwdate        dsply
     C                   eval      *inlr = *on
