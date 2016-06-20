/* Formatted on 20/06/2016 11:18:01 (QP5 v5.252.13127.32867) */
SET TERMOUT ON
WHENEVER SQLERROR EXIT FAILURE ROLLBACK;

SET SERVEROUTPUT ON
SET LINESIZE 2000
SET PAGESIZE 10000
SET HEADING ON;
SET VERIFY ON;
SET ECHO ON;
SET FEEDBACK ON;
SET TIMING ON;
SET SQLPROMPT "";


REM EMPATADOS MANUALMENTE ------->PME     DFI
REM EMPATADOS MANUALMENTE ------->286,    127
REM EMPATADOS MANUALMENTE ------->287,    128
REM EMPATADOS MANUALMENTE ------->288,    126
REM EMPATADOS MANUALMENTE ------->289,    124
REM EMPATADOS MANUALMENTE ------->290,    101
REM EMPATADOS MANUALMENTE ------->291,    100
REM EMPATADOS MANUALMENTE ------->292,    133
REM EMPATADOS MANUALMENTE ------->293,    99
REM EMPATADOS MANUALMENTE ------->294,    98
REM EMPATADOS MANUALMENTE ------->295,    78
REM EMPATADOS MANUALMENTE ------->296,    85
REM EMPATADOS MANUALMENTE ------->297,    88
REM EMPATADOS MANUALMENTE ------->298,    75
REM EMPATADOS MANUALMENTE ------->299,    91
REM EMPATADOS MANUALMENTE ------->300,    84
REM EMPATADOS MANUALMENTE ------->301,    92
REM EMPATADOS MANUALMENTE ------->302,    90
REM EMPATADOS MANUALMENTE ------->303,    102
REM EMPATADOS MANUALMENTE ------->304,    94
REM EMPATADOS MANUALMENTE ------->305,    95
REM EMPATADOS MANUALMENTE ------->306,    96
REM EMPATADOS MANUALMENTE ------->307,    73
REM EMPATADOS MANUALMENTE ------->308,    97
REM EMPATADOS MANUALMENTE ------->309,    81
REM EMPATADOS MANUALMENTE ------->310,    89
REM EMPATADOS MANUALMENTE ------->310,    89
REM EMPATADOS MANUALMENTE ------->311,    134



COLUMN fecha FORMAT a20 NEW_VALUE fec NOPRINT

SELECT TO_CHAR (SYSDATE, 'yyyy-mm-dd-hh24-mi-ss') fecha FROM DUAL;


SPOOL  C:\logs\logsmigrafisia\respaldo_RECONSTRUYE_fisiatria_&&fec..txt

REM ADMINISTRATIVO.MEF_PLANIF_TRATAM   ADMINISTRATIVO.MED_SOLICITUD_PROCEDIMIENTO
COLUMN PTR_ID FORMAT A20 TRUNC NEW_VALUE V_PTR_ID
COLUMN PAC_ID FORMAT A20 TRUNC NEW_VALUE V_PAC_ID
COLUMN CIE_ID FORMAT A20 TRUNC NEW_VALUE V_CIE_ID
COLUMN HOR_ID FORMAT A20 TRUNC NEW_VALUE V_HOR_ID
COLUMN PTR_SESIONES FORMAT A20 TRUNC NEW_VALUE V_PTR_SESIONES
COLUMN PTR_FECHA_CREACION FORMAT A20 TRUNC NEW_VALUE V_PTR_FECHA_CREACION
COLUMN PTR_FECHA_INICIO FORMAT A20 TRUNC NEW_VALUE V_PTR_FECHA_INICIO
COLUMN PTR_FECHA_FIN FORMAT A20 TRUNC NEW_VALUE V_PTR_FECHA_FIN
COLUMN PTR_ESTADO FORMAT A20 TRUNC NEW_VALUE V_PTR_ESTADO
COLUMN PTR_NUM_SESIONES FORMAT A20 TRUNC NEW_VALUE V_PTR_NUM_SESIONES
COLUMN PTR_DIAS FORMAT A20 TRUNC NEW_VALUE V_PTR_DIAS
COLUMN PTR_CODIGO_TARIFARIO FORMAT A20 TRUNC NEW_VALUE V_PTR_CODIGO_TARIFARIO
COLUMN TER_ID FORMAT A20 TRUNC NEW_VALUE V_TER_ID
COLUMN CIN_NUMERO FORMAT A20 TRUNC NEW_VALUE V_CIN_NUMERO
COLUMN PTR_HJA_EVOL FORMAT A20 TRUNC NEW_VALUE V_PTR_HJA_EVOL
COLUMN PME_ID FORMAT A20 TRUNC NEW_VALUE V_PME_ID
COLUMN PTR_TIPO_PLANIF FORMAT A20 TRUNC NEW_VALUE V_PTR_TIPO_PLANIF
COLUMN PTR_DIAGNOSTICO_MEDICO FORMAT A20 TRUNC NEW_VALUE V_PTR_DIAGNOSTICO_MEDICO
COLUMN PTR_OBSERVACION FORMAT A20 TRUNC NEW_VALUE V_PTR_OBSERVACION
COLUMN UNS_ID FORMAT A20 TRUNC NEW_VALUE V_UNS_ID


