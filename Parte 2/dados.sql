insert into receitas(id_receita,nome_remedio,quantidade_remedio,hora_remedio,tipo_remedio,medico_receitas)
values(1,"pedro",10,10-20-05,"tarja branca",1);


alter table receitas add foreign key (medico_receitas)
references medicos(id_medico);

alter table consultas add foreign key (medico_consulta)
references medicos(id_medico);

alter table consultas add foreign key (consulta_paciente)
references pacientes(id_paciente);

alter table receitas add foreign key (receita_paciente)
references pacientes(id_paciente);

alter table convenios add foreign key (convenio_paciente)
references pacientes(id_paciente);

alter table quarto add foreign key (quarto_paciente)
references pacientes(id_paciente);

alter table internaçao add foreign key (internaçao_paciente)
references pacientes(id_paciente);

alter table enfermeiro add foreign key (enfermeiro_paciente)
references pacientes(id_paciente);

alter table tipoquarto add foreign key (tipo_quarto)
references quarto(id_quarto);

select*from pacientes;

insert into pacientes(id_paciente,nome_paciente,endereço_paciente,datanascimento_paciente,cpf_paciente,email_paciente,consulta_paciente,receita_paciente,conevenio_paciente,quarto_paciente,internaçao_paciente,enfermeiro_paciente)
values(1,"Pedro","rua misteriosa",'04-01-02',411474148,"pedro@email.com",1,1,1,1,1,1);
