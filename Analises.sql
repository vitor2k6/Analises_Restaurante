create database if not exists Restaurante;

use Restaurante;

create table if not exists funcionarios(
id_funcionario int auto_increment primary key,
nome varchar(255) not null,
cpf varchar(14),
data_nascimento date,
endereço varchar(255),
telefone varchar(15),
email varchar(100),
unique (email),
cargo varchar(100),
salário decimal(10,2),
data_admissão date
);

create table if not exists clientes(
id_cliente int auto_increment primary key,
nome varchar(255) not null,
cpf varchar(14),
data_nascimento date,
endereço varchar(255),
telefone varchar(15),
email varchar(100),
unique (email),
data_cadastro date
);

create table if not exists produtos(
id_produto int auto_increment primary key,
nome varchar(255) not null,
descrição text,
preço decimal(10,2),
categoria varchar(100)
);

create table if not exists pedidos(
id_pedido int auto_increment primary key,
id_cliente int,
id_funcionario int,
id_produto int,
quantidade int,
data_pedido date,
status_pedido varchar(50),
constraint fk_clientes
	foreign key (id_cliente)
	references clientes(id_cliente),
constraint fk_funcionarios
	foreign key (id_funcionario)
	references funcionarios(id_funcionario),
constraint fk_produtos
	foreign key (id_produto)
	references produtos(id_produto)
);

create table if not exists info_produtos(
id_info int auto_increment primary key,
id_produto int,
ingredientes text,
fornecedor varchar(255),
constraint fk_info_produtos
	foreign key (id_produto)
	references produtos(id_produto)
);

select * from funcionarios;

INSERT INTO funcionarios (nome, cpf, data_nascimento, endereço, telefone, email, cargo, salário, data_admissão) VALUES ('Ricardo Sousa', '111.222.333-44', '1992-05-12', 'Rua Harmonia 157, São Paulo', '11987651234', 'ricardo.sousa@email.com', 'Chefe de Cozinha', 6000.00, '2019-03-15'),('Lívia Castro', '222.333.444-55', '1989-11-25', 'Av. Rebouças 1234, São Paulo', '11987653421', 'livia.castro@email.com', 'Subgerente', 5500.00, '2019-06-20'),
('Marcos Lima', '333.444.555-66', '1985-04-17', 'Rua Augusta 2020, São Paulo', '11987655678', 'marcos.lima@email.com', 'Barman', 2800.00, '2020-01-10'),
('Carla Mendes', '444.555.666-77', '1993-07-03', 'Av. Paulista 1853, São Paulo', '11987659876', 'carla.mendes@email.com', 'Atendente', 2600.00, '2020-07-15'),
('Tiago Nunes', '555.666.777-88', '1978-08-12', 'Rua Funchal 500, São Paulo', '11987656789', 'tiago.nunes@email.com', 'Sommelier', 3400.00, '2021-04-22'),
('Cláudia Vieira', '666.777.888-99', '1981-01-19', 'Alameda Lorena 1300, São Paulo', '11987657890', 'claudia.vieira@email.com', 'Cozinheira', 3200.00, '2021-08-30'),
('Pedro Martins', '777.888.999-00', '1983-12-05', 'Rua dos Pinheiros 800, São Paulo', '11987658901', 'pedro.martins@email.com', 'Garçom', 2700.00, '2022-03-15'),
('Fernanda Rocha', '888.999.000-11', '1990-09-27', 'Av. Faria Lima 1500, São Paulo', '11987659012', 'fernanda.rocha@email.com', 'Garçonete', 2700.00, '2022-05-20'),
('André Costa', '999.000.111-22', '1986-03-14', 'Rua Bela Cintra 985, São Paulo', '11987660123', 'andre.costa@email.com', 'Gerente', 4700.00, '2022-10-10'),
('Sofia Alves', '000.111.222-33', '1995-06-01', 'Rua Consolação 1235, São Paulo', '11987661234', 'sofia.alves@email.com', 'Recepcionista', 2400.00, '2023-01-01');
    
select * from clientes;

