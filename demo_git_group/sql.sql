CREATE DATABASE PETSHOP;
USE PETSHOP; 

CREATE TABLE Customer (
  ID int auto_increment PRIMARY KEY,
  User_name varchar(20),
  Pass varchar(8),
   Name varchar(50),
  Email varchar(100),
  Phone_Number varchar(20),
  Address varchar(100)
);
CREATE TABLE Dog (
  ID int auto_increment PRIMARY KEY,
  Dog_Name varchar(100),
  Age int,
  Price double,
  Species_ID int,
   Image varchar(200),
  constraint pk_speciesID foreign key Dog(Species_ID) references Species_Dog(ID)
);
create table Cart_detail(
id int auto_increment primary key,
dog_id int,
quantity int,
cart_detail_id int,
  foreign key (cart_detail_id) references cart(id),

   foreign key (dog_id) references dog(id)
);


CREATE TABLE Cart (
  ID int auto_increment primary key,
  Customer_ID int,
   cart_detail int,
   constraint pk_CustomerID foreign key Cart(Customer_ID) references Customer(ID)
);

CREATE TABLE Dog_Care_Service (
  ID int auto_increment PRIMARY KEY,
  Service_Name varchar(100),
  Service_Description varchar(200),
  Price float
);


CREATE TABLE Species_Dog (
  ID int auto_increment PRIMARY KEY,
  Species_Name varchar(100),
  Description varchar(200),
  Status boolean
);
alter table Dog_Care_Service
add column Customer_ID int,
 add constraint pk_Customer_ID foreign key Dog_Care_Service(Customer_ID) references Customer(ID);
 
insert into dog(Dog_Name,age,Price,Species_ID,Image) value('chun' , 8 , 800 ,1,"https://images.pexels.com/photos/2023384/pexels-photo-2023384.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1");
insert into dog(Dog_Name,age,Price,Species_ID,Image) value('ki' , 9 , 900 ,2,"https://images.pexels.com/photos/4056462/pexels-photo-4056462.jpeg?auto=compress&cs=tinysrgb&w=600");
insert into dog(Dog_Name,age,Price,Species_ID,Image) value('nick' , 10 , 1000 ,2,"https://images.pexels.com/photos/4504148/pexels-photo-4504148.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1");

insert into species_dog(Species_Name,Description,Status) value('Beagle' , 'ngon' , 1 );
insert into species_dog(Species_Name,Description,Status) value('Shiba' , 'ngon' , 2 );

insert into cart_detail(dog_id,quantity,cart_detail_id) value(1,2,1);
insert into cart_detail(dog_id,quantity,cart_detail_id) value(2,1,2);

insert into cart(Customer_ID,cart_detail) value(1,1);
insert into cart(Customer_ID,cart_detail) value(2,2);
insert into cart(Customer_ID,cart_detail) value(3,3);

insert into customer(Email,Pass,Name,Phone_Number,Address) value('admin@gmail.com', "Admin123" , 'Dung' , 123456789 , 'HN' );
insert into customer(Email,Pass,Name,Phone_Number,Address) value('dung@gmail.com', "Dung123" , 'Dung' , 123456789 , 'HN' );
insert into customer(Email,Pass,Name,Phone_Number,Address) value('tuong@gmail.com', "Tuong123" , 'Tuong' , 123456789 , 'HN' );
insert into dog_care_service(Service_Name,Service_Description,Price,Customer_ID) value('mat xa' , 'suong' , 10000,1 );
insert into dog_care_service(Service_Name,Service_Description,Price,Customer_ID) value('tam quat' , 'phe' , 60000,1 );

 
 
