     H*---------- CONTROL ----------------
     H option(*nodebugio) dftactgrp(*no)
     D*---------- INTERNAL VARIABLES -----
     D wwmyds          ds                  qualified
     D  wwstr                        25a
     D  wwnum                         4s 0
     D  wwflag                         n
     D*---------- PROTOTYPES -------------
     D dsReceiver      pr
     D  pids                               likeds(wwmyds)
     C*---------- PROGRAM START ----------
       dsply '-------------';
       wwmyds.wwstr = 'Hello World';
       wwmyds.wwnum = 1234;
       wwmyds.wwflag = *on;
       dsReceiver(wwmyds);
       *inlr = *on;
     P*---------- FUNCTIONS --------------
     PdsReceiver       b
     D                 pi
     D pids                                likeds(wwmyds)
     C*
       dsply pids;
     P*
     P                 e