insert into clientes (nome, cpf, data_nascimento, endereço, telefone, email, data_cadastro) values ('Lucas Silva', '123.456.789-01', '1990-01-15', 'Av. Brigadeiro Faria Lima, 1571, São Paulo', '11987651234', 'lucas.silva@email.com', '2023-01-12'),
('Ana Paula', '234.567.890-12', '1985-03-22', 'Rua Oscar Freire, 1290, São Paulo', '11987652345', 'ana.paula@email.com', '2023-01-12'),
('Rafael Costa', '345.678.901-23', '1992-07-18', 'Av. Paulista, 1844, São Paulo', '11987653456', 'rafael.costa@email.com', '2023-01-12'),
('Camila Rodrigues', '456.789.012-34', '1988-05-24', 'Rua Augusta, 2530, São Paulo', '11987654567', 'camila.rodrigues@email.com', '2023-01-12'),
('Eduardo Santos', '567.890.123-45', '1975-11-30', 'Alameda Santos, 980, São Paulo', '11987655678', 'eduardo.santos@email.com', '2023-01-12'),
('Fernanda Lima', '678.901.234-56', '1994-04-15', 'Rua da Consolação, 2000, São Paulo', '11987656789', 'fernanda.lima@email.com', '2023-01-12'),
('Gustavo Pereira', '789.012.345-67', '1982-02-28', 'Av. Rebouças, 3001, São Paulo', '11987657890', 'gustavo.pereira@email.com', '2023-01-12'),
('Juliana Machado', '890.123.456-78', '1996-09-14', 'Av. Brasil, 1620, São Paulo', '11987658901', 'juliana.machado@email.com', '2023-01-12'),
('Marcos Ribeiro', '901.234.567-89', '1991-12-12', 'Rua Bela Cintra, 1225, São Paulo', '11987659012', 'marcos.ribeiro@email.com', '2023-01-12'),
('Patricia Almeida', '912.345.678-90', '1987-06-19', 'Rua Haddock Lobo, 1327, São Paulo', '11987660123', 'patricia.almeida@email.com', '2023-01-12'),
('Roberto Nunes', '923.456.789-01', '1979-03-21', 'Av. Nove de Julho, 2045, São Paulo', '11987661234', 'roberto.nunes@email.com', '2023-01-12'),
('Sandra Gomes', '934.567.890-12', '1984-08-10', 'Rua Pamplona, 1453, São Paulo', '11987662345', 'sandra.gomes@email.com', '2023-01-12'),
('Tiago Souza', '945.678.901-23', '1989-01-15', 'Av. Europa, 784, São Paulo', '11987663456', 'tiago.souza@email.com', '2023-01-12'),
('Vanessa Moraes', '956.789.012-34', '1974-10-23', 'Rua Amauri, 350, São Paulo', '11987664567', 'vanessa.moraes@email.com', '2023-01-12'),
('Daniel Oliveira', '967.890.123-45', '1993-12-11', 'Rua dos Pinheiros, 900, São Paulo', '11987665678', 'daniel.oliveira@email.com', '2023-01-12'),
('Maria Clara', '978.901.234-56', '1998-03-05', 'Av. Ibirapuera, 3103, São Paulo', '11987666789', 'maria.clara@email.com', '2023-01-12'),
('João Pedro', '989.012.345-67', '1981-05-27', 'Rua Tabapuã, 1123, São Paulo', '11987667890', 'joao.pedro@email.com', '2023-01-12'),
('Larissa Fonseca', '991.123.456-78', '1986-11-09', 'Av. Cidade Jardim, 400, São Paulo', '11987668901', 'larissa.fonseca@email.com', '2023-01-12'),
('Henrique Silva', '992.234.567-89', '1990-02-14', 'Av. São Gabriel, 477, São Paulo', '11987669012', 'henrique.silva@email.com', '2023-01-12'),
('Isabela Freitas', '993.345.678-90', '1994-07-20', 'Rua Veneza, 1000, São Paulo', '11987670123', 'isabela.freitas@email.com', '2023-01-12'),
('Giovanna Rocha', '994.456.789-01', '1987-12-01', 'Rua Artur Azevedo, 1767, São Paulo', '11987671234', 'giovanna.rocha@email.com', '2023-01-12'),
('Leonardo Alves', '995.567.890-12', '1988-01-22', 'Rua Joaquim Antunes, 760, São Paulo', '11987672345', 'leonardo.alves@email.com', '2023-01-12'),
('Beatriz Santos', '996.678.901-23', '1976-06-16', 'Av. Santo Amaro, 1230, São Paulo', '11987673456', 'beatriz.santos@email.com', '2023-01-12'),
('Carlos Eduardo', '997.789.012-34', '1972-04-04', 'Rua Estados Unidos, 1457, São Paulo', '11987674567', 'carlos.eduardo@email.com', '2023-01-12'),
('Fábio Lopes', '998.890.123-45', '1989-08-12', 'Av. das Nações Unidas, 1889, São Paulo', '11987675678', 'fabio.lopes@email.com', '2023-01-12'),
('Tatiane Costa', '999.901.234-56', '1995-10-30', 'Rua Guarará, 532, São Paulo', '11987676789', 'tatiane.costa@email.com', '2023-01-12'),
('Ricardo Mendonça', '991.012.345-67', '1980-03-17', 'Rua Pedroso Alvarenga, 1100, São Paulo', '11987677890', 'ricardo.mendonca@email.com', '2023-01-12'),
('Elisa Carvalho', '992.123.456-78', '1997-05-25', 'Av. Roque Petroni Júnior, 1089, São Paulo', '11987678901', 'elisa.carvalho@email.com', '2023-01-12'),
('Flávio Barros', '993.234.567-89', '1985-09-19', 'Rua Gomes de Carvalho, 1356, São Paulo', '11987679012', 'flavio.barros@email.com', '2023-01-12'),
('Priscila Ribeiro', '994.345.678-90', '1983-07-28', 'Rua Bandeira Paulista, 982, São Paulo', '11987680123', 'priscila.ribeiro@email.com', '2023-01-12');

