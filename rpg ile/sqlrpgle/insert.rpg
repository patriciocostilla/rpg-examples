     H option(*nodebugio)
     D myfileds      e ds                  extname(myfile) prefix(ww)
     C/EXEC SQL
     C+ Set Option Commit=*NONE
     C/END-EXEC
     C     '------------'dsply
     C                   eval      wwid = 2
     C                   eval      wwfld1 = 'Paula'
     C                   eval      wwfld2 = 1234
     C/EXEC SQL
     C+ insert into myfile(id, fld1, fld2) values(:wwid, :wwfld1, :wwfld2)
     C/END-EXEC
     C                   if        sqlcod = 0
     C     'success'     dsply
     C                   elseif    sqlcod > 0
     C     'warning'     dsply
     C                   elseif    sqlcod < 0
     C     'error'       dsply
     C                   endif
     C                   eval      *inlr = *on
