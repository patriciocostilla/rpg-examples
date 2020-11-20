     H dftactgrp(*no) option(*nodebugio)
     D wwstr           s             30a
       wwstr = 'hello world';
       dsply upper(wwstr);
       *inlr = *on;
     Pupper            b
     D                 pi            30a
     D pistr                         30a
     D lowcase         c                   'abcdefghijklmnopqrstuvwxyz'
     D upcase          c                   'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
       return %xlate(lowcase:upcase:pistr);
     Pupper            e