select * from produtos;

insert into produtos (nome, descrição, preço, categoria) values ('Feijoada', 'Feijoada completa com arroz, farofa, couve e laranja.', 29.90, 'Prato Principal'),
('Picanha na Chapa', 'Picanha fatiada servida com alho, arroz, farofa e vinagrete.', 42.00, 'Prato Principal'),
('Moqueca Baiana', 'Moqueca de peixe e camarão, acompanhada de arroz branco e pirão.', 37.50, 'Prato Principal'),
('Bobó de Camarão', 'Camarão cozido em creme de mandioca e azeite de dendê, servido com arroz.', 45.00, 'Prato Principal'),
('Bacalhau à Brás', 'Bacalhau desfiado, preparado com batata palha, ovos e cebola.', 38.00, 'Prato Principal'),
('Coxinha de Frango', 'Massa de batata com recheio cremoso de frango, servida frita.', 6.50, 'Aperitivo'),
('Pastel de Carne', 'Pastel frito com recheio de carne moída temperada.', 5.00, 'Aperitivo'),
('Pastel de Queijo', 'Pastel frito com recheio de queijo derretido.', 5.00, 'Aperitivo'),
('Empada de Palmito', 'Empada de massa podre recheada com creme de palmito.', 6.00, 'Aperitivo'),
('Risoto de Camarão', 'Risoto de camarão com toque de limão siciliano e alho-poró.', 36.00, 'Prato Principal'),
('Escondidinho de Carne Seca', 'Purê de mandioca com recheio de carne seca e queijo coalho.', 32.00, 'Prato Principal'),
('Salada Caprese', 'Tomate, muçarela de búfala e manjericão, com azeite e vinagre balsâmico.', 22.00, 'Entrada'),
('Polenta Mole com Ragú de Linguiça', 'Polenta cremosa servida com ragú de linguiça e molho de tomate.', 28.00, 'Prato Principal'),
('Frango à Parmegiana', 'Peito de frango empanado coberto com queijo e molho de tomate, servido com arroz e fritas.', 35.00, 'Prato Principal'),
('Salmão Grelhado', 'Salmão grelhado servido com legumes no vapor e molho de alcaparras.', 42.00, 'Prato Principal'),
('Caipirinha de Limão', 'Tradicional caipirinha brasileira feita com cachaça, limão e açúcar.', 15.00, 'Bebida'),
('Suco de Maracujá', 'Suco natural de maracujá.', 8.00, 'Bebida'),
('Chopp Gelado', 'Chopp claro, servido bem gelado.', 7.50, 'Bebida'),
('Mousse de Maracujá', 'Sobremesa leve e refrescante à base de maracujá.', 12.00, 'Sobremesa'),
('Pudim de Leite', 'Pudim de leite condensado com calda de caramelo.', 10.00, 'Sobremesa');

