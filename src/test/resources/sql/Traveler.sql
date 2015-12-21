
select * from Travelmember;

drop table Travelmember

insert into Travelmember
(id, password, name, register_date, birthday, tel, address, addressNum) 
values
('lol126', '12341234', '홍길동','2015-12-12','2015-12-12','010-0000-0000', '서울 강남 강남 강남 강남 가강남 강남', '15161')

create table Travelmember(
   id               varchar(255),
   password         varchar(255),
   name             varchar(255),
   register_date    date,
   birthday			date,
   tel              varchar(255),
   address          varchar(255),
   addressNum       integer(100),
   constraint pk_id primary key(id)
);

drop table RecommandList;

create table RecommandList (
  listNo int(11) NOT NULL auto_increment,
  title char(35) NOT NULL,
  area char(20) NOT NULL,
  name char(20) NOT NULL,
  content longtext NOT NULL,
  picture char(100) default 'nothing.jpg , nothing.png, nothing.gif',
  PRIMARY KEY (listNo)
);

<<<<<<< HEAD

insert into RecommandList(title,area,name,content,picture) values('우와된당','서울','홍현우','너는누구냐나야야누이할','1')

select * from RecommandList;
select count(*) from RecommandList;
=======
create table TravelShareBoard(
	memberPicture varchar(100),
	boardNum int auto_increment,
	id varchar(255),
	name varchar(255),
	memberAge integer(100),
	memberTel varchar(255),
	title	  varchar(255),
	term	  varchar(255),		--기간
	number	  int(100), 		--인원
	cost	  integer(100),
	content   longtext,
	picture	  varchar(255),
	map		  varchar(255),
	foreign key(id) references Travelmember(id) on delete cascade,
	constraint pk_boardNum primary key(boardNum)
);

drop table TravelShareBoard

create table Travelmember(
	id 				varchar(255),
	picture			varchar(255) default 'nothing.jpg , nothing.png, nothing.gif',
	password 		varchar(255),
	name 			varchar(255),
	register_date 	date,
	tel 			varchar(255),
	address 		varchar(255),
	addressNum      integer(100),
	constraint pk_id primary key(id)
);

drop table Travelmember

select * from Travelmember
>>>>>>> 0b64d3854e75f03f10edaf3457033465f72e34af
