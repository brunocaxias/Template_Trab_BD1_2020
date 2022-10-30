<!--<h1 align='center'>TRABALHO 01</h1>-->
<h1 align='center'>🩺 GotoDoc - Sistema de Gerenciamento de Consultas</h1>
<h2 align='center'>Trabalho desenvolvido durante a disciplina de BD1</h2>

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo<br>
Bruno Caxias: bccaxias03.bc@gmail.com - [github](https://github.com/brunocaxias)  <br>
João Vitor Maciel: jvmacielv@gmail.com - [github](https://github.com/Maciel-Dev) <br>
Marcos Vinicius Faria: marcosfaria03@hotmail.com - [github](https://github.com/mvmfaria) <br>
Vinicius Estevam: vinicius.estevam99@gmail.com - [github](https://github.com/vinicius-je) <br> 

### 2.INTRODUÇÃO E MOTIVAÇÃO<br>
Este documento contém a especificação do projeto do banco de dados <nome do projeto> 
<br>e motivação da escolha realizada. <br>

 > A empresa "GotoDoc" visa colaborar com desenvolvimento de projeto para uma sociedade melhor. Através de um sistema de gerenciamento de consultas, a empresa propõe, uma vez que entende das dificuldades encontradas desde o agendamento de uma consulta ou exame, até a sua realização, a facilitação de contato entre os pacientes e o entendimento e ciência do que está sendo realizado em prol da sua consulta. O Sistema "GotoDoc" tem como objetico o gerenciamento de consultas e exames realizados em redes de atendimento que possuem parceria com a mesma. Para realizar suas operações de forma adequada a empresa necessita que o sistema armazene informações relacionadas aos Pacientes, Funcionários, podendo ser Secretário, Médico ou Enfermeiro, Clientes e Remédios. O sistema deverá gerar um conjunto de relatórios que por sua vez atenderá os anseios da empresa em questão.
 

### 3.MINI-MUNDO<br>

<!--Descrever o mini-mundo! (Não deve ser maior do que 30 linhas, se necessário resumir para justar) <br>
Entrevista com o usuário e identificação dos requisitos.(quando for o caso de sistemas com cliente  real)<br>
Descrição textual das regras de negócio definidas como um  subconjunto do mundo real 
cujos elementos são propriedades que desejamos incluir, processar, armazenar, 
gerenciar, atualizar, e que descrevem a proposta/solução a ser desenvolvida.-->

> Uma rede hospitalar “GotoDoc” deseja desenvolver um sistema chamado “GoDoc” para gerenciar consultas e exames que acontecem em seus hospitais. Os hospitais abrangidos pelo sistema a ser desenvolvido possuem funcionários, que podem ser médicos, enfermeiros ou secretários, de todas as pessoas cadastradas no sistema deve-se armazenar um endereço e telefone. Para os médicos, o sistema contém o nome, o CRM e a especialização deles. Tanto para os funcionários no geral quanto para os pacientes a serem incluídos no sistema, é necessário ter no registro o nome, a data de nascimento e o CPF. Além disso, deve-se registrar dos pacientes uma descrição de qual convênio eles pertencem e dos funcionários nome da função e código. Como o propósito geral do sistema é de agendamento de consultas e exames, o sistema deve alocar os médicos de acordo com suas especializações para atender aos pacientes. Como resultado da consulta, que possui uma data e hora marcadas a serem registradas pelo sistema, o médico pode receitar um ou mais medicamentos, um ou mais exames ou ambos. Para os medicamentos, o sistema deve armazenar a quantidade receitada, o princípio ativo do medicamento e seu nome comercial. Já para os exames, o sistema deve armazenar qual tipo de exame foi realizado, o horário e o dia que aconteceu e uma descrição a depender da reação do paciente ao exame. Pacientes podem marcar várias ou nenhuma consultas e a partir da consulta médico pode pedir a secretário que marque ou não um exame para o paciente, exames podem ser feitos por médicos ou enfermeiros a depender do exame, exames são marcados apenas por secretários, pacientes ou médicos devem pedir ao secretário para que marque um exame com base em horários disponíveis. Pacientes podem pedir ao secretário que envie um relatório de um exame e também podem pedir uma cópia da receita dos remédios receitados em uma consulta. A qualquer momento deve-se poder fazer um relatório com todas as consultas por paciente e os medicamentos receitados na consulta, também deve-se poder fazer um relatório de todas as consultas que foram realizadas em um paciente. Exames e consultas têm preços de pagamento que podem ser pagos ao final do mês no formato de boleto ou pré-pagos antes da consulta em dinheiro ou cartão de crédito. Pacientes podem escolher aderir a um programa de fidelidade para receber descontos de 5% em exames e consultas, o critério de fidelidade é consultar ou marcar um exame pelo menos 3 vezes por ano. Os médicos com a maior quantidade de consultas ao final de cada ano recebem um prêmio da empresa com o título: “God Doctor: the good doctor”.

### 4.PROTOTIPAÇÃO, PERGUNTAS A SEREM RESPONDIDAS E TABELA DE DADOS<br>
#### 4.1 RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
<!--Neste ponto a codificação não e necessária, somente as ideias de telas devem ser criadas, o princípio aqui é pensar na criação da interface para identificar possíveis informações a serem armazenadas ou descartadas <br>-->

![Protótipo](https://github.com/brunocaxias/Template_Trab_BD1_2020/blob/ac09cadcf545cf506ab202f87bae5f0526e82cdc/TelaLoginPrototipacao.png?raw=true)
[Link do Protótipo no Figma](https://www.figma.com/proto/lOYiVAEGe42BUPwycpDP1I/Untitled?node-id=19%3A77&scaling=contain&page-id=0%3A1&starting-point-node-id=1%3A2&show-proto-sidebar=1)
#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
    a) O sistema proposto poderá fornecer quais tipos de relatórios e informaçes? 
    b) Crie uma lista com os 5 principais relatórios que poderão ser obtidos por meio do sistema proposto!
    
> A Empresa GotoDoc precisa inicialmente dos seguintes relatórios:
* Relatório que mostre todas os Clientes, retornando as consultas e/ou exames realizados, os profissionais que atenderam em cada procedimento.
* Relatório relativo a cada funcionário. Nesse relatório deve constar quais consultas e exames o funcionário realizou, quais medicamentos foram passados em cada procedimento.
* Relatório que liste todos os medicamentos disponíveis para um determinado paciente, retornando na linha da consulta, o nome do medicamento, seu princípio ativo e sua descrição. Retornar também o nome do paciente.
* Relatório que mostre informações gerais de uma consulta. Não deve excluir a possibilidade da relação entre consulta e exame, uma vez que, se consulta gera exame, esse deve conter na tabela, e caso não haja exame, o campo deve ser nulo. Sendo assim, a busca deve conter: id da consulta, data, hora e descrição, id do exame, tipo, data, hora, sintomas, além das informações completas do médico e/ou enfermeiro. 
* Relatório que apresente as receitas de uma consulta.
##### Observações: <br> a) perceba que este relatório pode conter receitas já prescrevidas em algum determinado momento, porém, para um paciente diferente, ou, em uma data diferente. <br>  b) Caso não haja receita, a relação pode contemplar um valor nulo, uma vez que, nenhum medicamento foi requisitado pelo médico para que o paciente possa fazer uso.


 
 
#### 4.3 TABELA DE DADOS DO SISTEMA:
    a) Esta tabela deve conter todos os atributos do sistema e um mínimo de 10 linhas/registros de dados.
    b) Esta tabela tem a intenção de simular um relatório com todos os dados que serão armazenados 
    
![Exemplo de Tabela de dados da Empresa GotoDoc]([https://github.com/brunocaxias/Trab_BD1_2022-2/blob/master/arquivos/Exemplo%20Tabela%20de%20Dados%20GotoDoc.xlsx](https://view.officeapps.live.com/op/view.aspx?src=https%3A%2F%2Fraw.githubusercontent.com%2Fbrunocaxias%2FTrab_BD1_2022-2%2Fmaster%2Farquivos%2FExemplo%2520Tabela%2520de%2520Dados%2520GotoDoc.xlsx&wdOrigin=BROWSELINK) "Tabela - Empresa GotoDoc")
    
    
### 5.MODELO CONCEITUAL<br>
<!--A) Utilizar a Notação adequada (Preferencialmente utilizar o BR Modelo 3)
    B) O mínimo de entidades do modelo conceitual pare este trabalho será igual a 3 e o Máximo 5.
        * informe quais são as 3 principais entidades do sistema em densenvolvimento<br>(se houverem mais de 3 entidades, pense na importância da entidade para o sistema)       
    C) Principais fluxos de informação/entidades do sistema (mínimo 3). <br>Dica: normalmente estes fluxos estão associados as tabelas que conterão maior quantidade de dados 
    D) Qualidade e Clareza
        Garantir que a semântica dos atributos seja clara no esquema (nomes coerentes com os dados).
        Criar o esquema de forma a garantir a redução de informação redundante, possibilidade de valores null, 
        e tuplas falsas (Aplicar os conceitos de normalização abordados).   -->
        
