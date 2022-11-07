create database banquinha

use banquinha


create table cargo (
	Id_Cargo int primary key,
	Nome varchar(255),
	Descricao varchar(255),
	Salario decimal
)

create table funcionarios (
	id int identity primary key not null,
	Nome varchar(255) not null,
	telefone varchar(255) not null,
	endereco varchar(255) not null,
	CPF varchar(50),
	Email varchar(255),
	Id_Cargo int,
	constraint fk_FunCargo foreign key (Id_Cargo) references cargo (Id_Cargo)
)

create table cliente (
	id int identity primary key not null,
	Nome varchar(255) not null,
	Telefone varchar(255) null,
	Endereco varchar(255),
	Email varchar(255)
)


create table fornecedor(
	Id_Fornecedor int primary key,
	Nome varchar(255) not null,
	CNPJ varchar(255) not null,
	Telefone varchar(255) not null,
	Endereco varchar(255) not null
 )

create table Produtos(
	id int identity primary key not null,
	Nome_prod varchar(255) not null,
	Id_fornecedor int not null,
	valor decimal not null,
	QtdEstoque int not null
	constraint fk_ProdFornecedor foreign key (Id_fornecedor) references fornecedor (Id_Fornecedor)
)

create table venda(
	id int identity primary key,
	produto varchar(255) not null,
	local_ varchar(255) not null,
	DataVenda datetime not null,
	QtdVenda int not null
)


insert cargo values 
(1,'Vendedor','Realiza atendimento direto ao consumidor',1212.00),
(2,'Gerente','Controle de estoque e financas',5000.00),
(3,'RH','Estratégias de recrutamento e seleção',2200.00),

 insert funcionarios values 
('Pedro da Silva','41 994587632','Santa Maria, Rua Clara 173','152.263.478-58','pedro.silva@gmail.com',1),
('Maria Moura','41 992547689','Balneario, Rua Drumont 659','157.021.504-30','maria.moura@gmail.com',2),
('Luisa Santos','41 995874632','Sergipe, Rua das Graças 965','802.360.789-22','Luisa.Santos@gmail.com',3)


insert cliente values 
('Ruan Andrade','41 996582143',''),
('Roberto carlos','41 984572106'),
('Maria Moreira','41 912036540'),
('Jana luisa Silva','41 954586212')

insert fornecedor values
(1,'Doce&Cia','12.548.796/3254-87','41 987546985','Boqueirão, Rua das Flores 125'),
(2,'SweetCandy','78.459.654/5571-26','41 965852012','Santa Rita, linha verde 203'),
(3,'Sugar','32.105.647/8910-05','41 980213652','Fazendinha, rua pessegueiro 405')

insert Produtos values
('Balas',1,0.20,10000),
('Pirulitos',2,1.00,4000),
('BomBom',3,2.00,3000),
('Salgadinhos',1,5.00,120),
('Rapadura',3,1.50,500)

select * from cargo
select * from funcionarios
select * from Produtos
select * from cliente
select * from fornecedor