select * from info_produtos;

insert into info_produtos (id_produto, ingredientes, fornecedor) values (1, 'Feijão preto, carne seca, costelinha, linguiça, arroz, farinha, couve, laranja', 'Distribuidora Central'),
(2, 'Picanha, alho, arroz, farofa, vinagrete', 'Carnes Boi Nobre'),
(3, 'Peixe, camarão, leite de coco, azeite de dendê, arroz, farinha', 'Mar & Terra Distribuidora'),
(4, 'Camarão, mandioca, leite de coco, azeite de dendê, arroz', 'Mar & Terra Distribuidora'),
(5, 'Bacalhau, batata, ovo, cebola, azeite', 'Importadora Lisboa'),
(6, 'Frango, batata, massa de trigo', 'Avícola São José'),
(7, 'Carne moída, massa de trigo', 'Carnes Boi Nobre'),
(8, 'Queijo, massa de trigo', 'Laticínios Vale do Sereno'),
(9, 'Palmito, massa de trigo, creme de leite', 'Conservas Sabor da Terra'),
(10, 'Camarão, arroz arbóreo, limão siciliano, alho-poró', 'Mar & Terra Distribuidora'),
(11, 'Carne seca, mandioca, queijo coalho', 'Carnes Boi Nobre e Laticínios Vale do Sereno'),
(12, 'Tomate, muçarela de búfala, manjericão', 'Queijaria Bela Vista e Horta Santa Luzia'),
(13, 'Linguiça, polenta, molho de tomate', 'Carnes Boi Nobre e Moinho Dourado'),
(14, 'Frango, queijo, molho de tomate, arroz, batata', 'Avícola São José e Laticínios Vale do Sereno'),
(15, 'Salmão, legumes, alcaparras', 'Pescados do Norte e Hortifruti Natural da Terra'),
(16, 'Cachaça, limão, açúcar', 'Destilaria Nacional'),
(17, 'Maracujá', 'Hortifruti Natural da Terra'),
(18, 'Malte, lúpulo', 'Cervejaria do Vale'),
(19, 'Maracujá, creme de leite, açúcar', 'Hortifruti Natural da Terra e Laticínios Vale do Sereno'),
(20, 'Leite condensado, ovos, açúcar', 'Laticínios Vale do Sereno');

select * from pedidos;

