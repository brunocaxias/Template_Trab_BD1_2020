-- Cria a tabela pessoa
CREATE TABLE pessoa(
	id SERIAL PRIMARY KEY NOT NULL,
  	nome VARCHAR(50),
  	cpf INTEGER,
  	data_nascimento DATE
);

-- Cria a tabela cliente, herda da tabela pessoa
CREATE TABLE cliente(
	id SERIAL PRIMARY KEY NOT NULL,
	convenio VARCHAR(50),
	descricao VARCHAR(200)
)
INHERITS (pessoa);

-- Cria a tabela funcionario, herda da tabela pessoa
CREATE TABLE funcionario(
	id SERIAL PRIMARY KEY NOT NULL,
	funcao VARCHAR(50),
  	hora_chegada TIME,
  	hora_saida TIME
)
INHERITS (pessoa);

-- Cria a tabela medico, herda da tabela funcionario
CREATE TABLE medico(
	id SERIAL PRIMARY KEY NOT NULL,
	crm VARCHAR(20),
	especializacao VARCHAR(100)
)
INHERITS (funcionario);

-- Cria a tabela enfermeiro, herda da tabela funcionario
CREATE TABLE enfermeiro(
	id SERIAL PRIMARY KEY NOT NULL,
	coren VARCHAR(20)
)
INHERITS (funcionario);

-- Cria a tabela consulta
CREATE TABLE consulta(
	id SERIAL PRIMARY KEY NOT NULL,
  	id_medico INTEGER NOT NULL,
  	id_cliente INTEGER NOT NULL,
  	data DATE,
  	hora TIME,
  	descricao VARCHAR(200),
  	FOREIGN KEY (id_medico) REFERENCES medico (id),
 	FOREIGN KEY (id_cliente) REFERENCES cliente (ID)
);

-- Cria a tabela exame
CREATE TABLE exame(
	id SERIAL PRIMARY KEY NOT NULL,
  	data DATE,
  	hora TIME,
  	sintomas VARCHAR(200),
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
 	FOREIGN KEY (id_funcionario) REFERENCES funcionario (ID),
 	FOREIGN KEY (id_exame) REFERENCES exame (ID)
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
 	FOREIGN KEY (id_consulta) REFERENCES consulta (ID)
);
