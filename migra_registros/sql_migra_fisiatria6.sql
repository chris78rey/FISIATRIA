REM SE CALCULA EL PERS_ID EN BASE A LA TABLA  ADMINISTRATIVO.AA_TABLA_EQUIV_PROCED
REM SE CALCULA EL PERS_ID EN BASE A LA TABLA  ADMINISTRATIVO.AA_TABLA_EQUIV_PROCED
REM SE CALCULA EL PERS_ID EN BASE A LA TABLA  ADMINISTRATIVO.AA_TABLA_EQUIV_PROCED
REM SE CALCULA EL PERS_ID EN BASE A LA TABLA  ADMINISTRATIVO.AA_TABLA_EQUIV_PROCED
REM SE CALCULA EL PERS_ID EN BASE A LA TABLA  ADMINISTRATIVO.AA_TABLA_EQUIV_PROCED




SELECT DISTINCT *
  FROM ADMINISTRATIVO.MED_PROCEDIMIENTO_ESPSER,
       ADMINISTRATIVO.MED_PROCEDIMIENTO,
       ADMINISTRATIVO.AA_TABLA_EQUIV_PROCED
 WHERE     AA_TABLA_EQUIV_PROCED.PROID1NIVEL =
              MED_PROCEDIMIENTO_ESPSER.PES_ID_FK
       AND AA_TABLA_EQUIV_PROCED.PROID2NIVEL =
              MED_PROCEDIMIENTO_ESPSER.PRO_ID
       AND MED_PROCEDIMIENTO.PRO_ID = MED_PROCEDIMIENTO_ESPSER.PRO_ID
