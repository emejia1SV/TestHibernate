--------------------------------------------------------
-- Archivo creado  - viernes-agosto-29-2014   
--------------------------------------------------------
DROP TABLE "AVANTIA"."AGR_AGREGADORES" cascade constraints;
DROP TABLE "AVANTIA"."AGR_DEPURACION_BCK" cascade constraints;
DROP TABLE "AVANTIA"."AGREGADORES" cascade constraints;
DROP TABLE "AVANTIA"."AGR_INSUMOS" cascade constraints;
DROP TABLE "AVANTIA"."AGR_METODOS" cascade constraints;
DROP TABLE "AVANTIA"."AGR_PAISES" cascade constraints;
DROP TABLE "AVANTIA"."AGR_PARAMETROS" cascade constraints;
DROP TABLE "AVANTIA"."AGR_PARAMETROS_SISTEMA" cascade constraints;
DROP TABLE "AVANTIA"."AGR_RESPUESTAS" cascade constraints;
DROP TABLE "AVANTIA"."AGR_SERVICIOS" cascade constraints;
DROP TABLE "AVANTIA"."CLIENTE_TEL" cascade constraints;
DROP TABLE "AVANTIA"."PAISES" cascade constraints;
DROP TABLE "AVANTIA"."PRUEBA" cascade constraints;
--------------------------------------------------------
--  DDL for Table AGR_AGREGADORES
--------------------------------------------------------

  CREATE TABLE "AVANTIA"."AGR_AGREGADORES" 
   (	"ID" NUMBER, 
	"NOMBRE_AGREGADOR" VARCHAR2(255 BYTE), 
	"ESTADO" NUMBER, 
	"ID_PAIS" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AGREGADOR" ;
--------------------------------------------------------
--  DDL for Table AGR_DEPURACION_BCK
--------------------------------------------------------

  CREATE TABLE "AVANTIA"."AGR_DEPURACION_BCK" 
   (	"ID" NUMBER, 
	"NUMERO" VARCHAR2(50 BYTE), 
	"ID_ERROR" NUMBER, 
	"FECHA_PROCESAMIENTO" TIMESTAMP (6), 
	"ID_METODO_PROCESADO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AGREGADOR" ;
--------------------------------------------------------
--  DDL for Table AGREGADORES
--------------------------------------------------------

  CREATE TABLE "AVANTIA"."AGREGADORES" 
   (	"ID" NUMBER, 
	"FECHA" DATE, 
	"NOMBRE" VARCHAR2(255 BYTE), 
	"URL_SERVICIOS" VARCHAR2(255 BYTE), 
	"URL_BAJAS" VARCHAR2(255 BYTE), 
	"URL_LISTA_NEGRA" VARCHAR2(255 BYTE), 
	"FECHA_BAJA" DATE, 
	"USUARIO" VARCHAR2(255 BYTE), 
	"PASSW" VARCHAR2(255 BYTE), 
	"TIPO" VARCHAR2(100 BYTE), 
	"ID_PAIS" NUMBER, 
	"PUERTO" NUMBER, 
	"STATUS" NUMBER(*,0), 
	"URL_ALTAS" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AGREGADOR" ;
--------------------------------------------------------
--  DDL for Table AGR_INSUMOS
--------------------------------------------------------

  CREATE TABLE "AVANTIA"."AGR_INSUMOS" 
   (	"ID" NUMBER, 
	"DESCRIPCION" VARCHAR2(255 BYTE), 
	"QUERY" VARCHAR2(500 BYTE), 
	"IDENTIFICADOR" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AGREGADOR" ;
--------------------------------------------------------
--  DDL for Table AGR_METODOS
--------------------------------------------------------

  CREATE TABLE "AVANTIA"."AGR_METODOS" 
   (	"ID" NUMBER, 
	"ID_SERVICIOS" NUMBER, 
	"NOMBRE" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AGREGADOR" ;
 

   COMMENT ON COLUMN "AVANTIA"."AGR_METODOS"."ID" IS 'pk de la tabla metodos de los servicios';
 
   COMMENT ON COLUMN "AVANTIA"."AGR_METODOS"."ID_SERVICIOS" IS 'fk relacion con la tabla de servicios';
 
   COMMENT ON COLUMN "AVANTIA"."AGR_METODOS"."NOMBRE" IS 'nombre del metodo del servicio';
--------------------------------------------------------
--  DDL for Table AGR_PAISES
--------------------------------------------------------

  CREATE TABLE "AVANTIA"."AGR_PAISES" 
   (	"ID" NUMBER, 
	"PAIS" VARCHAR2(100 BYTE), 
	"CODIGO" VARCHAR2(10 BYTE), 
	"STATUS" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AGREGADOR" ;
--------------------------------------------------------
--  DDL for Table AGR_PARAMETROS
--------------------------------------------------------

  CREATE TABLE "AVANTIA"."AGR_PARAMETROS" 
   (	"ID" NUMBER, 
	"NOMBRE" VARCHAR2(255 BYTE), 
	"INSUMO" VARCHAR2(255 BYTE), 
	"COLUMNA" VARCHAR2(255 BYTE), 
	"ID_METODO" NUMBER, 
	"TIPO" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AGREGADOR" ;
 

   COMMENT ON COLUMN "AVANTIA"."AGR_PARAMETROS"."ID" IS 'pk de la tabla de parametros';
 
   COMMENT ON COLUMN "AVANTIA"."AGR_PARAMETROS"."NOMBRE" IS 'nombre del parametro a recibir el servicio web de los agregadores';
 
   COMMENT ON COLUMN "AVANTIA"."AGR_PARAMETROS"."INSUMO" IS 'nombre de la tabla aala que se debe extraer el insumo para el parametro';
 
   COMMENT ON COLUMN "AVANTIA"."AGR_PARAMETROS"."COLUMNA" IS 'nombre de la columna de la tabla que se quiere obtener el dato.';
 
   COMMENT ON COLUMN "AVANTIA"."AGR_PARAMETROS"."ID_METODO" IS 'fk con la tabla de metodos';
 
   COMMENT ON COLUMN "AVANTIA"."AGR_PARAMETROS"."TIPO" IS 'el tipo de dato que debe ser este parametro';
--------------------------------------------------------
--  DDL for Table AGR_PARAMETROS_SISTEMA
--------------------------------------------------------

  CREATE TABLE "AVANTIA"."AGR_PARAMETROS_SISTEMA" 
   (	"ID" NUMBER, 
	"KEY" VARCHAR2(255 BYTE), 
	"VALUE" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AGREGADOR" ;
--------------------------------------------------------
--  DDL for Table AGR_RESPUESTAS
--------------------------------------------------------

  CREATE TABLE "AVANTIA"."AGR_RESPUESTAS" 
   (	"ID" NUMBER, 
	"NOMBRE" VARCHAR2(255 BYTE), 
	"TIPO" VARCHAR2(255 BYTE), 
	"POSICION" NUMBER, 
	"ID_METODO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AGREGADOR" ;
--------------------------------------------------------
--  DDL for Table AGR_SERVICIOS
--------------------------------------------------------

  CREATE TABLE "AVANTIA"."AGR_SERVICIOS" 
   (	"ID" NUMBER, 
	"WSDL_AGREGADOR" VARCHAR2(300 BYTE), 
	"USUARIO" VARCHAR2(255 BYTE), 
	"CONTRASENIA" VARCHAR2(255 BYTE), 
	"ID_AGREGADOR" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AGREGADOR" ;
 

   COMMENT ON COLUMN "AVANTIA"."AGR_SERVICIOS"."ID" IS 'pk de la tabla servicios';
 
   COMMENT ON COLUMN "AVANTIA"."AGR_SERVICIOS"."WSDL_AGREGADOR" IS 'url del wsdl del agregador';
 
   COMMENT ON COLUMN "AVANTIA"."AGR_SERVICIOS"."USUARIO" IS 'usuario que se necesita para consultar el agregador';
 
   COMMENT ON COLUMN "AVANTIA"."AGR_SERVICIOS"."CONTRASENIA" IS 'contraseņa para consultar el agregador';
--------------------------------------------------------
--  DDL for Table CLIENTE_TEL
--------------------------------------------------------

  CREATE TABLE "AVANTIA"."CLIENTE_TEL" 
   (	"ID" NUMBER, 
	"NUMERO" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AGREGADOR" ;
--------------------------------------------------------
--  DDL for Table PAISES
--------------------------------------------------------

  CREATE TABLE "AVANTIA"."PAISES" 
   (	"ID" NUMBER(38,0), 
	"CODIGO" VARCHAR2(255 BYTE), 
	"PAIS" VARCHAR2(255 BYTE), 
	"STATUS" NUMBER(38,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AGREGADOR" ;
--------------------------------------------------------
--  DDL for Table PRUEBA
--------------------------------------------------------

  CREATE TABLE "AVANTIA"."PRUEBA" 
   (	"ID" NUMBER, 
	"NOMBRE" VARCHAR2(100 BYTE), 
	"TABLA" VARCHAR2(100 BYTE), 
	"COLUMNA" VARCHAR2(100 BYTE), 
	"TIPO" VARCHAR2(500 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AGREGADOR" ;
--------------------------------------------------------
--  DDL for Index AGR_AGREGADORES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AVANTIA"."AGR_AGREGADORES_PK" ON "AVANTIA"."AGR_AGREGADORES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AGREGADOR" ;
--------------------------------------------------------
--  DDL for Index AGR_DEPURACION_BCK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AVANTIA"."AGR_DEPURACION_BCK_PK" ON "AVANTIA"."AGR_DEPURACION_BCK" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AGREGADOR" ;
--------------------------------------------------------
--  DDL for Index AGREGADORES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AVANTIA"."AGREGADORES_PK" ON "AVANTIA"."AGREGADORES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AGREGADOR" ;
--------------------------------------------------------
--  DDL for Index AGR_INSUMOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AVANTIA"."AGR_INSUMOS_PK" ON "AVANTIA"."AGR_INSUMOS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AGREGADOR" ;
--------------------------------------------------------
--  DDL for Index AGR_PARAMETROS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AVANTIA"."AGR_PARAMETROS_PK" ON "AVANTIA"."AGR_PARAMETROS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AGREGADOR" ;
--------------------------------------------------------
--  DDL for Index AGR_PARAMETROS_SISTEMA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AVANTIA"."AGR_PARAMETROS_SISTEMA_PK" ON "AVANTIA"."AGR_PARAMETROS_SISTEMA" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AGREGADOR" ;
--------------------------------------------------------
--  DDL for Index AGR_RESPUESTA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AVANTIA"."AGR_RESPUESTA_PK" ON "AVANTIA"."AGR_RESPUESTAS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AGREGADOR" ;
--------------------------------------------------------
--  DDL for Index METODOS_SERVICIOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AVANTIA"."METODOS_SERVICIOS_PK" ON "AVANTIA"."AGR_METODOS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AGREGADOR" ;
--------------------------------------------------------
--  DDL for Index PAISES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AVANTIA"."PAISES_PK" ON "AVANTIA"."AGR_PAISES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AGREGADOR" ;
--------------------------------------------------------
--  DDL for Index PRUEBA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AVANTIA"."PRUEBA_PK" ON "AVANTIA"."PRUEBA" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AGREGADOR" ;
--------------------------------------------------------
--  DDL for Index SERVICIOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AVANTIA"."SERVICIOS_PK" ON "AVANTIA"."AGR_SERVICIOS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AGREGADOR" ;
--------------------------------------------------------
--  DDL for Index SYS_C0010998
--------------------------------------------------------

  CREATE UNIQUE INDEX "AVANTIA"."SYS_C0010998" ON "AVANTIA"."PAISES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AGREGADOR" ;
--------------------------------------------------------
--  DDL for Index USUARIOS_TEL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AVANTIA"."USUARIOS_TEL_PK" ON "AVANTIA"."CLIENTE_TEL" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AGREGADOR" ;
--------------------------------------------------------
--  Constraints for Table AGR_AGREGADORES
--------------------------------------------------------

  ALTER TABLE "AVANTIA"."AGR_AGREGADORES" ADD CONSTRAINT "AGR_AGREGADORES_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AGREGADOR"  ENABLE;
 
  ALTER TABLE "AVANTIA"."AGR_AGREGADORES" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "AVANTIA"."AGR_AGREGADORES" MODIFY ("NOMBRE_AGREGADOR" NOT NULL ENABLE);
 
  ALTER TABLE "AVANTIA"."AGR_AGREGADORES" MODIFY ("ESTADO" NOT NULL ENABLE);
 
  ALTER TABLE "AVANTIA"."AGR_AGREGADORES" MODIFY ("ID_PAIS" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table AGR_DEPURACION_BCK
--------------------------------------------------------

  ALTER TABLE "AVANTIA"."AGR_DEPURACION_BCK" ADD CONSTRAINT "AGR_DEPURACION_BCK_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AGREGADOR"  ENABLE;
 
  ALTER TABLE "AVANTIA"."AGR_DEPURACION_BCK" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "AVANTIA"."AGR_DEPURACION_BCK" MODIFY ("NUMERO" NOT NULL ENABLE);
 
  ALTER TABLE "AVANTIA"."AGR_DEPURACION_BCK" MODIFY ("FECHA_PROCESAMIENTO" NOT NULL ENABLE);
 
  ALTER TABLE "AVANTIA"."AGR_DEPURACION_BCK" MODIFY ("ID_METODO_PROCESADO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table AGREGADORES
--------------------------------------------------------

  ALTER TABLE "AVANTIA"."AGREGADORES" ADD CONSTRAINT "AGREGADORES_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AGREGADOR"  ENABLE;
 
  ALTER TABLE "AVANTIA"."AGREGADORES" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table AGR_INSUMOS
--------------------------------------------------------

  ALTER TABLE "AVANTIA"."AGR_INSUMOS" ADD CONSTRAINT "AGR_INSUMOS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AGREGADOR"  ENABLE;
 
  ALTER TABLE "AVANTIA"."AGR_INSUMOS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "AVANTIA"."AGR_INSUMOS" MODIFY ("QUERY" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table AGR_METODOS
--------------------------------------------------------

  ALTER TABLE "AVANTIA"."AGR_METODOS" ADD CONSTRAINT "METODOS_SERVICIOS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AGREGADOR"  ENABLE;
 
  ALTER TABLE "AVANTIA"."AGR_METODOS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "AVANTIA"."AGR_METODOS" MODIFY ("ID_SERVICIOS" NOT NULL ENABLE);
 
  ALTER TABLE "AVANTIA"."AGR_METODOS" MODIFY ("NOMBRE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table AGR_PAISES
--------------------------------------------------------

  ALTER TABLE "AVANTIA"."AGR_PAISES" ADD CONSTRAINT "PAISES_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AGREGADOR"  ENABLE;
 
  ALTER TABLE "AVANTIA"."AGR_PAISES" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table AGR_PARAMETROS
--------------------------------------------------------

  ALTER TABLE "AVANTIA"."AGR_PARAMETROS" ADD CONSTRAINT "AGR_PARAMETROS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AGREGADOR"  ENABLE;
 
  ALTER TABLE "AVANTIA"."AGR_PARAMETROS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "AVANTIA"."AGR_PARAMETROS" MODIFY ("NOMBRE" NOT NULL ENABLE);
 
  ALTER TABLE "AVANTIA"."AGR_PARAMETROS" MODIFY ("INSUMO" NOT NULL ENABLE);
 
  ALTER TABLE "AVANTIA"."AGR_PARAMETROS" MODIFY ("COLUMNA" NOT NULL ENABLE);
 
  ALTER TABLE "AVANTIA"."AGR_PARAMETROS" MODIFY ("ID_METODO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table AGR_PARAMETROS_SISTEMA
--------------------------------------------------------

  ALTER TABLE "AVANTIA"."AGR_PARAMETROS_SISTEMA" ADD CONSTRAINT "AGR_PARAMETROS_SISTEMA_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AGREGADOR"  ENABLE;
 
  ALTER TABLE "AVANTIA"."AGR_PARAMETROS_SISTEMA" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "AVANTIA"."AGR_PARAMETROS_SISTEMA" MODIFY ("KEY" NOT NULL ENABLE);
 
  ALTER TABLE "AVANTIA"."AGR_PARAMETROS_SISTEMA" MODIFY ("VALUE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table AGR_RESPUESTAS
--------------------------------------------------------

  ALTER TABLE "AVANTIA"."AGR_RESPUESTAS" ADD CONSTRAINT "AGR_RESPUESTA_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AGREGADOR"  ENABLE;
 
  ALTER TABLE "AVANTIA"."AGR_RESPUESTAS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "AVANTIA"."AGR_RESPUESTAS" MODIFY ("NOMBRE" NOT NULL ENABLE);
 
  ALTER TABLE "AVANTIA"."AGR_RESPUESTAS" MODIFY ("TIPO" NOT NULL ENABLE);
 
  ALTER TABLE "AVANTIA"."AGR_RESPUESTAS" MODIFY ("POSICION" NOT NULL ENABLE);
 
  ALTER TABLE "AVANTIA"."AGR_RESPUESTAS" MODIFY ("ID_METODO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table AGR_SERVICIOS
--------------------------------------------------------

  ALTER TABLE "AVANTIA"."AGR_SERVICIOS" ADD CONSTRAINT "SERVICIOS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AGREGADOR"  ENABLE;
 
  ALTER TABLE "AVANTIA"."AGR_SERVICIOS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "AVANTIA"."AGR_SERVICIOS" MODIFY ("WSDL_AGREGADOR" NOT NULL ENABLE);
 
  ALTER TABLE "AVANTIA"."AGR_SERVICIOS" MODIFY ("ID_AGREGADOR" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CLIENTE_TEL
--------------------------------------------------------

  ALTER TABLE "AVANTIA"."CLIENTE_TEL" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "AVANTIA"."CLIENTE_TEL" ADD CONSTRAINT "USUARIOS_TEL_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AGREGADOR"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PAISES
--------------------------------------------------------

  ALTER TABLE "AVANTIA"."PAISES" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "AVANTIA"."PAISES" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AGREGADOR"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PRUEBA
--------------------------------------------------------

  ALTER TABLE "AVANTIA"."PRUEBA" ADD CONSTRAINT "PRUEBA_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AGREGADOR"  ENABLE;
 
  ALTER TABLE "AVANTIA"."PRUEBA" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "AVANTIA"."PRUEBA" MODIFY ("NOMBRE" NOT NULL ENABLE);
 
  ALTER TABLE "AVANTIA"."PRUEBA" MODIFY ("TABLA" NOT NULL ENABLE);
 
  ALTER TABLE "AVANTIA"."PRUEBA" MODIFY ("COLUMNA" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table AGR_AGREGADORES
--------------------------------------------------------

  ALTER TABLE "AVANTIA"."AGR_AGREGADORES" ADD CONSTRAINT "AGR_AGREGADORES_FK1" FOREIGN KEY ("ID_PAIS")
	  REFERENCES "AVANTIA"."AGR_PAISES" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table AGR_DEPURACION_BCK
--------------------------------------------------------

  ALTER TABLE "AVANTIA"."AGR_DEPURACION_BCK" ADD CONSTRAINT "AGR_DEPURACION_BCK_FK1" FOREIGN KEY ("ID_METODO_PROCESADO")
	  REFERENCES "AVANTIA"."AGR_METODOS" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table AGR_METODOS
--------------------------------------------------------

  ALTER TABLE "AVANTIA"."AGR_METODOS" ADD CONSTRAINT "METODOS_SERVICIOS_FK" FOREIGN KEY ("ID_SERVICIOS")
	  REFERENCES "AVANTIA"."AGR_SERVICIOS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table AGR_PARAMETROS
--------------------------------------------------------

  ALTER TABLE "AVANTIA"."AGR_PARAMETROS" ADD CONSTRAINT "PARAMETROS_METODOS" FOREIGN KEY ("ID_METODO")
	  REFERENCES "AVANTIA"."AGR_METODOS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table AGR_RESPUESTAS
--------------------------------------------------------

  ALTER TABLE "AVANTIA"."AGR_RESPUESTAS" ADD CONSTRAINT "AGR_RESPUESTAS_FK1" FOREIGN KEY ("ID_METODO")
	  REFERENCES "AVANTIA"."AGR_METODOS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table AGR_SERVICIOS
--------------------------------------------------------

  ALTER TABLE "AVANTIA"."AGR_SERVICIOS" ADD CONSTRAINT "AGREGADOR_SERVICIOS" FOREIGN KEY ("ID_AGREGADOR")
	  REFERENCES "AVANTIA"."AGR_AGREGADORES" ("ID") ON DELETE CASCADE ENABLE;
