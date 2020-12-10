create table photographers 
( id int,  
  name varchar(30),
  CONSTRAINT contacts_pk PRIMARY KEY (id)
) ;

create table availabilities 
( photographer_id int, 
  start_time timestamp, 
  end_time timestamp, 
  CONSTRAINT contacts_pk PRIMARY KEY (photographer_id)
) ;

create table bookings
( photographer_id int,
  start_time timestamp, 
  end_time timestamp, 
  CONSTRAINT contacts_pk PRIMARY KEY (photographer_id)
);
