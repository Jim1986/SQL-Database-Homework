	/*　可一次執行　*/
	/*　建立資料庫　*/
create Database HW
go
use HW
go



	/*　建立資料表1：　幣種對應國家　*/
create Table Currency
	(
	CurrencyID int primary key,
	CountryName varchar(10)
	)

insert into Currency values(1, 'USA')
insert into Currency values(2, 'Taiwan')
insert into Currency values(3, 'Japan')
insert into Currency values(4, 'Korea')
insert into Currency values(5, 'Europe')
select * from Currency



	/*　建立資料表2：　交易記錄　*/
create Table Trade
	(
	OrderID int primary key,
	ClientName char(10),
	CurrencyID int,
	EXCID int,
	Date int,
	ExRate money,
	ExAmount int
	)

insert into Trade values(1, 'Kelvin', 1, 2, 20170528, 30.112, 10000)
insert into Trade values(2,  'Jason', 1, 3, 20170528, 111.33, 5000)
insert into Trade values(3, 'Michael', 1, 4, 20170528, 1120.82, 7000)
insert into Trade values(4, 'Joseph', 5, 1, 20170528, 1.1183, 3000)
select * from Trade



	/*　新增資料表3：　交易站　*/
create Table DealSite
	(
	DealSiteID int primary key,
	Site char(10)
	)

insert into DealSite values(1, 'Taipei')
insert into DealSite values(2, 'Taichung')
insert into DealSite values(3, 'kaoshiung')
select * from DealSite



	/*　新增資料欄與修改資料　*/
alter Table Trade add DealSiteID int
go
update Trade set DealSiteID = 2 where OrderID in (1, 2)
update Trade set DealSiteID = 1 where OrderID = 4
delete Trade where OrderID =3
select * from Trade