create database Aula2;

use Aula2;

create table Autor (
id int primary key auto_increment,
nome varchar(250) not null
);

insert into autor(nome) value("Tais");

select * from Autor;


create table livro (
isbn decimal(13) primary key not null,
ano smallint unique,
titulo varchar(200) not null,
id_Autor int not null,
constraint AutorLivro
foreign key ( id_Autor) references Autor (id)
on update cascade
on delete restrict 
);

insert into livro (isbn, titulo, ano, id_Autor)
values ("124578245", "Nome Livro", 2024, 1),
("45872158", "livro2", 1875, 1);

select*from livro;

create table Pessoas(
id int primary key auto_increment,
cpf decimal(11) unique not null,
nome varchar(200) not null,
data_de_nascimento date not null,
saldo decimal(9,2) default 0.0
);

insert into Pessoas (cpf, nome, data_de_nascimento)
value("12345678901", "Tais", "1996-12-01");

create  table Emprestimo(
id int primary key auto_increment,
data_de_emprestimo timestamp not null default current_timestamp,
data_de_devolucao timestamp ,
id_Livro decimal(13) not null,
id_Pessoas int not null,
foreign key (id_Livro) references Livro (isbn),
foreign key (id_Pessoas) references Pessoas (id)
);

insert into Emprestimo(id_livro, id_Pessoas)
values ("45872158",1);

select* from emprestimo;