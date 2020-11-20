     H option(*nodebugio)
     D* Variable definition
     D userds        e ds                  extname(users) prefix(zz:2)
     D wwout           s             20a
     C* Program start
     C     '------------'dsply
     C                   eval      zzid = 1
     C                   eval      zzname = 'Patricio'
     C                   eval      wwout = %char(zzid) + ' ' + zzname
     C     wwout         dsply
     C                   eval      *inlr = *on
