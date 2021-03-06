select * from flucase
where ID = 12345

-- Mensaje de prueba

-- volver a subir sp_insert_caseslabexport.sql v2.1.0
-- volver a subir sp_insert_caseslab.sql v2.1.0
-- volver a subir sp_insert_full_case_laboratory.sql v2.1.0

-- 2021/12/07
ALTER TABLE dbo.FluCase_Laboratory ADD Email varchar(100) NULL;
ALTER TABLE dbo.FluCase_Laboratory ADD Pregnant int NULL;
ALTER TABLE dbo.FluCase_Laboratory ADD Trimester int NULL;
ALTER TABLE dbo.FluCase_Laboratory ADD PregnantWeek int NULL;
ALTER TABLE dbo.FluCase_Laboratory ADD ObservationCase nvarchar(max) NULL;
ALTER TABLE dbo.FluCase_Laboratory ADD ObservationLab nvarchar(max) NULL;
        
ALTER TABLE dbo.FluCase_Laboratory ADD TravelPrevSympt int NULL;
ALTER TABLE dbo.FluCase_Laboratory ADD TravelPrevSymptDateDeparture1 datetime NULL;
ALTER TABLE dbo.FluCase_Laboratory ADD TravelPrevSymptDateReturn1  datetime NULL;

ALTER TABLE dbo.FluCase ADD Observation1 nvarchar(max) NULL;
ALTER TABLE dbo.FluCase ADD Observation2 nvarchar(max) NULL;
ALTER TABLE dbo.FluCase ADD Observation3 nvarchar(max) NULL;

ALTER TABLE dbo.FluCase ADD SymptomsCharacterize varchar(200) NULL;
ALTER TABLE dbo.FluCase ADD NotificationUnit bit NULL;

--
-- ejecutar storedprocedure Upd_AgeMLab v1.0.3
-- ejecutar storedprocedure Upd_AgeGroupLab v1.0.3


-- 2021/12/08
insert into Resources("Culture", "Name", "Value" ) values ('ENG', 'msgCaselistVigTabLabelObservation', 'Observation' );
insert into Resources("Culture", "Name", "Value" ) values ('SPA', 'msgCaselistVigTabLabelObservation', 'Observación' );

-- Agregar Columna Adding Column FluCase (Carlos)
ALTER TABLE FluCase ADD
    SymptomsCharacterize 	NVARCHAR(200) NULL
GO

-- 2021/12/09

-- 1. actualizar stored procedure sp_table_stat (sp_actualizar_tabla) --> 1.0.2

-- 2. aumentar tmano nombre
ALTER TABLE Institution ALTER COLUMN FullName nvarchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL;

-- 2021/12/13
-- cambios william
update Resources set Value= 'Longitud mínima: 8 caracteres y debe incluir como mínimo: 1 mayúscula, 1 minúscula, 1 número y 1 carácter especial' where name='msgMessagePasswordValidation' and Culture='SPA'

update Resources set Value= 'Minimum length: 8 characters and must include at least: 1 uppercase, 1 lowercase, 1 number and 1 special character' where name='msgMessagePasswordValidation' and Culture='ENG'

-- actualizar templates
-- CasesLabExport
-- CasesLab

-------------------FluCase_Audit 14/12/2021 (nota: el script de create table FluCase_Audit ya tiene estos cambios)-----
ALTER TABLE dbo.FluCase_Audit ADD Address5 varchar(100) NULL;
ALTER TABLE dbo.FluCase_Audit ADD SymptOtroDesc2 varchar(100) NULL;
ALTER TABLE dbo.FluCase_Audit ADD SymptOtroDesc3 varchar(100) NULL;
ALTER TABLE dbo.FluCase_Audit ADD Cyanosis bit NULL;
ALTER TABLE dbo.FluCase_Audit ADD Observation1 varchar(max) NULL;
ALTER TABLE dbo.FluCase_Audit ADD Observation2 varchar(max) NULL;
ALTER TABLE dbo.FluCase_Audit ADD Observation3 varchar(max) NULL;
ALTER TABLE dbo.FluCase_Audit ADD SymptomsCharacterize varchar(200) NULL;
ALTER TABLE dbo.FluCase_Audit ADD NotificationUnit bit NULL;

