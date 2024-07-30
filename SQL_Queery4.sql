create table Bank(
	customer_id serial Primary key,
	customer_name varchar(150),
	address varchar(250),
	amount int,
	age int
)
select * from Bank
copy Bank from 'D:\Task4.1.csv' DELIMITER ',' csv header
select * from Bank
update Bank set Age=78 where Age>78
alter table Bank add constraint age_not_greater check(Age<=78)
select * from Bank
select customer_name, amount from Bank where age > 78
select * from Bank
select * from Bank where age =64 And amount =190
select * from Bank
alter table Bank add column Checking varchar(20)
select * from Bank
begin
update Bank set Checking = 'a1' where customer_id<=50
rollback
update Bank set Checking = 'a2' where customer_id>=100 and customer_id<=200
select * from Bank
update Bank set Checking = 'b1' where customer_id>=201 and customer_id<=300
select * from Bank

update Bank set Checking = 'b2' where customer_id>=301 and customer_id<=400
select * from Bank

update Bank set Checking = 'check' where customer_id>=401 and customer_id<=500
select * from Bank
begin
update Bank set Checking='Uncheck' where Checking in('a1','b1','check')

select * from Bank

alter table Bank add constraint checking_done check(Checking not in('a1','b1','check'))

select * from Bank


