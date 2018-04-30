create database busca_correio_db;

use busca_correio_db;

create table estados(sigla varchar(2) primary key, nome varchar(255))engine=InnoDB default charset=utf8;
create table cidades(id bigint primary key auto_increment, nome varchar(200), cep_c varchar(10), sigla_uf varchar(2))engine=InnoDB default charset=utf8;
create table bairros(id bigint primary key auto_increment, nome varchar(200), cidade_id bigint)engine=InnoDB default charset=utf8;
create table logradouros(id bigint primary key auto_increment, descricao varchar(255), cep varchar(10), bairro_id bigint)engine=InnoDB default charset=utf8;

alter table estados modify nome varchar(255) not null unique;

alter table cidades modify nome varchar(255) not null;
alter table cidades modify cep_c varchar(10) unique;
alter table cidades modify sigla_uf varchar(2) not null;
alter table cidades add constraint fk_sigla_uf foreign key (sigla_uf) references estados(sigla);

alter table bairros modify nome varchar(255) not null;
alter table bairros modify cidade_id bigint not null;
alter table bairros add constraint fk_cidade_id foreign key (cidade_id) references cidades(id);

alter table logradouros modify descricao varchar(255) not null;
alter table logradouros modify cep varchar(10) not null unique;
alter table logradouros modify bairro_id bigint not null;
alter table logradouros add constraint fk_bairro_id foreign key (bairro_id) references bairros(id);