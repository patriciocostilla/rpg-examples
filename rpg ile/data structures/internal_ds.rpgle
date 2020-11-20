     H option(*nodebugio)
     D* Variable definition
     D dateds          ds
     D  dsyear                        4  0
     D  dsmonth                       2  0
     D  dsday                         2  0
     D wwout           s             20a
     C* Program start
     C     '------------'dsply
     C                   move      19960531      dateds
     C                   eval      wwout = 'Y: ' + %char(dsyear) + ' ' +
     C                                     'M: ' + %char(dsmonth) + ' ' +
     C                                     'D: ' + %char(dsday)
     C     wwout         dsply
     C                   eval      *inlr = *on
