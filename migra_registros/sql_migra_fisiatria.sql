/* Formatted on 02/06/2016 15:01:21 (QP5 v5.252.13127.32867) */
SET DEFINE ~
WHENEVER SQLERROR EXIT FAILURE ROLLBACK;
SET SERVEROUTPUT ON
SET LINESIZE 2000
SET PAGESIZE 0
SET HEADING ON;
SET VERIFY ON;
SET ECHO ON;
SET FEEDBACK ON;
SET TIMING ON;
SET SQLPROMPT "";

COLUMN fecha FORMAT a20 NEW_VALUE fec NOPRINT

SELECT TO_CHAR (SYSDATE, 'yyyy-mm-dd-hh24-mi-ss') fecha FROM DUAL;

SET DEFINE ~
DEFINE numregistros=1;

SPOOL  C:\logs\lista_migra_nuvam_fisiatria_~~fec..txt
REM SE LO UTILIZA PARA VER LOS REGISTROS HASTA UN NÚMERO DETERMINADO

SELECT PTR_ID,
       PAC_ID,
       CIE_ID,
       HOR_ID,
       PTR_SESIONES,
       PTR_FECHA_CREACION,
       PTR_FECHA_INICIO,
       PTR_FECHA_FIN,
       PTR_ESTADO,
       PTR_NUM_SESIONES,
       PTR_DIAS,
       PTR_CODIGO_TARIFARIO,
       TER_ID,
       CIN_NUMERO,
       PTR_HJA_EVOL,
       PME_ID,
       PTR_TIPO_PLANIF,
       PTR_DIAGNOSTICO_MEDICO,
       PTR_OBSERVACION,
       UNS_ID
  FROM MEF_PLANIF_TRATAM
 WHERE ROWNUM <= '~~numregistros';

SPOOL OFF;

ROLLBACK;