![Modelo Conceitual](https://github.com/brunocaxias/Trab_BD1_2022-2/blob/master/images/modelo-conceitual.png?raw=true)
    
    
        
    
#### 5.1 Validação do Modelo Conceitual
<!--[Grupo01]: [Nomes dos que participaram na avaliação]
[Grupo02]: [Nomes dos que participaram na avaliação]-->
Bruno Caxias<br>
João Vitor Maciel<br>
Marcos Vinicius Faria<br>
Vinicius Estevam

#### 5.2 Descrição dos dados 
<!--[objeto]: [descrição do objeto]

EXEMPLO:
CLIENTE: Tabela que armazena as informações relativas ao cliente<br>
CPF: campo que armazena o número de Cadastro de Pessoa Física para cada cliente da empresa.<br>-->

| Tabela | Descrição | Herança |
|:-------|:----------|:--------|
| PESSOA |Armazena as informações relativas a pessoa|   |
| CLIENTE |Armazena as informações relativas ao cliente| PESSOA |
| FUNCIONARIO |Armazena as informações relativas ao funcionário| PESSOA |
| MEDICO |Armazena as informações relativas ao médico| FUNCIONARIO |
| ENFERMEIRO |Armazena as informações relativas ao enfermeiro| FUNCIONARIO |
| CONSULTA |Armazena as informações relativas a consulta|   |
| EXAME |Armazena as informações relativas ao exame|   |
| MEDICAMENTO |Armazena as informações relativas ao medicamento|   |
| CONSULTA_MEDICAMENTO |Armazena as informações relativas aos medicamentos receitados na consulta|   |
| CONSULTA_EXAME |Armazena as informações relativas aos exames solicitados na consulta|   |


### 6	MODELO LÓGICO<br>
            
<!--
a) inclusão do esquema lógico do banco de dados
b) verificação de correspondencia com o modelo conceitual 
(não serão aceitos modelos que não estejam em conformidade)
-->
           
