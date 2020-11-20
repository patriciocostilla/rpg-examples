     H option(*nodebugio) dftactgrp(*no) main(mainp)
     F*--------------- FILES --------------------------------
     Ftrclie    uf a e           k disk    usropn
     D*--------------- PROTOTYPES ---------------------------
     D* Program entry point
     Dmainp            pr                  extpgm('CLIECRUD')
     D                                1a
     D                                8s 0
     D                               30a   options(*nopass)
     D* Create procedure
     D createClient    pr
     D                                8s 0
     D                               30a
     D* Read client procedure
     D readClient      pr
     D                                8s 0
     D* Update procedure
     D updateClient    pr
     D                                8s 0
     D                               30a
     D* Delete client procedure
     D deleteClient    pr
     D                                8s 0
     D* Clear file fields procedure
     D clearFields     pr
     D*--------------- FUNCTIONS ----------------------------
     D* Validate DNI
     D dniIsValid      pr              n
     D                                8s 0
     D* DNI already exists in DB
     D dniExists       pr              n
     D                                8s 0
     D* Client is still active
     D clientActive    pr              n
     D                                8s 0
     D*--------------- GLOBALS ------------------------------
     D sysds          sds
     D currentUser           254    263
     P*------------------------------------------------------
     Pmainp            b
     D                 pi
     D paop                           1a
     D padni                          8s 0
     D paname                        30a   options(*nopass)
     D*
       open trclie;
       select;
        when paop = 'C';
         createClient(padni:paname);
        when paop = 'R';
         readClient(padni);
        when paop = 'U';
         updateClient(padni:paname);
        when paop = 'D';
         deleteClient(padni);
        other;
         dsply 'OP. Error';
       endsl;
       close trclie;
       return;
     Pmainp            e
     P*
     PcreateClient     b
     D                 pi
     D pidni                          8s 0
     D piname                        30a
       dsply 'Creating';
       if not dniIsValid(pidni);
        dsply 'DNI not valid';
        return;
       endif;
       if dniExists(pidni);
        dsply 'DNI already exists';
        return;
       endif;
       clearFields();
       cldni = pidni;
       clname = piname;
       clcrts = %timestamp();
       clcrus = currentUser;
       write retrclie;
     PcreateClient     e
     P*
     PreadClient       b
     D                 pi
     D pidni                          8s 0
     D zzmsg           s             52a
       dsply 'Reading';
       if not dniIsValid(pidni);
        dsply 'DNI not valid';
        return;
       endif;
       if not dniExists(pidni);
        dsply 'DNI not exists';
        return;
       endif;
       if not clientActive(pidni);
        dsply 'Client marked as deleted';
        return;
       endif;
       chain pidni trclie;
       if %found();
        zzmsg = %char(cldni) + '-' + clname;
        dsply zzmsg;
       endif;
     PreadClient       e
     P*
     PupdateClient     b
     D                 pi
     D pidni                          8s 0
     D piname                        30a
       dsply 'Updating';
       if not dniIsValid(pidni);
        dsply 'DNI not valid';
        return;
       endif;
       if not dniExists(pidni);
        dsply 'DNI not exists';
        return;
       endif;
       if not clientActive(pidni);
        dsply 'Client marked as deleted';
        return;
       endif;
       chain pidni trclie;
       if %found();
        clname = piname;
        clupts = %timestamp();
        clupus = currentUser;
        update retrclie;
       endif;
     PupdateClient     e
     P*
     PdeleteClient     b
     D                 pi
     D pidni                          8s 0
       dsply 'Deleting';
       if not dniIsValid(pidni);
        dsply 'DNI not valid';
        return;
       endif;
       if not dniExists(pidni);
        dsply 'DNI not exists';
        return;
       endif;
       if not clientActive(pidni);
        dsply 'Client marked as deleted';
        return;
       endif;
       chain pidni trclie;
       if %found();
        cldets = %timestamp();
        cldeus = currentUser;
        update retrclie;
       endif;
     PdeleteClient     e
     P*
     PclearFields      b
       cldni = 0;
       clname = '';
       clcrts = z'0001-01-01-00.00.00.000000';
       clcrus = '';
       clupts = z'0001-01-01-00.00.00.000000';
       clupus = '';
       cldets = z'0001-01-01-00.00.00.000000';
       cldeus = '';
     PclearFields      e
     P*
     PdniIsValid       b
     D                 pi              n
     D pidni                          8s 0
       return (pidni > 999999 and pidni < 100000000);
     PdniIsValid       e
     P*
     PdniExists        b
     D                 pi              n
     D pidni                          8s 0
       chain (pidni) trclie;
       return %found();  // *on or *off
     PdniExists        e
     P*
     PclientActive     b
     D                 pi              n
     D pidni                          8s 0
       chain pidni trclie;
       if %found();
         return cldeus = '';
       else;
         return *off;
       endif;
     PclientActive     e
     P*
