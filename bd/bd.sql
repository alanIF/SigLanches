create database sig_lanches;
use sig_lanches;
create table usuario(
	id int auto_increment not null,
	nome varchar(200) not null,
	email varchar(200) not null,
	senha varchar(200) not null,
	tipo int not null,
	primary key(id)
);

create table produto(
	id int auto_increment not null,
	descricao text not null,
	tipo text not null,
	preco float,
	primary key(id)
); 


create table pedido(
	id int auto_increment not null,
	id_usuario int not null,
	status_pedido text not null,
	endereco_entrega text not null,
	data_pedido text not null,
	primary key(id),
	foreign key(id_usuario) references usuario(id)
);

create table item_pedido(
	id int auto_increment not null,
	id_produto int not null,
	id_pedido int not null,
	qtd int not null,
	primary key(id),
	foreign key(id_produto) references produto(id),
	foreign key(id_pedido) references pedido(id)
);


