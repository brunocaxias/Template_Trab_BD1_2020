insert into enfermeiro (nome, cpf, data_nascimento, funcao, coren)
VALUES ('Julio', '12343256784', '04-03-1987', 'Enfermeiro', '245879SP'),
	     ('João', '47625034072', '01-11-1999', 'Enfermeiro', '765198ES' );
       
insert into medico (nome, cpf, data_nascimento, funcao, crm, especializacao)
VALUES ('Bruno', '29984145428', '08-04-1981', 'Médico', 'CRM/GO 123456', 'Neurocirurgião'),
    ('Angela', '34394367589', '12-27-1981', 'Médico', 'CRM/SP 234512', 'Cardiologista');
    
INSERT into cliente (nome, cpf, data_nascimento, convenio, descricao)
VALUES ('Rosa', '16753478945', '08-07-1980', 'Empresarial', 'Diabético'),
	('Pedro', '21163701106', '12-12-1973', 'Familiar', 'Hipertenso'),
        ('Marcos', '25573923267', '04-18-1967', 'Coletivo por adesão', 'Asmático'),
        ('Katarina', '43214811911', '09-06-1940', 'Coletivo por adesão', 'Autista'),
        ('Marcelo', '52035256233', '05-18-1976', 'Empresarial', 'Diabético');

INSERT into cliente (nome, cpf, data_nascimento, convenio)
VALUES	('Vinicius', '38804589750', '03-05-2000', 'Familiar')
        ('João', '47625034072', '11-01-1999', 'Pessoa física')

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
