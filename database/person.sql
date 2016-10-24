CREATE TABLE PERSON (
  id number(11)  NOT NULL,
  name varchar(20) NOT NULL,
  country varchar(20) NOT NULL,
  PRIMARY KEY (id)
);

create sequence PERSON_ID_SEQ start with 1;
