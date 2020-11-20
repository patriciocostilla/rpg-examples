     H option(*nodebugio) dftactgrp(*no)
     D wwsql           s            255a
     D wwid            s              4s 0
     D wwfld1          s             25a
     D wwfld2          s              4s 0
       wwid = 1;
       wwfld1 = 'Patricio';
       wwfld2 = 1;
       exec sql set option commit=*none;
       wwsql = 'update myfile set fld1 = ? where id = ? ' +
               'and fld2 > ?';
       exec sql prepare s1 from :wwsql;
       exec sql execute s1 using :wwfld1, :wwid, :wwfld2;
       return;
