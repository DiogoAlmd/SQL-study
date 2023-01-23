--lista1
create table Player(
	id int primary key identity,
	nome varchar(100) not null,
	UserName varchar(100) not null,
	senha varchar(100) not null,
	point int,
	IDGameServer int
	);

create table GameServer(
	IDGameServer int primary key identity,
	IpAdress varchar(30) not null,
	tipo varchar(100) not null,
	CreationDate datetime not null,
	DNSServer int
	);


alter table Player add age int
alter table GameServer drop column DNSServer

set dateformat DMY

INSERT INTO GameServer (IpAdress, tipo, CreationDate) VALUES
('333.333.333.333', 'Dedicated Server', GETDATE()),
('192.168.10.51', 'Dedicated Server', GETDATE()),
('200.215.12.3', 'Listen server', GETDATE()),
('123.456.789.10', 'Peer-to-Peer', GETDATE()),
('789.789.789.789', 'Listen server', GETDATE()),
('123.123.123.123', 'Peer-to-Peer', GETDATE()),
('111.111.111.111', 'Dedicated Server', '28-08-2011'),
('222.222.222.222', 'Dedicated Server', '28-08-2013')

INSERT INTO Player(nome, UserName, senha, point, IDGameServer, age) VALUES
('Ace Monster', 'ace.monster', '123', 600, 5, 30),
('Hulk Jedi', 'hulk.jedi', '456', 700, 3, 36),
('Pick Nick', 'pick.nick', '789', 800, 2, 39),
('Procurando Nemo', 'nemo', '000', 900, 1, 51),
('Duende Verde', 'green', '123mudar', 1000, 2, 18),
('Cosme', 'cosme', 'mudar', 1100, 3, 28),
('Rambo', 'rambo', 'mudar@123', 600, 5, 38),
('Anna Croft', 'anna.croft', 'mudar@123@', 600,5, 19),
('Jose Silva', 'jSilva', 'mudar@123', 400, 5, 33),
('Matilda Oliveira', 'rOliva', '@123mudar', 300, 5, 23),
('Jony Bravo', 'jony.bravo', '123', 40, 3, 28),
('Pantera Negra', 'pantera', '123', 90, 3, 40)

/*insert into GameServer(IpAdress, tipo, CreationDate) values ('127.0.0.9', 'Peer-to-Peer', '30/11/2022 21:00:00'),
															('127.0.0.10', 'Peer-to-Peer', '01/12/2022 21:00:00'),
															('127.0.0.11', 'Peer-to-Peer', '02/12/2022 21:00:00');*/

/*insert into GameServer(IpAdress, tipo, CreationDate) values ('127.0.0.7', 'Peer-to-Peer', '29/11/2022'),
															('127.0.0.8', 'Peer-to-Peer', '30/11/2022 21:00:22'),
															('127.0.0.9', 'Peer-to-Peer', '31/11/2022'),
															('127.0.0.10', 'Peer-to-Peer', '01/12/2022'),
															('127.0.0.11', 'Peer-to-Peer', '02/12/2022'); */

/*insert into Player(nome, UserName, senha, point, IDGameServer, age) values ('joao', 'joao123', '123', 10, 1, 15),
																		   ('bonfio', 'bonfio123', '123', 11, 4, 15),
																		   ('digo', 'digo123', '123', 12, 13, 15),
																		   ('se', 'se123', '123', 13, 14, 15),
																		   ('jovis', 'jovis123', '123', 14, 15, 15);*/
--lista 2;
update GameServer set tipo = 'P2P'
update Player set point = point*2;
update Player set UserName = SUBSTRING(nome, 1, 5)
update Player set senha = '123';
update Player set nome = 'Cosme' where nome = 'jovis';
delete from Player where nome = 'Cosme';
delete from GameServer where YEAR(CreationDate) between 2010 and 2013;
delete from Player where point < 750;
delete from Player where age > 50;

--lista 3;
select IpAdress, tipo, CreationDate from GameServer where YEAR(CreationDate) between 2005 and 2008;
select UserName, senha, age from Player where age in (15, 20, 25, 30);


select * from Player
select * from GameServer
