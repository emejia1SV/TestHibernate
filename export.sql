--------------------------------------------------------
-- Archivo creado  - viernes-agosto-29-2014   
--------------------------------------------------------
-- DROP TABLE "SDA_AGREGADORES" cascade constraints;
-- DROP TABLE "SDA_DEPURACION_BCK" cascade constraints;
-- DROP TABLE "AGREGADORES" cascade constraints;
-- DROP TABLE "SDA_INSUMOS" cascade constraints;
-- DROP TABLE "SDA_METODOS" cascade constraints;
-- DROP TABLE "SDA_PAISES" cascade constraints;
-- DROP TABLE "SDA_PARAMETROS" cascade constraints;
-- DROP TABLE "SDA_PARAMETROS_SISTEMA" cascade constraints;
-- DROP TABLE "SDA_RESPUESTAS" cascade constraints;
-- DROP TABLE "SDA_SERVICIOS" cascade constraints;
-- DROP TABLE "CLIENTE_TEL" cascade constraints;
-- DROP TABLE "PAISES" cascade constraints;
--------------------------------------------------------
--  DDL for Table SDA_AGREGADORES
--------------------------------------------------------

  CREATE TABLE "SDA_AGREGADORES" 
   (    "ID" NUMBER, 
    "NOMBRE_AGREGADOR" VARCHAR2(255 BYTE), 
    "ESTADO" NUMBER, 
    "ID_PAIS" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table SDA_DEPURACION_BCK
--------------------------------------------------------

  CREATE TABLE "SDA_DEPURACION_BCK" 
   (    "ID" NUMBER, 
    "NUMERO" VARCHAR2(50 BYTE), 
    "ID_ERROR" NUMBER, 
    "FECHA_PROCESAMIENTO" TIMESTAMP (6), 
    "ID_METODO_PROCESADO" NUMBER
   )  ;
--------------------------------------------------------
--  DDL for Table AGREGADORES
--------------------------------------------------------

  CREATE TABLE "AGREGADORES" 
   (    "ID" NUMBER, 
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
   )  ;
--------------------------------------------------------
--  DDL for Table SDA_INSUMOS
--------------------------------------------------------

  CREATE TABLE "SDA_INSUMOS" 
   (    "ID" NUMBER, 
    "DESCRIPCION" VARCHAR2(255 BYTE), 
    "QUERY" VARCHAR2(500 BYTE), 
    "IDENTIFICADOR" VARCHAR2(10 BYTE)
   )  ;
--------------------------------------------------------
--  DDL for Table SDA_METODOS
--------------------------------------------------------

  CREATE TABLE "SDA_METODOS" 
   (    "ID" NUMBER, 
    "ID_SERVICIOS" NUMBER, 
    "NOMBRE" VARCHAR2(255 BYTE)
   )  ;
 

   COMMENT ON COLUMN "SDA_METODOS"."ID" IS 'pk de la tabla metodos de los servicios';
 
   COMMENT ON COLUMN "SDA_METODOS"."ID_SERVICIOS" IS 'fk relacion con la tabla de servicios';
 
   COMMENT ON COLUMN "SDA_METODOS"."NOMBRE" IS 'nombre del metodo del servicio';
--------------------------------------------------------
--  DDL for Table SDA_PAISES
--------------------------------------------------------

  CREATE TABLE "SDA_PAISES" 
   (    "ID" NUMBER, 
    "PAIS" VARCHAR2(100 BYTE), 
    "CODIGO" VARCHAR2(10 BYTE), 
    "STATUS" NUMBER(*,0)
   )  ;
--------------------------------------------------------
--  DDL for Table SDA_PARAMETROS
--------------------------------------------------------

  CREATE TABLE "SDA_PARAMETROS" 
   (    "ID" NUMBER, 
    "NOMBRE" VARCHAR2(255 BYTE), 
    "INSUMO" VARCHAR2(255 BYTE), 
    "COLUMNA" VARCHAR2(255 BYTE), 
    "ID_METODO" NUMBER, 
    "TIPO" VARCHAR2(255 BYTE)
   )  ;
 

   COMMENT ON COLUMN "SDA_PARAMETROS"."ID" IS 'pk de la tabla de parametros';
 
   COMMENT ON COLUMN "SDA_PARAMETROS"."NOMBRE" IS 'nombre del parametro a recibir el servicio web de los agregadores';
 
   COMMENT ON COLUMN "SDA_PARAMETROS"."INSUMO" IS 'nombre de la tabla aala que se debe extraer el insumo para el parametro';
 
   COMMENT ON COLUMN "SDA_PARAMETROS"."COLUMNA" IS 'nombre de la columna de la tabla que se quiere obtener el dato.';
 
   COMMENT ON COLUMN "SDA_PARAMETROS"."ID_METODO" IS 'fk con la tabla de metodos';
 
   COMMENT ON COLUMN "SDA_PARAMETROS"."TIPO" IS 'el tipo de dato que debe ser este parametro';
--------------------------------------------------------
--  DDL for Table SDA_PARAMETROS_SISTEMA
--------------------------------------------------------

  CREATE TABLE "SDA_PARAMETROS_SISTEMA" 
   (    "ID" NUMBER, 
    "KEY" VARCHAR2(255 BYTE), 
    "VALUE" VARCHAR2(255 BYTE)
   )  ;
--------------------------------------------------------
--  DDL for Table SDA_RESPUESTAS
--------------------------------------------------------

  CREATE TABLE "SDA_RESPUESTAS" 
   (    "ID" NUMBER, 
    "NOMBRE" VARCHAR2(255 BYTE), 
    "TIPO" VARCHAR2(255 BYTE), 
    "POSICION" NUMBER, 
    "ID_METODO" NUMBER
   )  ;
--------------------------------------------------------
--  DDL for Table SDA_SERVICIOS
--------------------------------------------------------

  CREATE TABLE "SDA_SERVICIOS" 
   (    "ID" NUMBER, 
    "WSDL_AGREGADOR" VARCHAR2(300 BYTE), 
    "USUARIO" VARCHAR2(255 BYTE), 
    "CONTRASENIA" VARCHAR2(255 BYTE), 
    "ID_AGREGADOR" NUMBER
   )  ;
 

   COMMENT ON COLUMN "SDA_SERVICIOS"."ID" IS 'pk de la tabla servicios';
 
   COMMENT ON COLUMN "SDA_SERVICIOS"."WSDL_AGREGADOR" IS 'url del wsdl del agregador';
 
   COMMENT ON COLUMN "SDA_SERVICIOS"."USUARIO" IS 'usuario que se necesita para consultar el agregador';
 
   COMMENT ON COLUMN "SDA_SERVICIOS"."CONTRASENIA" IS 'contraseña para consultar el agregador';
--------------------------------------------------------
--  DDL for Table CLIENTE_TEL
--------------------------------------------------------

  CREATE TABLE "CLIENTE_TEL" 
   (    "ID" NUMBER, 
    "NUMERO" VARCHAR2(20 BYTE)
   )  ;
--------------------------------------------------------
--  DDL for Table PAISES
--------------------------------------------------------

  CREATE TABLE "PAISES" 
   (    "ID" NUMBER(38,0), 
    "CODIGO" VARCHAR2(255 BYTE), 
    "PAIS" VARCHAR2(255 BYTE), 
    "STATUS" NUMBER(38,0)
   ) ;
--------------------------------------------------------
--  DDL for Index SDA_AGREGADORES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SDA_AGREGADORES_PK" ON "SDA_AGREGADORES" ("ID")  ;
--------------------------------------------------------
--  DDL for Index SDA_DEPURACION_BCK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SDA_DEPURACION_BCK_PK" ON "SDA_DEPURACION_BCK" ("ID")  ;
--------------------------------------------------------
--  DDL for Index AGREGADORES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AGREGADORES_PK" ON "AGREGADORES" ("ID") ;
--------------------------------------------------------
--  DDL for Index SDA_INSUMOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SDA_INSUMOS_PK" ON "SDA_INSUMOS" ("ID") ;
--------------------------------------------------------
--  DDL for Index SDA_PARAMETROS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SDA_PARAMETROS_PK" ON "SDA_PARAMETROS" ("ID")  ;
--------------------------------------------------------
--  DDL for Index SDA_PARAMETROS_SISTEMA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SDA_PARAMETROS_SISTEMA_PK" ON "SDA_PARAMETROS_SISTEMA" ("ID") ;
--------------------------------------------------------
--  DDL for Index SDA_RESPUESTA_PK
--------------------------------------------------------
 ;
--------------------------------------------------------
--  DDL for Index METODOS_SERVICIOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "METODOS_SERVICIOS_PK" ON "SDA_METODOS" ("ID") ;
--------------------------------------------------------
--  DDL for Index PAISES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PAISES_PK" ON "SDA_PAISES" ("ID") ;
--------------------------------------------------------
--  DDL for Index SERVICIOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SERVICIOS_PK" ON "SDA_SERVICIOS" ("ID") ;
--------------------------------------------------------
--  DDL for Index SYS_C0010998
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0010998" ON "PAISES" ("ID")  ;
--------------------------------------------------------
--  DDL for Index USUARIOS_TEL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "USUARIOS_TEL_PK" ON "CLIENTE_TEL" ("ID") ;
--------------------------------------------------------
--  Constraints for Table SDA_AGREGADORES
--------------------------------------------------------

  ALTER TABLE "SDA_AGREGADORES" ADD CONSTRAINT "SDA_AGREGADORES_PK" PRIMARY KEY ("ID");
 
  ALTER TABLE "SDA_AGREGADORES" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "SDA_AGREGADORES" MODIFY ("NOMBRE_AGREGADOR" NOT NULL ENABLE);
 
  ALTER TABLE "SDA_AGREGADORES" MODIFY ("ESTADO" NOT NULL ENABLE);
 
  ALTER TABLE "SDA_AGREGADORES" MODIFY ("ID_PAIS" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SDA_DEPURACION_BCK
--------------------------------------------------------

  ALTER TABLE "SDA_DEPURACION_BCK" ADD CONSTRAINT "SDA_DEPURACION_BCK_PK" PRIMARY KEY ("ID");
 
  ALTER TABLE "SDA_DEPURACION_BCK" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "SDA_DEPURACION_BCK" MODIFY ("NUMERO" NOT NULL ENABLE);
 
  ALTER TABLE "SDA_DEPURACION_BCK" MODIFY ("FECHA_PROCESAMIENTO" NOT NULL ENABLE);
 
  ALTER TABLE "SDA_DEPURACION_BCK" MODIFY ("ID_METODO_PROCESADO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table AGREGADORES
--------------------------------------------------------

  ALTER TABLE "AGREGADORES" ADD CONSTRAINT "AGREGADORES_PK" PRIMARY KEY ("ID");
 
  ALTER TABLE "AGREGADORES" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SDA_INSUMOS
--------------------------------------------------------

  ALTER TABLE "SDA_INSUMOS" ADD CONSTRAINT "SDA_INSUMOS_PK" PRIMARY KEY ("ID");
 
  ALTER TABLE "SDA_INSUMOS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "SDA_INSUMOS" MODIFY ("QUERY" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SDA_METODOS
--------------------------------------------------------

  ALTER TABLE "SDA_METODOS" ADD CONSTRAINT "METODOS_SERVICIOS_PK" PRIMARY KEY ("ID");
 
  ALTER TABLE "SDA_METODOS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "SDA_METODOS" MODIFY ("ID_SERVICIOS" NOT NULL ENABLE);
 
  ALTER TABLE "SDA_METODOS" MODIFY ("NOMBRE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SDA_PAISES
--------------------------------------------------------

  ALTER TABLE "SDA_PAISES" ADD CONSTRAINT "PAISES_PK" PRIMARY KEY ("ID");
 
  ALTER TABLE "SDA_PAISES" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SDA_PARAMETROS
--------------------------------------------------------

  ALTER TABLE "SDA_PARAMETROS" ADD CONSTRAINT "SDA_PARAMETROS_PK" PRIMARY KEY ("ID");
 
  ALTER TABLE "SDA_PARAMETROS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "SDA_PARAMETROS" MODIFY ("NOMBRE" NOT NULL ENABLE);
 
  ALTER TABLE "SDA_PARAMETROS" MODIFY ("INSUMO" NOT NULL ENABLE);
 
  ALTER TABLE "SDA_PARAMETROS" MODIFY ("COLUMNA" NOT NULL ENABLE);
 
  ALTER TABLE "SDA_PARAMETROS" MODIFY ("ID_METODO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SDA_PARAMETROS_SISTEMA
--------------------------------------------------------

  ALTER TABLE "SDA_PARAMETROS_SISTEMA" ADD CONSTRAINT "SDA_PARAMETROS_SISTEMA_PK" PRIMARY KEY ("ID");
 
  ALTER TABLE "SDA_PARAMETROS_SISTEMA" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "SDA_PARAMETROS_SISTEMA" MODIFY ("KEY" NOT NULL ENABLE);
 
  ALTER TABLE "SDA_PARAMETROS_SISTEMA" MODIFY ("VALUE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SDA_RESPUESTAS
--------------------------------------------------------

  ALTER TABLE "SDA_RESPUESTAS" ADD CONSTRAINT "SDA_RESPUESTA_PK" PRIMARY KEY ("ID");
 
  ALTER TABLE "SDA_RESPUESTAS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "SDA_RESPUESTAS" MODIFY ("NOMBRE" NOT NULL ENABLE);
 
  ALTER TABLE "SDA_RESPUESTAS" MODIFY ("TIPO" NOT NULL ENABLE);
 
  ALTER TABLE "SDA_RESPUESTAS" MODIFY ("POSICION" NOT NULL ENABLE);
 
  ALTER TABLE "SDA_RESPUESTAS" MODIFY ("ID_METODO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SDA_SERVICIOS
--------------------------------------------------------

  ALTER TABLE "SDA_SERVICIOS" ADD CONSTRAINT "SERVICIOS_PK" PRIMARY KEY ("ID");
 
  ALTER TABLE "SDA_SERVICIOS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "SDA_SERVICIOS" MODIFY ("WSDL_AGREGADOR" NOT NULL ENABLE);
 
  ALTER TABLE "SDA_SERVICIOS" MODIFY ("ID_AGREGADOR" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CLIENTE_TEL
--------------------------------------------------------

  ALTER TABLE "CLIENTE_TEL" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "CLIENTE_TEL" ADD CONSTRAINT "USUARIOS_TEL_PK" PRIMARY KEY ("ID");
--------------------------------------------------------
--  Constraints for Table PAISES
--------------------------------------------------------

  ALTER TABLE "PAISES" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "PAISES" ADD PRIMARY KEY ("ID");
--------------------------------------------------------
--  Ref Constraints for Table SDA_AGREGADORES
--------------------------------------------------------

  ALTER TABLE "SDA_AGREGADORES" ADD CONSTRAINT "SDA_AGREGADORES_FK1" FOREIGN KEY ("ID_PAIS")
      REFERENCES "SDA_PAISES" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SDA_DEPURACION_BCK
--------------------------------------------------------

  ALTER TABLE "SDA_DEPURACION_BCK" ADD CONSTRAINT "SDA_DEPURACION_BCK_FK1" FOREIGN KEY ("ID_METODO_PROCESADO")
      REFERENCES "SDA_METODOS" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SDA_METODOS
--------------------------------------------------------

  ALTER TABLE "SDA_METODOS" ADD CONSTRAINT "METODOS_SERVICIOS_FK" FOREIGN KEY ("ID_SERVICIOS")
      REFERENCES "SDA_SERVICIOS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SDA_PARAMETROS
--------------------------------------------------------

  ALTER TABLE "SDA_PARAMETROS" ADD CONSTRAINT "PARAMETROS_METODOS" FOREIGN KEY ("ID_METODO")
      REFERENCES "SDA_METODOS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SDA_RESPUESTAS
--------------------------------------------------------

  ALTER TABLE "SDA_RESPUESTAS" ADD CONSTRAINT "SDA_RESPUESTAS_FK1" FOREIGN KEY ("ID_METODO")
      REFERENCES "SDA_METODOS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SDA_SERVICIOS
--------------------------------------------------------

  ALTER TABLE "SDA_SERVICIOS" ADD CONSTRAINT "AGREGADOR_SERVICIOS" FOREIGN KEY ("ID_AGREGADOR")
      REFERENCES "SDA_AGREGADORES" ("ID") ON DELETE CASCADE ENABLE;
