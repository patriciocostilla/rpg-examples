     H option(*nodebugio)
     D* Variable definition
     D dateds          ds                  qualified
     D  dsyear         ds
     D  dsmonth                       2  0
     D  dsday                         2  0
     D wwout           s             20a
     C* Program start
     C     '------------'dsply
     C*                  move      19960531      dateds
     C*                  eval      wwout = 'Y: ' + %char(dateds.dsyear) + ' ' +
     C*                                    'M: ' + %char(dateds.dsmonth) + ' ' +
     C*                                    'D: ' + %char(dateds.dsday)
     C     wwout         dsply
     C                   eval      *inlr = *on
