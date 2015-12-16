
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

create table RecommandList (
  listNo int(11) NOT NULL auto_increment,
  title char(35) NOT NULL,
  area char(20) NOT NULL,
  place char(20) NOT NULL,
  content longtext NOT NULL,
  PRIMARY KEY (listNo)
)
