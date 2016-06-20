/* Formatted on 20/06/2016 10:06:27 (QP5 v5.252.13127.32867) */
  SELECT DISTINCT (SELECT PROID1NIVEL
                     FROM AA_TABLA_EQUIV_PROCED
                    WHERE tte_id = MEF_DET_TRATAM.TTE_ID)
                     PROID1NIVEL
    FROM ADMINISTRATIVO.MEF_PLANIF_TRATAM
         INNER JOIN ADMINISTRATIVO.MEF_CAB_TRATAM
            ON (MEF_PLANIF_TRATAM.PTR_ID = MEF_CAB_TRATAM.PTR_ID)
         INNER JOIN ADMINISTRATIVO.MEF_DET_TRATAM
            ON (MEF_CAB_TRATAM.CTR_ID = MEF_DET_TRATAM.CTR_ID)
   WHERE MEF_PLANIF_TRATAM.PTR_ID = &&v
ORDER BY 1;

PAUSE escoja

  SELECT DISTINCT MEF_DET_TRATAM.TTE_ID,
                  MEF_PLANIF_TRATAM.PTR_ID,
                  (SELECT TER_ID
                     FROM AA_TABLA_EQUIV_PROCED
                    WHERE tte_id = MEF_DET_TRATAM.TTE_ID)
                     ter_id,
                  (SELECT TER_DESCRIPCION
                     FROM AA_TABLA_EQUIV_PROCED
                    WHERE tte_id = MEF_DET_TRATAM.TTE_ID)
                     TER_DESCRIPCION,
                  (SELECT TRA_DESCRIPCION
                     FROM AA_TABLA_EQUIV_PROCED
                    WHERE tte_id = MEF_DET_TRATAM.TTE_ID)
                     TRA_DESCRIPCION,
                  (SELECT PROID0NIVEL
                     FROM AA_TABLA_EQUIV_PROCED
                    WHERE tte_id = MEF_DET_TRATAM.TTE_ID)
                     PROID0NIVEL,
                  (SELECT PROID1NIVEL
                     FROM AA_TABLA_EQUIV_PROCED
                    WHERE tte_id = MEF_DET_TRATAM.TTE_ID)
                     PROID1NIVEL,
                  (SELECT PROID2NIVEL
                     FROM AA_TABLA_EQUIV_PROCED
                    WHERE tte_id = MEF_DET_TRATAM.TTE_ID)
                     PROID2NIVEL,
                  (SELECT PES_ID_0
                     FROM AA_TABLA_EQUIV_PROCED
                    WHERE tte_id = MEF_DET_TRATAM.TTE_ID)
                     PES_ID_0,
                  (SELECT PES_ID_1
                     FROM AA_TABLA_EQUIV_PROCED
                    WHERE tte_id = MEF_DET_TRATAM.TTE_ID)
                     PES_ID_1,
                  (SELECT PES_ID_2
                     FROM AA_TABLA_EQUIV_PROCED
                    WHERE tte_id = MEF_DET_TRATAM.TTE_ID)
                     PES_ID_2,
                  (SELECT PRO_DESCRIPCION
                     FROM MED_PROCEDIMIENTO
                    WHERE PRO_ID IN ( (SELECT PROID1NIVEL
                                         FROM AA_TABLA_EQUIV_PROCED
                                        WHERE tte_id = MEF_DET_TRATAM.TTE_ID)))
                     ter_nivel1
    FROM ADMINISTRATIVO.MEF_PLANIF_TRATAM
         INNER JOIN ADMINISTRATIVO.MEF_CAB_TRATAM
            ON (MEF_PLANIF_TRATAM.PTR_ID = MEF_CAB_TRATAM.PTR_ID)
         INNER JOIN ADMINISTRATIVO.MEF_DET_TRATAM
            ON (MEF_CAB_TRATAM.CTR_ID = MEF_DET_TRATAM.CTR_ID)
   WHERE     MEF_PLANIF_TRATAM.PTR_ID = &&v
         AND (SELECT PROID1NIVEL
                FROM AA_TABLA_EQUIV_PROCED
               WHERE tte_id = MEF_DET_TRATAM.TTE_ID) = '&&escojaniv1'
ORDER BY 6, 7, 8;