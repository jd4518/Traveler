
select * from Travelmember;

create table Travelmember(
   id             varchar(255),
   password       varchar(255),
   name          varchar(255),
   register_date    date,
   tel          varchar(255),
   address       varchar(255),
   addressNum      integer(100),
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


insert into RecommandList(title,area,name,content,picture) values('우와된당','서울','홍현우','너는누구냐나야야누이할','1')

select * from RecommandList;
select count(*) from RecommandList;