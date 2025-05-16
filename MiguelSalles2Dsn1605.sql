Create database Livraria;
use Livraria;
Create table Livros (
Cod_livro int auto_increment,
Nome_livro varchar (50),
Nome_autor varchar (50),
Editora varchar (30),
Ano_livro int,
Paginas int,
Preço decimal (10,2),
primary key (Cod_livro)
);

desc Livros; -- Exibindo a estrutura da tabela criada.

insert into Livros (Nome_livro,Nome_autor,Editora,Ano_livro,Paginas,Preço) -- Inserindo I=informações
value 	('Informatica Para Concursos Públicos','André Guesse','Unicamp',2013,416,60.00),
		('Cidades de Papel','John Green','Intrínseca',2013,368,22.90),
		('Sonhos Lúcidos','Florinda Donner','Nova Era',2009,410,48.00),
		('A Quinta Testemunha','Michael Connelly','Suma das Letras',2013,424,31.90),
		('Programação Java para a Web','Alexandre Altair de Melo','Novatec',2010,640,64.80),
		('Use a Cabeça! c#','Andrew Stellamn','Alta Books',2011,738,103.70),
		('Algoritimos','Thomas H. Cormen','Campus',2012,944,220.92),
		('As Últimas quatro coisas','Paul Hoffman','Suma das Letras',2004,304,32.90),
		('Custos','Moacyr de Lima e Silva','Érica',2010,240,97.00),
		('Vida Secas','Graciliano Ramos','Record',2003,176,27.00),
		('Engenharia de Rede de Computadores','Marcelo Sampaio de Alencar','Érica',2012,288,89.60),
		('PHP para quem conhece PHP','Juliano Niederquer','Novatec',2008,528,63.30);	

select*from Livros; -- Exibindo a tabela com todas as informações inseridas


alter table Livros -- Inserindo o campo Gênero após o campo Páginas
add Gênero varchar (30) after Paginas;

update Livros set Gênero='Concurso Público' where Cod_livro=1; -- Atualizando a tabela no campo Gênero
update Livros set Gênero='Drama' where Cod_livro=2;
update Livros set Gênero='Romance' where Cod_livro=3;
update Livros set Gênero='Terror' where Cod_livro=4;
update Livros set Gênero='Informática' where Cod_livro=5;
update Livros set Gênero='Informática' where Cod_livro=6;
update Livros set Gênero='Informática' where Cod_livro=7;
update Livros set Gênero='Logística' where Cod_livro=8;
update Livros set Gênero='Administração' where Cod_livro=9;
update Livros set Gênero='Literatura' where Cod_livro=10;
update Livros set Gênero='Redes de Computadores' where Cod_livro=11;
update Livros set Gênero='Informática' where Cod_livro=12;

select * from livros;

select count(*) from livros where Editora = "Èrica";

select sum(Preço) from livros;

select sum(Preço) from livros where Editora = "Novatec";

select avg (Preço) from livros as mediaPreço;

select avg (Gênero) from livros as mediaGenero;

select min (Preço) from livros as minimoPreço;

select max (Preço) from livros as maximoPreço;

select Editora,count(*) from livros group by Editora;

select Editora,sum(Preço) from livros group by Editora;