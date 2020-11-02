     H option(*nodebugio)
     D myfileds      e ds                  extname(myfile) prefix(ww)
     C/EXEC SQL
     C+ Set Option Commit=*NONE
     C/END-EXEC
     C     '------------'dsply
     C                   eval      wwid = 2
     C/EXEC SQL
     C+ select *
     C+ into :myfileds
     C+ from myfile
     C+ where id = :wwid
     C/END-EXEC
     C                   if        sqlcod = 0
     C     myfileds      dsply
     C                   elseif    sqlcod > 0
     C     'warning'     dsply
     C                   elseif    sqlcod < 0
     C     'error'       dsply
     C                   endif
     C                   eval      *inlr = *on
