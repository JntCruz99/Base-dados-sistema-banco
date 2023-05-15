create DATABASE sistema_bancario;
use sistema_bancario;
create table tb_banco (

    codigo int,

    nome varchar (100) not null,

    PRIMARY KEY (codigo));
create table tb_agencia (

    cod_banco int,

    numero_agencia int,

    Endereco varchar (180),

    PRIMARY KEY (numero_agencia),
   
FOREIGN key (cod_banco) REFERENCES tb_banco(codigo));

create table tb_cliente  (

    cpf varchar (100),

    nome varchar (100),
    
    sexo char(1) not null,
    
    endereco varchar (180),

    PRIMARY KEY (cpf));
   
create table tb_conta (

    numero_conta int,

    saldo decimal (8,2),
   
    tipo_conta varchar(20),
   
    num_agencia int,

    PRIMARY KEY (numero_conta),
    FOREIGN key (num_agencia) REFERENCES tb_agencia(numero_agencia));
   
create table tb_historico (

    cpf_cliente varchar (100),

    num_conta int,
   
    data_inicio date,

    FOREIGN KEY (num_conta) REFERENCES tb_conta(numero_conta),
    FOREIGN key (cpf_cliente) REFERENCES tb_cliente(cpf));
   
create table tb_telefone_cliente (

    cpf_cli varchar (100),
   
    telefone varchar(15) primary key,

    FOREIGN key (cpf_cli) REFERENCES tb_cliente(cpf));
   
insert into tb_banco (codigo, nome) VALUES (1, 'Banco do Brasil');
insert into tb_banco (codigo, nome) VALUES (2, 'CEF');
insert into tb_banco (codigo, nome) VALUES (4, 'Caixa');

insert into tb_agencia (cod_banco,numero_agencia, endereco) 
VALUES (4,322, 'Av. Walfredo Macedo Brandao, 1139');
insert into tb_agencia (Cod_banco,Numero_agencia, Endereco) 
VALUES (1,1253, 'R. Bancário Sérgio Guerra, 17');

insert into tb_cliente (Cpf, Nome, Sexo, endereco) 
VALUES ('11122233344' , 'Bruna Andrade','F' ,'Rua José Firmino Ferreira, 1050');
insert into tb_cliente (Cpf, Nome, Sexo, endereco) 
VALUES ('66677788899', 'Radegondes Silva','M' ,'Av. Epitácio Pessoa, 1008');
insert into tb_cliente (Cpf, Nome, Sexo, endereco) 
VALUES ('55544477733', 'Miguel Xavier','M' ,'Rua Bancário Sérgio Guerra, 640');

insert into tb_conta (numero_conta, Saldo, Tipo_conta, Num_agencia) 
VALUES (11765-2, 22.745, 2 ,322);
insert into tb_conta (numero_conta, Saldo, Tipo_conta, Num_agencia) 
VALUES (21010-7, 3.100, 1 ,1253);

insert into tb_historico (cpf_cliente, num_conta, data_inicio) 
VALUES ('11122233344', 117652, '22-12-2015');
insert into tb_historico (cpf_cliente, num_conta, data_inicio) 
VALUES ('66677788899', 11765-2, '05-10-2016');
insert into tb_historico (cpf_cliente, num_conta, data_inicio) 
VALUES ('55544477733', 21010-7, '29-08-2012');

insert into tb_telefone_cliente (cpf_cli, telefone) 
VALUES ('11122233344', '(83)3222-1234');
insert into tb_telefone_cliente (cpf_cli, telefone) 
VALUES ('66677788899', '(83)99443-9999');
insert into tb_telefone_cliente (cpf_cli, telefone) 
VALUES ('66677788899', '(83)3233-2267');

