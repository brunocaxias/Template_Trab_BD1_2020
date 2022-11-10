INSERT into pessoa (nome, cpf, data_nascimento)
VALUES ('Bruno', '29984145428', '08-04-1981'),
        ('Angela', '34394367589', '12-27-1981'),
        ('Julio', '12343256784', '04-03-1987'),
        ('João', '47625034072', '01-11-1999'),
        ('Rosa', '16753478945', '08-07-1980'),
        ('Pedro', '21163701106', '12-12-1973'),
        ('Marcos', '25573923267', '04-18-1967'),
        ('Katarina', '43214811911', '09-06-1940'),
        ('Marcelo', '52035256233', '05-18-1976'),
        ('Vinicius', '38804589750', '03-05-2000'),
        ('João', '47625034072', '11-01-1999');

insert into funcionario (id, nome, cpf, data_nascimento, funcao)
VALUES (1, 'Bruno', '29984145428', '08-04-1981', 'Médico'),
	(2, 'Angela', '34394367589', '12-27-1981', 'Médico'),
	(3, 'Julio', '12343256784', '04-03-1987', 'Enfermeiro'),
	(4, 'João', '47625034072', '01-11-1999', 'Enfermeiro');

insert into medico (id, nome, cpf, data_nascimento, funcao, crm, especializacao)
VALUES (1, 'Bruno', '29984145428', '08-04-1981', 'Médico', 'CRM/GO 123456', 'Neurocirurgião'),
    	(2, 'Angela', '34394367589', '12-27-1981', 'Médico', 'CRM/SP 234512', 'Cardiologista');

insert into enfermeiro (id, nome, cpf, data_nascimento, funcao, coren)
VALUES (3, 'Julio', '12343256784', '04-03-1987', 'Enfermeiro', '245879SP'),
       (4, 'João', '47625034072', '01-11-1999', 'Enfermeiro', '765198ES' );

INSERT into cliente (id, nome, cpf, data_nascimento, convenio, descricao)
VALUES (5, 'Rosa', '16753478945', '08-07-1980', 'Empresarial', 'Diabético'),
    	(6, 'Pedro', '21163701106', '12-12-1973', 'Familiar', 'Hipertenso'),
        (7, 'Marcos', '25573923267', '04-18-1967', 'Coletivo por adesão', 'Asmático'),
        (8, 'Katarina', '43214811911', '09-06-1940', 'Coletivo por adesão', 'Autista'),
        (9, 'Marcelo', '52035256233', '05-18-1976', 'Empresarial', 'Diabético');

INSERT into cliente (id, nome, cpf, data_nascimento, convenio)
VALUES  (10, 'Vinicius', '38804589750', '03-05-2000', 'Familiar'),
        (11, 'João', '47625034072', '11-01-1999', 'Pessoa física');

INSERT INTO medicamento(nome_comercial, principio_ativo)
VALUES ('Gluaprotin', 'Cloro'),
    	('Adenotropin', 'Abatacpte'),    
    	('Meprononide', 'Acetato de Degarelix'),    
    	('Fragnuma', 'Acetato de Aberaterona'),
    	('Fragnuma', 'Acetato de Aberaterona'),
    	('Nalobucil', 'Belimumad'),
    	('Meprononide', 'Acetato de Degarelix'),    
    	('Cortisin Invabisome', 'Bosentana'),
    	('Preprotin', 'Acetato de Lanreotida'),
    	('Fragnuma', 'Acetato de Aberaterona');
 
INSERT INTO exame(tipo)
VALUES ('Hemograma'),
	('Urinálise'),
	('Colesterol'),
	('Glicemia'),
	('Hemograma'),
	('Hemograma'),
	('Urinálise'),
	('Glicemia'),
	('Colesterol'),
	('Hemograma');

INSERT INTO dia_semana(dia_da_semana)
VALUES ('domingo'),
	('segunda-feira'),
	('terça-feira'),
	('quarta-feira'),
	('quinta-feira'),
	('sexta-feira'),
	('sabado');

insert INTO horario_funcionario(id_funcionario, id_dia_semana, horario_entrada, horaio_saida)
VALUES (1, 2, '09:00:00', '18:00:00'),
	(1, 3, '10:30:00', '22:30:00'),
	(1, 4, '13:00:00', '00:00:00'),
	(1, 5, '07:40:20', '15:40:20'),
	(1, 6, '08:00:00', '17:00:00'),
	(1, 7, '08:00:00', '17:00:00'),
	(2, 2, '08:30:00', '16:20:00'),
	(2, 3, '11:30:00', '23:30:00'),
	(2, 4, '13:00:00', '00:00:00'),
	(2, 5, '10:15:00', '17:15:00'),
	(2, 6, '08:00:19', '16:00:19'),
	(2, 7, '16:00:00', '23:40:00'),
	(2, 7, '08:00:00', '17:00:00'),
	(3, 2, '13:00:00', '22:00:00'),
	(3, 3, '14:30:00', '22:30:00'),
	(3, 4, '15:00:00', '23:40:00'),
	(3, 5, '10:20:00', '20:30:00'),
	(3, 7, '08:00:00', '17:00:00'),
	(4, 2, '09:00:00', '18:00:00'),
	(4, 3, '12:30:00', '23:30:00'),
	(4, 4, '15:00:00', '00:20:00'),
	(4, 5, '09:00:00', '18:00:00'),
	(4, 6, '15:00:00', '00:20:00');
