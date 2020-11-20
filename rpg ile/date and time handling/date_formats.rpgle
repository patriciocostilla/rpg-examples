     H option(*nodebugio) datfmt(*iso)
     D* Variable definition
     D wwout           s             20a
     D wwdate          s               d   inz(*sys)
     D wwDate2         s               d   datfmt(*eur) inz(d'2020-01-01')
     C* Program start
     C     '------------'dsply
     C     wwdate        dsply
     C*                  eval      wwdate = d'1996-05-31'
     C                   eval      wwdate2 = wwdate
     C     wwdate2       dsply
     C                   eval      *inlr = *on