SELECT MEF_PLANIF_TRATAM.PTR_ID,
       MEF_PLANIF_TRATAM.PAC_ID,
       MEF_PLANIF_TRATAM.CIE_ID,
       MEF_PLANIF_TRATAM.HOR_ID,
       MEF_PLANIF_TRATAM.PTR_SESIONES,
       MEF_PLANIF_TRATAM.PTR_FECHA_CREACION,
       MEF_PLANIF_TRATAM.PTR_FECHA_INICIO,
       MEF_PLANIF_TRATAM.PTR_FECHA_FIN,
       MEF_PLANIF_TRATAM.PTR_ESTADO,
       MEF_PLANIF_TRATAM.PTR_NUM_SESIONES,
       MEF_PLANIF_TRATAM.PTR_DIAS,
       MEF_PLANIF_TRATAM.PTR_CODIGO_TARIFARIO,
       MEF_PLANIF_TRATAM.TER_ID,
       MEF_PLANIF_TRATAM.CIN_NUMERO,
       MEF_PLANIF_TRATAM.PTR_HJA_EVOL,
       MEF_PLANIF_TRATAM.PME_ID,
       MEF_PLANIF_TRATAM.PTR_TIPO_PLANIF,
       MEF_PLANIF_TRATAM.PTR_DIAGNOSTICO_MEDICO,
       MEF_PLANIF_TRATAM.PTR_OBSERVACION,
       MEF_PLANIF_TRATAM.UNS_ID
  FROM ADMINISTRATIVO.MEF_PLANIF_TRATAM
 WHERE MEF_PLANIF_TRATAM.PTR_ID = '&&1';



VARIABLE v_ptr VARCHAR2(100)
EXECUTE :v_ptr:= '&&V_PTR_ID'



REM aca recupero el nivel 0 el pes_id
COLUMN NIVEL0_PES_ID HEADING "NIVEL0_PES_ID" FORMAT A10  TRUNC  NEW_VALUE V_NIVEL0_PES_ID



SELECT DISTINCT V_PROCED_TRES_NIV.NIVEL0_PES_ID
  FROM ADMINISTRATIVO.AA_TERAP_1NIV, ADMINISTRATIVO.V_PROCED_TRES_NIV
 WHERE     AA_TERAP_1NIV.TER_ID = 1
       AND AA_TERAP_1NIV.PRO_ID = V_PROCED_TRES_NIV.NIVEL0_PRO_ID
       AND ter_id = '&&V_TER_ID.'
       AND ROWNUM = 1;



INSERT
  INTO ADMINISTRATIVO.MED_SOLICITUD_PROCEDIMIENTO (
          MED_SOLICITUD_PROCEDIMIENTO.SPR_ID,
          MED_SOLICITUD_PROCEDIMIENTO.PAC_ID,
          MED_SOLICITUD_PROCEDIMIENTO.CIE_ID,
          MED_SOLICITUD_PROCEDIMIENTO.PME_ID,
          MED_SOLICITUD_PROCEDIMIENTO.PES_ID,
          MED_SOLICITUD_PROCEDIMIENTO.CIN_NUMERO,
          MED_SOLICITUD_PROCEDIMIENTO.SPR_NUM_SOLICITUD,
          MED_SOLICITUD_PROCEDIMIENTO.SPR_SESIONES,
          MED_SOLICITUD_PROCEDIMIENTO.SPR_FECHA_INICIO,
          MED_SOLICITUD_PROCEDIMIENTO.SPR_FECHA_FIN,
          MED_SOLICITUD_PROCEDIMIENTO.SPR_SESIONES_REALIZADAS,
          MED_SOLICITUD_PROCEDIMIENTO.SPR_DIAS,
          MED_SOLICITUD_PROCEDIMIENTO.SPR_CODIGO_TARIFARIO,
          MED_SOLICITUD_PROCEDIMIENTO.SPR_HJA_EVOL,
          MED_SOLICITUD_PROCEDIMIENTO.SPR_DIAGNOSTICO_MEDICO,
          MED_SOLICITUD_PROCEDIMIENTO.SPR_OBSERVACION,
          MED_SOLICITUD_PROCEDIMIENTO.SPR_ESTADO,
          MED_SOLICITUD_PROCEDIMIENTO.SPR_FECHA_CREACION,
          MED_SOLICITUD_PROCEDIMIENTO.SPR_COLOR,
          MED_SOLICITUD_PROCEDIMIENTO.SPR_INTENSIDAD,
          MED_SOLICITUD_PROCEDIMIENTO.SPR_FECHA_AGENDADO)
