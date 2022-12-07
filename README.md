# Diagrama de um Hospital (Parte 1)
## Estudo de banco de dados
 
<img src="https://lh3.googleusercontent.com/6xCJKaG6VAs-rJWeucbXCna7Fg9cmGuIIMA_D3C2_Oq642iqr2MR2TJizq_RC4fMCJ84srnR9qEbs6jwvG2maujYKBDx1m0uoRSA5RUWhn4lqAdK4tf5-kQ19-RrnN93mOQ9mFkGP6RNT0FXiRDR_9-ilY-8AnM1fCMOxf53FJylKDYdyJx4IYXoQYwScus8g2raLrfbSf2XKFOGW67HBeA5nIy9R3CsCgTJkI07sIjZZJ_eUjGb-BsZYR0f8FRQ0FribioG-X0o3dy4vYJ8oqJ1sUBwGOv721wHQQB0NmF7-NztMva82DkfEgnnzHE8y9uuAYx0w_S0PwlFwseW0vTn_Rh4cbzSYl75fCRmSwVnsaNla0eQfp58091VyzKY2RIQ6KkkT7SXHmIp411aLuJd4JchEpJCh1U5Zk4uciUO7lUNqlrVivhNgFPG9cbl4UjJUNTOc83O91gwFC-_u9B71Nc03A-seLCmVDGOxA-lrp0J7vEewLr9nFvuaftHN6pGIfXIHLQ7mFYAoEGiVzwfHLUB0f0IqHah6OEY1k9TgYRKRViTRtwqvnu35XXZKXhkDpfow7fdzmvSniRDT1498cwI1KVkZUAPI8mVokN41B7uXIlAh5hB1I-fAM4eMskTGO4p-lHiSI2xIi3HTyAjMAMkW15jbBAHzWOTMU6osaRTDjVX0N6w6DKLnECYyYLr960VYOOQwdXhbOJUKSVEHaydvD7XtSr42EsbaMXPM2AxG1L2riaMV_E_Lsr96NkmjeASVA_yMYHGD6X2KxdVpTDqOa5Ow8wbnQcNA6viZum_qawbjmARaFdKfOEBq815JfUE9uinBa_J-QbQlnIWiAJxw2cK-odhnf0ySv3QCPYO1zaMotHL47L6w8u6Zu_m0W0tPkflqU3zqu_pFief0QJVHb-jGAWobQsPcYUM=w1022-h444-no?authuser=0">

### Proposta

Analise a seguinte descrição e extraia dela os requisitos para o banco de dados:
O hospital necessita de um sistema para sua área clínica que ajude a controlar consultas realizadas. Os médicos podem ser generalistas, especialistas ou residentes e têm seus dados pessoais cadastrados em planilhas digitais. Cada médico pode ter uma ou mais especialidades, que podem ser pediatria, clínica geral, gastroenterologia e dermatologia. Alguns registros antigos ainda estão em formulário de papel, mas será necessário incluir esses dados no novo sistema.

Os pacientes também precisam de cadastro, contendo dados pessoais (nome, data de nascimento, endereço, telefone e e-mail), documentos (CPF e RG) e convênio. Para cada convênio, são registrados nome, CNPJ e tempo de carência.

As consultas também têm sido registradas em planilhas, com data e hora de realização, médico responsável, paciente, valor da consulta ou nome do convênio, com o número da carteira. Também é necessário indicar na consulta qual a especialidade buscada pelo paciente.

Deseja-se ainda informatizar a receita do médico, de maneira que, no encerramento da consulta, ele possa registrar os medicamentos receitados, a quantidade e as instruções de uso. A partir disso, espera-se que o sistema imprima um relatório da receita ao paciente ou permita sua visualização via internet.

# Os Segredos do Hospital (Parte 2)

## Entender do assunto
Considere a seguinte descrição e o diagrama ER abaixo:

No hospital, as internações têm sido registradas por meio de formulários eletrônicos que gravam os dados em arquivos. 

Para cada internação, são anotadas a data de entrada, a data prevista de alta e a data efetiva de alta, além da descrição textual dos procedimentos a serem realizados. 

As internações precisam ser vinculadas a quartos, com a numeração e o tipo. 

Cada tipo de quarto tem sua descrição e o seu valor diário (a princípio, o hospital trabalha com apartamentos, quartos duplos e enfermaria).

Também é necessário controlar quais profissionais de enfermaria estarão responsáveis por acompanhar o paciente durante sua internação. Para cada enfermeiro(a), é necessário nome, CPF e registro no conselho de enfermagem (CRE).

A internação, obviamente, é vinculada a um paciente – que pode se internar mais de uma vez no hospital – e a um único médico responsável.

## Mãos a obra?
Faça a ligação do diagrama acima ao diagrama desenvolvido na atividade antrior, construindo relacionamentos com entidades relacionadas. E eleve o seu diagrama para que já selecionando os tipos de dados que serão trabalhados e em quais situações. 

Por último, crie um script SQL para a geração do banco de dados e para instruções de montagem de cada uma das entidades/tabelas presentes no diagrama completo (considerando as entidades do diagrama da atividade anterior e as novas entidades propostas no diagrama acima). Também crie tabelas para relacionamentos quando necessário. Aplique colunas e chaves primárias e estrangeiras.
Use ferramentas, como ERPlus, Lucidchart, draw.io (via web) e MySQL Workbench, ou mesmo um editor de imagens para o diagrama.  Você pode utilizar o MySQL Workbench ou o DBdiagram.io para montar os scripts SQL.

Importante: desse modelo já vamos para a etapa lógica da nossa modelagem!

<a href="https://github.com/imFreitas/Hospital-Fundamental-/blob/main/Parte%202/hospital.sql">Ver modelo fisico</a>
