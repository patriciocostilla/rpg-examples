     H option(*nodebugio) datfmt(*iso)
     D* Variable definition
     D wwflag          s               n
     D wwdate          s               d   inz(*sys)
     C* Program start
     C     '------------'dsply
     C                   eval      wwflag = *on
     C                   if        wwflag
     C     'Im on'       dsply
     C                   endif
     C                   eval      wwflag = (wwdate = d'2020-10-30')
     C                   if        wwflag
     C     'Still on'    dsply
     C                   endif
     C                   eval      *inlr = *on
