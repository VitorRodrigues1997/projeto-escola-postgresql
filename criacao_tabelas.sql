create table aluno (
	id serial primary key,
	nome varchar(100) not null,
	idade integer
);

create table curso (
	id serial primary key,
	nome varchar(100) not null,
	valor numeric(10,2)
);

create table aluno_curso (
	aluno_id integer,
	curso_id integer,

	primary key (aluno_id, curso_id),

	foreign key (aluno_id)
		references aluno(id)
		on delete cascade
		on update cascade,

	foreign key (curso_id)
		references curso(id)
		on delete restrict
);