VALUES (-1,
        '&&V_PAC_ID.',
        '&&V_CIE_ID.',
        '&&V_PME_ID',
        '&&V_NIVEL0_PES_ID.',
        '&&V_CIN_NUMERO',
        /*ojo*/
        '0',
        '&&V_PTR_SESIONES.',
        '&&V_PTR_FECHA_INICIO.',
        '&&V_PTR_FECHA_FIN.',
        /*:MED_SOLICITUD_PROCEDIMIENTO.SPR_SESIONES_REALIZADAS*/
        NULL,
        /*:MED_SOLICITUD_PROCEDIMIENTO.SPR_DIAs*/
        '&&V_PTR_DIAS.',
        /*:MED_SOLICITUD_PROCEDIMIENTO.SPR_CODIGO_TARIFARIO*/
        '&&V_PTR_CODIGO_TARIFARIO.',
        /*:MED_SOLICITUD_PROCEDIMIENTO.SPR_HJA_EVOL*/
        '&&V_PTR_HJA_EVOL.',
        /*:MED_SOLICITUD_PROCEDIMIENTO.SPR_DIAGNOSTICO_MEDICO*/
        '&&V_PTR_DIAGNOSTICO_MEDICO.',
        /*:MED_SOLICITUD_PROCEDIMIENTO.SPR_OBSERVACION*/
        '&&V_PTR_OBSERVACION',
        /*:MED_SOLICITUD_PROCEDIMIENTO.SPR_ESTADO*/
        '&&V_PTR_ESTADO.',
        /*:MED_SOLICITUD_PROCEDIMIENTO.SPR_FECHA_CREACION*/
        '&&V_PTR_FECHA_CREACION.',
        /*:MED_SOLICITUD_PROCEDIMIENTO.SPR_COLOR*/
        NULL,
        /*:MED_SOLICITUD_PROCEDIMIENTO.SPR_INTENSIDAD*/
        NULL,
        /*:MED_SOLICITUD_PROCEDIMIENTO.SPR_FECHA_AGENDADO*/
        '&&V_PTR_FECHA_INICIO.');

VARIABLE v_seq_solicitud NUMBER

DECLARE
BEGIN
   SELECT SEQ_MED_SOLICITUD_PROC.CURRVAL INTO :v_seq_solicitud FROM DUAL;

   DBMS_OUTPUT.PUT_LINE (':v_seq_solicitud = ' || :v_seq_solicitud);
END;



DECLARE
   CURSOR CURS
   IS
      SELECT 'ALTER TABLE ADMINISTRATIVO.MED_TURNO_PROCEDIMIENTO ADD (pro_id_n1 INTEGER)'
                TEXT
        FROM DUAL;

   C_ROW         CURS%ROWTYPE;
   CURSOR_NAME   INTEGER;
BEGIN
   FOR C_ROW IN CURS
   LOOP
      DECLARE
         v_error   PLS_INTEGER;
      BEGIN
         CURSOR_NAME := DBMS_SQL.OPEN_CURSOR;
         DBMS_SQL.PARSE (CURSOR_NAME, C_ROW.TEXT, DBMS_SQL.NATIVE);
         DBMS_SQL.CLOSE_CURSOR (CURSOR_NAME);
      EXCEPTION
         WHEN OTHERS
         THEN
            v_error := -1;
      END;
   END LOOP;
END;
/



DECLARE
   CURSOR c1
   IS
      SELECT SPR_ID, SPR_SESIONES
        FROM MED_SOLICITUD_PROCEDIMIENTO
       WHERE SPR_ID = '&&1';

   --   CURSOR c1
   --   IS
   --        SELECT DISTINCT (SELECT PROID1NIVEL
   --                           FROM AA_TABLA_EQUIV_PROCED
   --                          WHERE tte_id = MEF_DET_TRATAM.TTE_ID)
   --                           PROID1NIVEL
   --          FROM ADMINISTRATIVO.MEF_PLANIF_TRATAM
   --               INNER JOIN ADMINISTRATIVO.MEF_CAB_TRATAM
   --                  ON (MEF_PLANIF_TRATAM.PTR_ID = MEF_CAB_TRATAM.PTR_ID)
   --               INNER JOIN ADMINISTRATIVO.MEF_DET_TRATAM
   --                  ON (MEF_CAB_TRATAM.CTR_ID = MEF_DET_TRATAM.CTR_ID)
   --         WHERE MEF_PLANIF_TRATAM.PTR_ID = '&&1'
   --      ORDER BY 1;

   v_nivel1_clasif   PLS_INTEGER;
BEGIN
   FOR c1_rec IN C1
   LOOP
      ROLLBACK;
   END LOOP;
END;



SPOOL OFF;
ROLLBACK;