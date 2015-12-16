create table RecommandList (
  listNo int(11) NOT NULL auto_increment,
  title char(35) NOT NULL,
  area char(20) NOT NULL,
  place char(20) NOT NULL,
  content longtext NOT NULL,
  PRIMARY KEY (listNo)
);

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
