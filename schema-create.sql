-- Database schems. 

create table photographers 
( id int,  
  name varchar(30),
  CONSTRAINT contacts_pk PRIMARY KEY (id)
) ;

create table availabilities 
( photographer_id int, 
  start_time timestamp, 
  end_time timestamp
) ;

create table bookings
( photographer_id int,
  start_time timestamp, 
  end_time timestamp
);

-- Data

insert into 
	photographers 
values 
	(1, 'Otto Crawford'), 
	(2,'Jens Mills'), (3, 'James Dean') ;
insert into 
	availabilities 
values 
	(1,'2020-11-25 08:00:00', '2020-11-25 16:00:00'),
	(2,'2020-11-25 08:00:00','2020-11-25 09:00:00'), 
	(2,'2020-11-25 13:00:00', '2020-11-25 16:00:00');
insert into 
	bookings 
values 
	(1,'2020-11-25 08:30:00','2020-11-25 09:30:00'),
	(2,'2020-11-25 15:00:00','2020-11-25 16:00:00');
