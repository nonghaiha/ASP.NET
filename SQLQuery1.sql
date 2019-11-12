use QLDulich
create table customer(
	id int primary key identity,
	name nvarchar(100) not null,
	password nvarchar(30) not null,
	email nvarchar(100),
	phone nvarchar(11),
	address nvarchar(200)
)
create table hotel(
	id int primary key identity,
	name nvarchar(100) not null,
	detail nvarchar(200),
	image nvarchar(200)
)
create table vehicle(
	id int primary key identity,
	name nvarchar(100) not null,
	detail nvarchar(200)
)
create table tour(
	id int primary key identity,
	name nvarchar(100) not null,
	price int,
	start_time nvarchar(100),--Thoi gian di
	departure_time nvarchar(100),--Thoi gian khoi hanh
	vehicle_id int,
	hotel_id int,
	place_id int,
	image nvarchar(200),
	detail nvarchar(MAX),
	constraint fk_idhotel foreign key(hotel_id) references hotel(id),
	constraint fk_idvehicle foreign key(vehicle_id) references vehicle(id),
	constraint fk_idplace foreign key(place_id) references place(id)
	)
create table book_tour(
		tour_id int,
		customer_id int,
		quantity int,
		primary key(tour_id,customer_id),
		constraint fk_idtour foreign key(tour_id) references tour(id), 
		constraint FK_idcustomer foreign key(customer_id) references customer(id)
	)
drop table book_tour
drop table tour
drop table hotel
create table manager(
	id int primary key identity,
	name nvarchar(100) not null,
	email nvarchar(100),
	phone nvarchar(11),
	username nvarchar(30)  not null,
	password nvarchar(100)
)
create table comment(
	id int primary key identity,
	detail_comment nvarchar(200) not null,
	email nvarchar(100) not null,
	phone nvarchar(11) not null
)
create table event_news(
	id int primary key identity,
	image nvarchar(200),
	title nvarchar(100) not null,
	detail nvarchar(MAX)
)
drop table event_news
select * from event_news
insert into manager(name,email,phone,username,password) values(N'Nông Hải Hà','nonghaiha0410@gmail.com','0368521362','haiha04','04101998Aa')
insert into tour(name,price,start_time,departure_time,vehicle_id,hotel_id,place_id,detail) values
(N'Tour du lich xuyen Viet Nam',7200000,N'7 ngay 6 dem','2/15/2019',10,1,1,'Hanoi is a destination for famous landscapes in Vietnam, the center of culture, economy, education, politics of Vietnam, to Visit Hanoi one day you will have moments of discovery. Along with the many thousand years of civilization, with many ancient and modern works, with unique sidewalk cultural experiences, the special historical sites will all make you a trip. Hanoi memorable tour. Especially not only experience the identity of 36 bustling streets, beautiful roads but also have moments of experiencing the enjoyment of the national culture through the museum, through the puppet theater special characteristics. .. with Hanoi city tours full day')
select * from vehicle
select * from hotel
select * from tour
select * from place
select tour.id,tour.name,price,start_time,departure_time,vehicle.name as vename,hotel.name as honame,place.name as pname,tour.detail from tour inner join vehicle on tour.vehicle_id=vehicle.id inner join hotel on tour.hotel_id=hotel.id inner join place on tour.place_id=place.id
select tour.id,tour.name,price,start_time,departure_time,vehicle.name as vename,hotel.name as honame,hotel.image as hoimage,place.name as pname,tour.image,tour.detail from tour inner join vehicle on tour.vehicle_id=vehicle.id inner join hotel on tour.hotel_id=hotel.id inner join place on tour.place_id=place.id where tour.id= 10