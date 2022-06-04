select * from flucase
where ID = 12345

-- Mensaje de prueba

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
