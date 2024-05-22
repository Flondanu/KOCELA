CREATE database tendepaydb;
show databases;
use tendepaydb;
 drop table Customers;
 CREATE table Customers(
Phonenumber INT PRIMARY KEY,
Fullname varchar(50),
Email varchar(50),
pin int
 );
insert into Customers(Phonenumber,Fullname,Email,pin) values (0742148515,'Brian','mondaybarasa49@gmail.com',2345 );

create table Transact(
transaction_id int auto_increment PRIMARY KEY,
type varchar(50));
insert into Transact( type) values ('Send'),('Pay'),('FundAccount'),('Manage'),('Buy Airtime');

create table send(
send_id int auto_increment PRIMARY KEY,
type varchar(50),
transaction_id INT,
foreign key (transaction_id) references Transact(transaction_id)
);
insert into send( type, transaction_id ) values ('Send to Mpesa', 1),('Send to Bank', 1);
 
 create table Send_to_Mpesa(
 mpesa_id int PRIMARY KEY,
 phonenumber int(50),
 type varchar(50),
 send_id INT,
 foreign key (send_id) references send(send_id)
 );
 insert into Send_to_Mpesa(mpesa_id ,phonenumber, type, send_id) values (123,'0742148515',('Send to many'),1);
 
 create table Send_to_bank(
 Bank_id int primary key,
 account_number int,
 type varchar(50),
 send_id INT,foreign key (send_id) references send(send_id)
 );
 insert into Send_to_bank(Bank_id, account_number, type, send_id) values (012, 8646790, ('Send to many'), 1);