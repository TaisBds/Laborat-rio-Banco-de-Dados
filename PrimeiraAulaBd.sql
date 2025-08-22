create database aula0;

use aula0;

create table Pessoa(
id int primary key auto_increment,
cpf varchar(15) not null,
nome varchar(100) not null,
data_nascimento date not null,
saldo float not null default 0.0
);

insert into Pessoa (cpf, nome, data_nascimento)
values('123-458-758-25', 'Tais', '1996-12-01'),
('125-578-658-25', 'yasmin', '2006-04-08');

select id, cpf, nome, data_nascimento, saldo
from pessoa;

insert into Pessoa (cpf, nome, data_nascimento, saldo)
values('123-458-758-28', 'Jefersson', '1998-08-17', 10000);


create table Autor(
id int primary key auto_increment,
nome varchar(150) not null
);

insert into Autor(nome)
values('Tais'),('yasmin');

select*from Autor;

create table Livro(
isbn varchar(13) primary key,
titulo varchar (100) not null,
ano int,
Autorid int not null,
constraint autorid_fk
foreign key (Autorid) references Autor(id)
on update cascade
on delete restrict 
);

insert into Livro(isbn, titulo, Autorid)
values ('125487955', ' não sei', 1),
('54878555', '100 dias de codigos', 2);

select * from livro;



