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

drop table Travelmember

insert into Travelmember
(memberPicture, id, password, name,  birthday, tel, address, addressNum) 
values
('KakaoTal.jpg','lol330', '12341234', '홍길동','2015-12-12','010-0000-0000', '서울 강남 강남 강남 강남 가강남 강남', '15161')

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

select * from RecommandList;
select count(*) from RecommandList;

create table TravelShareBoard(
	memberPicture varchar(100) default 'nothing.jpg , nothing.png, nothing.gif',
	boardNum int auto_increment,
	id varchar(255),
	name varchar(255),
	memberAge int(100),
	memberTel varchar(255),
	title	  varchar(255),
	term	  varchar(255),		
	number	  int(100), 		
	cost	  int(100),
	content   longtext,
	picture	  varchar(255) default 'nothing.jpg , nothing.png, nothing.gif',
	map		  varchar(255),
	foreign key(id) references Travelmember(id),
	constraint boardNum primary key(boardNum)
);


insert into TravelShareBoard (memberPicture,boardNum,id,name,memberAge,memberTel,title,term,number,cost,content,picture,map)
values('Hong','1','gusdn','홍현우','26','010-5170-7855','낭만적인부산','3개월','4','45000','겨울바다이야기','aaa','Busan')

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
values('asas','Hong','gusdn','홍현우','2015/12/17','010-5170-7855','서울시노원구','387')

drop table Travelmember

select * from Travelmember
select count(*) from RecommandList
<<<<<<< HEAD



=======
>>>>>>> 5b5bca93d1ddd6a99b34ee35982b42dcf44bdbd7