![Modelo Lógico](https://github.com/brunocaxias/Trab_BD1_2022-2/blob/master/images/modelo-logico.png?raw=true)

### 7	MODELO FÍSICO<br>
<!--a) inclusão das instruções de criacão das estruturas em SQL/DDL 
(criação de tabelas, alterações, etc..) 
-->
        
       
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
        a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físico
        (Drop para exclusão de tabelas + create definição de para tabelas e estruturas de dados + insert para dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL


### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>

># Marco de Entrega 01: Do item 1 até o item 9.1<br>

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    b) Criar no mínimo 3 consultas com operadores aritméticos 
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas

#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
    b) Criar uma consulta para cada tipo de função data apresentada.

#### 9.5	INSTRUÇÕES APLICANDO ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
    a) Criar minimo 3 de exclusão
    b) Criar minimo 3 de atualização

#### 9.6	CONSULTAS COM INNER JOIN E ORDER BY (Mínimo 6)<br>
    a) Uma junção que envolva todas as tabelas possuindo no mínimo 2 registros no resultado
    b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho

#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
    a) Criar minimo 2 envolvendo algum tipo de junção

#### 9.8	CONSULTAS COM LEFT, RIGHT E FULL JOIN (Mínimo 4)<br>
    a) Criar minimo 1 de cada tipo

#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join (caso não ocorra na base justificar e substituir por uma view)
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho

#### 9.10	SUBCONSULTAS (Mínimo 4)<br>
     a) Criar minimo 1 envolvendo GROUP BY
     b) Criar minimo 1 envolvendo algum tipo de junção

># Marco de Entrega 02: Do item 9.2 até o ítem 9.10<br>

### 10 RELATÓRIOS E GRÁFICOS

#### a) análises e resultados provenientes do banco de dados desenvolvido (usar modelo disponível)
#### b) link com exemplo de relatórios será disponiblizado pelo professor no AVA
#### OBS: Esta é uma atividade de grande relevância no contexto do trabalho. Mantenha o foco nos 5 principais relatórios/resultados visando obter o melhor resultado possível.

    

### 11	AJUSTES DA DOCUMENTAÇÃO, CRIAÇÃO DOS SLIDES E VÍDEO PARA APRESENTAÇAO FINAL <br>

#### a) Modelo (pecha kucha)<br>
#### b) Tempo de apresentação 6:40 

># Marco de Entrega 03: Itens 10 e 11<br>
<br>
<br>
<br> 



### 12 FORMATACAO NO GIT:<br> 
https://help.github.com/articles/basic-writing-and-formatting-syntax/
<comentario no git>
    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
    
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/
#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/

    
### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. <strong>Caso existam arquivos com conteúdos sigilosos<strong>, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário do git "profmoisesomena", para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://www.sis4.com/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")


