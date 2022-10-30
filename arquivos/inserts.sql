-- Insere valores na tabela ENFERMEIRO
INSERT INTO enfermeiro(nome, cpf, data_nascimento, funcao, hora_chegada, hora_saida, coren)
VALUES ('Julio', '12343256784', '1987/04/03', 'Enfermeiro', '09:23:00', '06:05:00', '245879SP'),
	('João', '47625034072', '1999/01/11', 'Enfermeiro', '09:32:00', '12:20:00', '765198ES')

-- Insere valores na tabela MEDICO
INSERT INTO medico(nome, cpf, data_nascimento, funcao, hora_chegada, hora_saida, crm, especializacao)
VALUES('Bruno', '29984145428', '1981/08/22', 'Médico', '08:10:00', '14:25:00', 'CRM/GO 123456', 'Neurocirurgião'),
      ('Angela', '34394367589', '1953/12/27', 'Médico', '10:15:00', '06:05:00', 'CRM/SP  234512', 'Cardiologista'),

-- Insere valores na tabela CLIENTE
-- Para os clientes que possuem uma descrição
INSERT INTO cliente(nome, cpf, data_nascimento, convenio, descricao)
VALUES('Rosa', '16753478945', '1980/08/07', 'Empresarial', 'Diabético'),
	('Pedro', '21163701106', '1973/12/12', 'Familiar', 'Hipertenso'),
	('Marcos', '25573923267', '1967/04/18', 'Coletivo por adesão', 'Asmático'),
	('Katarina', '43214811911', '1940/09/06', 'Coletivo por adesão', 'Autista'),
	('Marcelo', '52035256233', '1976/05/18', 'Empresarial', 'Diabético');

-- Insere valores na tabela CLIENTE
-- Para os clientes que não tem descrição
INSERT INTO cliente(nome, cpf, data_nascimento, convenio)
VALUES('Vinicius', '38804589750', '2000/05/03', 'Familiar');

-- Insere valores na tabela EXAME
INSERT INTO exame(data, hora, sintomas, tipo)
VALUES('2018/11/08', '08:09:00', 'Febre', 'Hemograma'),
('2019/08/18', '09:30:00', 'Dores de cabeça', 'Urinálise'),
('2020/05/27', '10:51:00', 'Inflamação', 'Colesterol'),
('2021/03/06', '12:12:00', 'Febre', 'Glicemia'),
('2021/12/14', '13:33:00', 'Dores de cabeça', 'Hemograma'),
('2018/06/01', '14:54:00', 'Inflamação', 'Hemograma'),
('2019/07/12', '16:15:00', 'Febre', 'Urinálise'),
('2020/08/21', '07:07:00', 'Dores de cabeça', 'Glicemia'),
('2021/10/01', '21:59:00', 'Inflamação', 'Colesterol'),
('2022/11/11', '12:51:00', 'Febre', 'Hemograma');

-- Insere valores na tabela medicamento
INSERT INTO medicamento(nome_comercial, principio_ativo)
VALUES('Gluaprotin', 'Cloro'),
('Adenotropin', 'Abatacpte'),
('Meprononide', 'Acetato de Degarelix'),
('Fragnuma', 'Acetato de Aberaterona'),
('Fragnuma', 'Acetato de Aberaterona'),
('Nalobucil', 'Belimumad'),
('Meprononide', 'Acetato de Degarelix'),
('Cortisin Invabisome',	'Bosentana'),
('Preprotin', 'Acetato de Lanreotida'),
('Fragnuma', 'Acetato de Aberaterona');


-- Insere valores na tabela consulta
INSERT INTO consulta(id_medico, id_cliente, data, hora, descricao)
VALUES(1, 6, '2021/09/04', '10:09:00', 'Checar alergias ao medicamento'),
(1, 3, '2021/09/04', '10:09:00', 'Checar alergias ao medicamento'),
(1, 2, '2019/10/07', '11:30:00', 'Paciente fobia a sangue'),
(2, 4, '2020/09/27', '12:51:00', 'Verificar dia que será possível realizar o exame'),
(2, 5, '2018/11/08', '14:12:00', 'Checar alergias ao medicamento'),
(1, 5, '2019/08/18', '15:33:00', 'Paciente fobia a sangue'),
(2, 6, '2020/05/27', '16:54:00', 'Verificar dia que será possível realizar o exame'),
(1, 3, '2020/06/03', '18:15:00', 'Checar alergias ao medicamento'),
(2, 2, '2021/12/14', '19:36:00', 'Paciente fobia a sangue'),
(1, 2, '2017/02/28', '22:18:00', 'Checar alergias ao medicamento');

-- Insere valores na tabela consulta_exame
INSERT INTO consulta_exame(id_consulta, id_funcionario, id_exame, data, hora, sintomas)
VALUES (1,1,1,'2018-11-08','10:09:00', 'Checar alergias ao medicamento'),
(2,1,2,'2019-08-18','10:09:00', 'Checar alergias ao medicamento'),
(3,2,3,'2020-05-27','11:30:00', 'Paciente fobia a sangue'),
(4,2,4,'2021-03-06','12:51:00', 'Verificar dia que será possível realizar o exame'),
(5,2,5,'2021-12-14','14:12:00', 'Checar alergias ao medicamento'),
(6,1,6,'2018-06-01','15:33:00', 'Paciente fobia a sangue'),
(7,1,7,'2019-07-12','16:54:00', 'Verificar dia que será possível realizar o exame'),
(8,2,8,'2020-08-21','18:15:00', 'Checar alergias ao medicamento'),
(9,1,9,'2021-10-01','19:36:00', 'Paciente fobia a sangue'),
(10,2,10,'2022-11-11','22:18:00', 'Checar alergias ao medicamento');


-- Insere valores na tabela consulta_medicamento
INSERT INTO consulta_medicamento(id_medicamento, id_consulta, quantidade)
VALUES (1,1,1),
(2,2,1),
(3,3,2),
(4,4,8),
(5,5,2),
(6,6,9),
(7,7,10),
(8,8,4),
(9,9,5),
(10,10,6);