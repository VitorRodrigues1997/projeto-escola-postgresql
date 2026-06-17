select * from aluno;

select * from curso;

select * from aluno_curso;

select
    aluno.nome,
    curso.nome
from aluno
join aluno_curso
    on aluno.id = aluno_curso.aluno_id
join curso
    on curso.id = aluno_curso.curso_id;

select *
from aluno
where nome = 'Vitor';

select *
from aluno
where idade > 20;

select *
from aluno
where nome like 'V%';

select *
from aluno
where nome like '%a';

select *
from aluno
order by idade desc;

select *
from aluno
order by idade asc;

select count(*)
from aluno;

select
    curso.nome,
    count(aluno.id)
from curso
join aluno_curso
    on curso.id = aluno_curso.curso_id
join aluno
    on aluno.id = aluno_curso.aluno_id
group by curso.nome;

select
    curso.nome,
    count(aluno.id)
from curso
join aluno_curso
    on curso.id = aluno_curso.curso_id
join aluno
    on aluno.id = aluno_curso.aluno_id
group by curso.nome
having count(aluno.id) > 1;