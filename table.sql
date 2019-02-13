create table login(
login_id varchar2(4) primary key,
username varchar2(20),
password varchar2(8),
role varchar2(20));

INSERT INTO login VALUES(login_id_seq.nextval,'vamsi','zxcv','admin');

create table Users(
user_id varchar2(4) primary key,
first_name varchar2(20),
last_name varchar2(20),
user_name varchar2(20),
mobile_no varchar2(10),
phone_no varchar2(10),
address varchar2(25),
email varchar2(50));

select * from users;

truncate 

create sequence user_id_seq start with 1000;
create sequence login_id_seq start with 1000;
create sequence booking_id_seq start with 1000;
create sequence room_id_seq start with 1000;
create sequence hotel_id_seq start with 1000;
drop table users;

SELECT room_id,room_no,roomType,per_night_rate,availability FROM RoomDetails WHERE hotel_id = ? AND availability='1' 

create table BookingDetails(
user_id varchar2(4),
booking_id varchar2(4) primary key,
booked_from Date,
booked_to Date,
no_of_adults number(5),
no_of_childern number(5),
amount number(6,2),
CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE);

SELECT booking_id ,booked_from ,booked_to,no_of_adults ,no_of_childern ,amount FROM BookingDetails WHERE booking_id =1002;

drop table BookingDetails;

create table Hotel(
hotel_id varchar2(4) primary key,
hotel_name varchar2 (20), 
address varchar2(25), 
description varchar2(50), 
avg_rate_per_night number(10,3), 
phone_no1 varchar2(10), 
phone_no2 varchar2(10), 
rating varchar2(4), 
email varchar(15), 
fax varchar2(15)
);

create table bookingRoomdetails(
booking_id varchar2(4),
room_id varchar2(4),
CONSTRAINT fk_book FOREIGN KEY (booking_id) REFERENCES BookingDetails(booking_id) ON DELETE CASCADE,
CONSTRAINT fk_room FOREIGN KEY (room_id) REFERENCES RoomDetails(room_id) ON DELETE CASCADE
);

drop table bookingRoomdetails;


create table RoomDetails(
hotel_id varchar2(4),  
room_id varchar2(4) primary key ,  
room_no varchar2(3) , 
room_type varchar2(20), 
per_night_rate number(6,2), 
availability char(5),  
CONSTRAINT fk_hotel FOREIGN KEY (r) REFERENCES hotel(hotel_id) ON DELETE CASCADE);

SELECT room_id,room_no,room_type,per_night_rate,availability FROM RoomDetails WHERE hotel_id = 1001 AND availability='1'; 