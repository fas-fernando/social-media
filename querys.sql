CREATE DATABASE twitter_clone;

USE twitter_clone;

CREATE TABLE usuarios(
	id int not null primary key AUTO_INCREMENT,
	nome varchar(100) not null,
	email varchar(150) not null,
	senha varchar(32) not null
);

CREATE TABLE tweets(
	id int not null PRIMARY KEY AUTO_INCREMENT,
	id_usuario int not null,
	tweet varchar(140) not null,
	data datetime default current_timestamp
);

CREATE TABLE usuarios_seguidores(
	id int not null primary key auto_increment,
	id_usuario int not null,
	id_usuario_seguindo int not null
);