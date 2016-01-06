
select * from Travelmember;

drop table Travelmember

insert into Travelmember
(id, password, name,  birthday, tel, address, addressNum) 
values
('lol330', '12341234', '홍길동','2015-12-12','010-0000-0000', '서울 강남 강남 강남 강남 가강남 강남', '15161')
('master', 'master', '마스터','1111/11/11','1111/11/11','010-0000-0000', '관리자전용 아이디', '11111')

create table Travelmember(
   num				integer(100) auto_increment not null,
   id               varchar(255) not null unique,
   password         varchar(255),
   name             varchar(255),
   birthday			date,
   tel              varchar(255),
   address          varchar(255),
   addressNum       integer(100),
   constraint pk_tr primary key(num)
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


insert into RecommandList(title,area,name,content,picture) values('우와된당','서울','홍현우','너는누구냐나야야누이할','1')

select * from RecommandList;
select count(*) from RecommandList;

create table TravelShareBoard(
	boardNum int auto_increment,
	id		  varchar(255),
	title	  varchar(255),
	term	  varchar(255),		
	number	  int(100), 		
	transCost	  int(255),
	stayCost	  int(255),
	eatCost		  int(255),
	content   longtext,
	picture	  varchar(255) default 'nothing.jpg , nothing.png, nothing.gif',
	map		  varchar(255),
	foreign key(id) references Travelmember(id),
	constraint boardNum primary key(boardNum)
);


delete from TravelShareBoard

select * from TravelShareBoard
drop table TravelShareBoard

create table Travelmember(
	id 				varchar(255),
	memberPicture	varchar(255) default 'nothing.jpg , nothing.png, nothing.gif',
	password 		varchar(255),
	name 			varchar(255),
	register_date 	date,
	tel 			varchar(255),
	address 		varchar(255),
	addressNum      int(100),
	constraint pk_id primary key(id)
);

insert into Travelmember(id,memberPicture,password,name,register_date,tel,address,addressNum)
values('dfg','Hong','gusdn','홍현우','2015/12/17','010-5170-7855','서울시노원구','387')

drop table Travelmember
delete from Travelmember

select * from Travelmember
select count(*) from RecommandList



create table RealTimeBoard(
	number int auto_increment,
	id		varchar(255),
	content longtext,
	real_date	date,
	foreign key(id) references Travelmember(id),
	constraint number primary key(number)
);

insert into RealTimeBoard(number,id,content,Real_date) 
values('2','dfg','같이 여행갑시다','2016/01/06');

select * from RealTimeBoard
delete from RealTimeBoard

drop table RealTimeBoard

