     H option(*nodebugio) dftactgrp(*no)
     D wwsql           s            255a
       exec sql set option commit=*none;
       wwsql = 'update myfile set fld2 = 1235 where id = 1';
       exec sql prepare s1 from :wwsql;
       exec sql execute s1;
       return;