insert into pedidos (id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status_pedido) values (1, 26, 1, 2, '2024-07-01', 'Concluído'),
(3, 26, 2, 1, '2024-07-01', 'Concluído'),
(6, 30, 3, 1, '2024-07-01', 'Concluído'),
(8, 30, 4, 3, '2024-07-01', 'Concluído'),
(10, 31, 5, 2, '2024-07-02', 'Pendente'),
(15, 31, 6, 4, '2024-07-02', 'Concluído'),
(22, 26, 7, 3, '2024-07-02', 'Concluído'),
(18, 26, 8, 2, '2024-07-02', 'Concluído'),
(4, 30, 9, 5, '2024-07-02', 'Concluído'),
(6, 30, 10, 1, '2024-07-03', 'Concluído'),
(9, 31, 11, 3, '2024-07-03', 'Concluído'),
(11, 31, 12, 1, '2024-07-03', 'Concluído'),
(24, 26, 13, 2, '2024-07-03', 'Concluído'),
(27, 26, 14, 1, '2024-07-03', 'Concluído'),
(17, 30, 15, 2, '2024-07-03', 'Concluído'),
(7, 30, 16, 3, '2024-07-04', 'Concluído'),
(13, 31, 17, 2, '2024-07-04', 'Concluído'),
(25, 31, 18, 4, '2024-07-04', 'Concluído'),
(22, 26, 19, 1, '2024-07-04', 'Concluído'),
(2, 26, 20, 2, '2024-07-04', 'Concluído'),
(8, 30, 2, 1, '2024-07-04', 'Concluído'),
(11, 30, 3, 2, '2024-07-05', 'Concluído'),
(18, 31, 4, 3, '2024-07-05', 'Concluído'),
(22, 31, 5, 1, '2024-07-05', 'Concluído'),
(19, 26, 6, 4, '2024-07-05', 'Concluído'),
(28, 26, 7, 3, '2024-07-05', 'Concluído'),
(1, 30, 8, 2, '2024-07-05', 'Concluído'),
(7, 30, 9, 5, '2024-07-05', 'Concluído'),
(19, 31, 10, 1, '2024-07-05', 'Concluído'),
(15, 31, 11, 3, '2024-07-05', 'Concluído'),
(24, 26, 12, 1, '2024-07-05', 'Concluído'),
(12, 26, 13, 2, '2024-07-05', 'Concluído'),
(4, 30, 14, 1, '2024-07-05', 'Concluído'),
(9, 30, 15, 2, '2024-07-06', 'Concluído'),
(18, 31, 16, 3, '2024-07-06', 'Concluído'),
(5, 31, 17, 2, '2024-07-06', 'Pendente'),
(22, 26, 18, 4, '2024-07-06', 'Concluído'),
(14, 26, 19, 1, '2024-07-06', 'Pendente'),
(19, 30, 20, 2, '2024-07-06', 'Concluído'),
(8, 30, 1, 2, '2024-07-06', 'Pendente'),
(7, 31, 2, 1, '2024-07-06', 'Concluído'),
(4, 31, 3, 2, '2024-07-06', 'Pendente'),
(21, 26, 4, 3, '2024-07-06', 'Concluído'),
(4, 26, 5, 1, '2024-07-06', 'Pendente'),
(13, 30, 6, 4, '2024-07-06', 'Concluído'),
(25, 30, 7, 3, '2024-07-06', 'Pendente'),
(7, 31, 8, 2, '2024-07-06', 'Concluído'),
(7, 31, 8, 2, '2024-07-06', 'Concluído'),
(12, 26, 10, 1, '2024-07-06', 'Concluído'),
(10, 26, 11, 3, '2024-07-06', 'Pendente');

update funcionarios
set salário = 2700, cargo = 'Garçonete'
where cpf = '444.555.666-77';

update pedidos
set status_pedido = 'Concluído'
where data_pedido < '2024-07-06';

delete from funcionarios where cpf = '222.333.444-55';

select nome, categoria from produtos where preço > 30;

select nome, telefone, data_nascimento from funcionarios where data_nascimento < '1985-01-01';

select id_produto, ingredientes from info_produtos where ingredientes like 'Carne';

select nome, categoria from produtos order by categoria asc, nome asc;

select * from produtos order by preço desc limit 5;

select * from produtos where categoria = 'Prato Principal' order by id_produto limit 2 offset 5;

create table backup_pedidos as select * from pedidos;

-- Condicional
select * from pedidos where id_funcionario = 26 and status_pedido = 'Pendente';

select * from pedidos where status_pedido != 'Concluído';

select * from pedidos where id_produto in (1,3,5,7,8);

select * from clientes where nome like 'c%';

select * from info_produtos where ingredientes like '%carne%' or ingredientes like '%frango%';

select * from produtos where preço between 20 and 30;

update pedidos set status_pedido = null where id_pedido = 56;

select * from pedidos where status_pedido is null;

select id_pedido, coalesce(status_pedido,'Cancelado') as status_pedido from pedidos;

select nome, cargo, salário,
	case
		when salário > 3000 then 'Acima da média'
		else 'Abaixo da média'
	end as media_salario
from funcionarios;

-- agregação

select count(*) as total_pedido from pedidos;

select count(distinct id_cliente) as total_clientes_unicos from pedidos;

select avg(preço) as media_preço from produtos;

select min(preço) as preço_minimo, max(preço) as preço_maximo from produtos;

select categoria, min(preço) as preço_minimo, max(preço) as preço_maximo from produtos group by categoria;

select nome, preço, row_number() over (order by preço desc) as Rank_preço from produtos order by preço desc limit 5;

select categoria, avg(preço) as media_preço from produtos group by categoria;

select fornecedor, count(*) as quantidade_produtos from info_produtos group by fornecedor;

select fornecedor, count(*) as quantidade_produtos from info_produtos group by fornecedor having count(*) > 1;

select id_cliente, count(*) as quantidade_pedidos from pedidos group by id_cliente having count(*) = 1;