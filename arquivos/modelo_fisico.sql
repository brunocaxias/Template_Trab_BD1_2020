-- Cria a tabela pessoa
CREATE TABLE pessoa(
	id SERIAL PRIMARY KEY NOT NULL,
  	nome VARCHAR(50),
  	cpf VARCHAR(50),
  	data_nascimento DATE
);

-- Cria a tabela cliente, herda da tabela pessoa
CREATE TABLE cliente(
	convenio VARCHAR(50),
	descricao VARCHAR(200)
)
INHERITS (pessoa);

-- Cria a tabela funcionario, herda da tabela pessoa
CREATE TABLE funcionario(
	funcao VARCHAR(50)
)
INHERITS (pessoa);

-- Cria a tabela dia_semana
CREATE TABLE dia_semana(
	id SERIAL PRIMARY KEY NOT NULL,
	dia_da_semana VARCHAR(50)
);

-- Cria a tabela horario_funcionario
CREATE TABLE horario_funcionario(
	id SERIAL PRIMARY KEY NOT NULL,
	id_dia_semana INTEGER NOT NULL, 
	horario_entrada TIME,
	horaio_saida TIME,
	FOREIGN KEY (id_dia_semana) REFERENCES dia_semana (id)
);

-- Cria a tabela medico, herda da tabela funcionario
CREATE TABLE medico(
	crm VARCHAR(20),
	especializacao VARCHAR(100)
)
INHERITS (funcionario);

-- Cria a tabela enfermeiro, herda da tabela funcionario
CREATE TABLE enfermeiro(
	coren VARCHAR(20)
)
INHERITS (funcionario);

-- Cria a tabela consulta
CREATE TABLE consulta(
	id SERIAL PRIMARY KEY NOT NULL,
  	id_medico INTEGER NOT NULL,
  	id_cliente INTEGER NOT NULL,
	data_hora TIMESTAMP,
  	descricao VARCHAR(200),
  	FOREIGN KEY (id_medico) REFERENCES pessoa (id),
 	FOREIGN KEY (id_cliente) REFERENCES pessoa (id)
);

-- Cria a tabela exame
CREATE TABLE exame(
	id SERIAL PRIMARY KEY NOT NULL,
  	tipo VARCHAR(50)
);

-- Cria a tabela consulta_exame
CREATE TABLE consulta_exame(
	id SERIAL PRIMARY KEY NOT NULL,
  	id_consulta INTEGER NOT NULL,
  	id_funcionario INTEGER NOT NULL,
 	id_exame INTEGER NOT NULL,
  	data DATE,
  	hora TIME,
  	sintomas VARCHAR(200),
  	FOREIGN KEY (id_consulta) REFERENCES consulta (id),
 	FOREIGN KEY (id_funcionario) REFERENCES pessoa (id),
 	FOREIGN KEY (id_exame) REFERENCES exame (id)
);

-- Cria a tabela medicamento
CREATE TABLE medicamento(
  	id SERIAL PRIMARY KEY NOT NULL,
	principio_ativo VARCHAR(100),
  	nome_comercial VARCHAR(50)
);

-- Cria a tabela consulta_medicamento
CREATE TABLE consulta_medicamento(
	id SERIAL PRIMARY KEY NOT NULL,
  	id_medicamento INTEGER NOT NULL,
  	id_consulta INTEGER NOT NULL,
 	quantidade INTEGER,
  	FOREIGN KEY (id_medicamento) REFERENCES medicamento (id),
 	FOREIGN KEY (id_consulta) REFERENCES consulta (id)
);
