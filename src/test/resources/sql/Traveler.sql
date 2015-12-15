create table RecommandList (
  listNo int(11) NOT NULL auto_increment,
  title char(35) NOT NULL,
  area char(20) NOT NULL,
  place char(20) NOT NULL,
  content longtext NOT NULL,
  PRIMARY KEY (listNo)
)
