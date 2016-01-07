CREATE TABLE TB_FILE
(
  IDX  int auto_increment,
  BOARD_IDX int NOT NULL,
  ORIGINAL_FILE_NAME CHAR(255) NOT NULL,
  STORED_FILE_NAME CHAR(36) NOT NULL,
  FILE_SIZE int,
  CREA_DTM  date,
  CREA_ID   CHAR(30) NOT NULL,
  DEL_GB    CHAR(5)  NOT NULL,
  PRIMARY KEY (IDX)
);



select * from Travelmember;

drop table Travelmember;

create table Travelmember(
   memberPicture    varchar(100) default 'nothing.jpg , nothing.png, nothing.gif',
   num				integer(100) auto_increment not null,
   id               varchar(255) not null unique,
   password         varchar(255),
   name             varchar(255),
   register_date	date,
   birthday			date,
   tel              varchar(255),
   address          varchar(255),
   addressNum       integer(100),
   constraint pk_tr primary key(num)
);

drop table RecommandList;

create table RecommandList (
  listNo int(11) auto_increment,
  title char(35) NOT NULL,
  area char(20),
  name char(20) NOT NULL,
  content longtext NOT NULL,
  picture char(100) default 'nothing.jpg , nothing.png, nothing.gif',
  PRIMARY KEY (listNo)
);
alter table RecommandList MODIFY area char(20);
alter table RecommandList MODIFY listNo int(11) auto_increment

insert into RecommandList(title,name,content,picture) values('우와된당','홍우','너는누구냐나야야누이할','1')

select * from RecommandList where listNo=28;
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
drop table RealTimeBoard;

create table RealTimeBoard(
	number 	  int auto_increment,
	id 		  varchar(255),
	content   varchar(255),
	Real_date date,
	PRIMARY KEY (number)
);

create table Comment(
	listNo    int,
	cono 	  int auto_increment,
	id 		  varchar(255),
	content   varchar(255),
	PRIMARY KEY (cono)
);

drop table Comment
insert into Comment(listNo,id,content) values('24','zz','하하')
update Comment set listNo = '28' where listNo='25'
select * from Comment 

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

set foreign_key_checks=0;
set foreign_key_checks=1;

drop table Travelmember;
show create table Travelmember;
alter table TravelShareBoard drop foreign key id;