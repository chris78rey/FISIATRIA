/* Formatted on 14/06/2016 10:52:41 (QP5 v5.252.13127.32867) */
DROP TABLE ADMINISTRATIVO.AA_TERAP_1NIV CASCADE CONSTRAINTS;

CREATE TABLE ADMINISTRATIVO.AA_TERAP_1NIV
(
   TER_ID             INTEGER,
   ESE_ID             INTEGER,
   TER_DESCRIPCION    VARCHAR2 (500 BYTE),
   TER_ESTADO         VARCHAR2 (1 BYTE),
   TER_ID_PADRE       INTEGER,
   TER_ULTIMO_NIVEL   VARCHAR2 (1 BYTE),
   TER_CODIGO         VARCHAR2 (10 BYTE),
   TER_NUM_TERAPIA    INTEGER,
   TER_CODIGO_SC      VARCHAR2 (100 BYTE),
   PRO_ID             INTEGER
);


INSERT INTO ADMINISTRATIVO.AA_TERAP_1NIV (TER_ID,
                                          ESE_ID,
                                          TER_DESCRIPCION,
                                          TER_ESTADO,
                                          TER_ID_PADRE,
                                          TER_ULTIMO_NIVEL,
                                          TER_NUM_TERAPIA,
                                          PRO_ID)
     VALUES (4,
             1,
             'HIDROTERAPIA',
             'A',
             1,
             'S',
             2,
             1);

INSERT INTO ADMINISTRATIVO.AA_TERAP_1NIV (TER_ID,
                                          ESE_ID,
                                          TER_DESCRIPCION,
                                          TER_ESTADO,
                                          TER_ID_PADRE,
                                          TER_ULTIMO_NIVEL,
                                          TER_NUM_TERAPIA,
                                          PRO_ID)
     VALUES (6,
             1,
             'MECANOTERAPIA GIMNASIO',
             'A',
             1,
             'S',
             0,
             1);

INSERT INTO ADMINISTRATIVO.AA_TERAP_1NIV (TER_ID,
                                          ESE_ID,
                                          TER_DESCRIPCION,
                                          TER_ESTADO,
                                          TER_ULTIMO_NIVEL,
                                          TER_NUM_TERAPIA,
                                          PRO_ID)
     VALUES (1,
             1,
             'TERAPIA FISICA',
             'A',
             'N',
             0,
             1);

INSERT INTO ADMINISTRATIVO.AA_TERAP_1NIV (TER_ID,
                                          ESE_ID,
                                          TER_DESCRIPCION,
                                          TER_ESTADO,
                                          TER_ID_PADRE,
                                          TER_ULTIMO_NIVEL,
                                          TER_NUM_TERAPIA,
                                          PRO_ID)
     VALUES (5,
             1,
             'ELECTROTERAPIA',
             'A',
             1,
             'S',
             0,
             1);

INSERT INTO ADMINISTRATIVO.AA_TERAP_1NIV (TER_ID,
                                          ESE_ID,
                                          TER_DESCRIPCION,
                                          TER_ESTADO,
                                          TER_ULTIMO_NIVEL,
                                          TER_NUM_TERAPIA,
                                          PRO_ID)
     VALUES (2,
             1,
             'TERAPIA OCUPACIONAL',
             'A',
             'N',
             0,
             2);

INSERT INTO ADMINISTRATIVO.AA_TERAP_1NIV (TER_ID,
                                          ESE_ID,
                                          TER_DESCRIPCION,
                                          TER_ESTADO,
                                          TER_ID_PADRE,
                                          TER_ULTIMO_NIVEL,
                                          TER_NUM_TERAPIA,
                                          PRO_ID)
     VALUES (9,
             1,
             'TERAPIA OCUPACIONAL',
             'A',
             2,
             'N',
             0,
             2);

INSERT INTO ADMINISTRATIVO.AA_TERAP_1NIV (TER_ID,
                                          ESE_ID,
                                          TER_DESCRIPCION,
                                          TER_ESTADO,
                                          TER_ID_PADRE,
                                          TER_ULTIMO_NIVEL,
                                          TER_NUM_TERAPIA,
                                          PRO_ID)
     VALUES (10,
             1,
             'TERAPIA DE LENGUAJE',
             'A',
             3,
             'N',
             0,
             3);

INSERT INTO ADMINISTRATIVO.AA_TERAP_1NIV (TER_ID,
                                          ESE_ID,
                                          TER_DESCRIPCION,
                                          TER_ESTADO,
                                          TER_ULTIMO_NIVEL,
                                          TER_NUM_TERAPIA,
                                          PRO_ID)
     VALUES (3,
             1,
             'TERAPIA DE LENGUAJE',
             'A',
             'N',
             0,
             3);

INSERT INTO ADMINISTRATIVO.AA_TERAP_1NIV (TER_ID,
                                          ESE_ID,
                                          TER_DESCRIPCION,
                                          TER_ESTADO,
                                          TER_ID_PADRE,
                                          TER_ULTIMO_NIVEL,
                                          TER_NUM_TERAPIA,
                                          PRO_ID)
     VALUES (12,
             1,
             'ONDAS DE CHOQUE',
             'A',
             11,
             'S',
             0,
             4);

INSERT INTO ADMINISTRATIVO.AA_TERAP_1NIV (TER_ID,
                                          ESE_ID,
                                          TER_DESCRIPCION,
                                          TER_ESTADO,
                                          TER_ULTIMO_NIVEL,
                                          TER_NUM_TERAPIA,
                                          PRO_ID)
     VALUES (11,
             1,
             'ONDAS DE CHOQUE',
             'A',
             'N',
             0,
             4);

COMMIT;