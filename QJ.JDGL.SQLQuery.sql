use master
go

if exists (select * from sys.databases where name='JDGL')
drop database JDGL
go

create database JDGL
go

use JDGL
go

if exists (select * from sys.tables where name='UserInfo')
drop table UserInfo
go
--创建登录表
create table UserInfo
(
UserID int primary key identity(1,1),--用户编号 
UserName varchar(20)not null,--登录名
UserPwd int not null,--密码
UserCard int--身份 1 老板 2经理 3员工
)
go
--插入员工，管理层登录信息
insert into UserInfo values('张飒',1234,1)
insert into UserInfo values('李信',1234,2)
insert into UserInfo values('张三',1234,3)
insert into UserInfo values('李四',1234,3)


if exists (select * from sys.tables where name='CustomInfo')
drop table CustomInfo
go
--创建顾客信息表
create table CustomInfo
(
CusID int primary key identity(1,1),-- 顾客编号 主键 
CusName varchar(20)not null,--顾客姓名
CusSex char(2) not null,--顾客性别
CusPhone int not null,-- 顾客手机号
CusBodyId int not null--顾客身份证号
)
go
--插入顾客信息
insert into CustomInfo values('大白','男',12345678901,411481199001026243)
insert into CustomInfo values('小白','男',12345678902,411481199601026243)
insert into CustomInfo values('肖思','女',12345678903,411481199901026243)
insert into CustomInfo values('赵新','男',12345678904,411481199003026243)

select * from CustomInfo


if exists (select * from sys.tables where name='StaffInfo')
drop table StaffInfo
go
--创建员工信息表
create table StaffInfo
(
StaID int primary key identity(1,101),--员工编号 主键 
StaName varchar(20)not null,-- 员工姓名
StaSex char(2) not null,-- 员工性别
StaPhone int not null,--员工手机号
StaCard int not null,--员工身份证号
IsWork bit--员工是否在岗
)
go
--插入员工信息
insert into StaffInfo values('周政','男',12345678101,411481199001026243,1)
insert into StaffInfo values('陆河','男',12345678202,411481199601026243,1)
insert into StaffInfo values('李思','女',12345678303,411481199901026243,1)
insert into StaffInfo values('赵羽','男',12345678404,411481199003026243,0)

select * from StaffInfo


if exists (select * from sys.tables where name='ManagerInfo ')
drop table ManagerInfo 
go
--创建管理层信息表
create table ManagerInfo 
(
ManID int primary key identity(1,101),--编号 主键 
ManName varchar(20)not null,--  姓名
ManSex char(2) not null,-- 性别
ManCard  int,-- 0 经理，1 老板
ManPhone int not null--手机号  
)
go
--插入管理人员信息
insert into ManagerInfo values('张飒','男',12345678888,1)
insert into ManagerInfo values('李信','男',12345678666,0)
insert into ManagerInfo values('刘岚','女',12345678668,0)

select * from ManagerInfo 


if exists (select * from sys.tables where name='RoomType ')
drop table RoomType 
go
--创建房间类型表
create table RoomType 
(
RTypeID int primary key identity(1,1), --类型编号 主键 
RooType varchar(20) not null--房间类型
)
go
--插入房间类型
insert into RoomType values('标间')
insert into RoomType values('商务套房')
insert into RoomType values('豪华房间')

select * from RoomType 


if exists (select * from sys.tables where name='RoomInfo  ')
drop table RoomInfo  
go
--创建房间信息表
create table RoomInfo  
(
RooID int primary key identity(1,1001), --房间编号 主键 
RTypeID int not null references RoomType(RTypeID),--类型编号 外键
Rooname varchar(50)not null,--房间名称
RooPrice money not null,-- 房间价格
IsRoo bit-- 是否已有顾客
)
go
--插入房间信息
insert into RoomInfo values(1,101,200,0)
insert into RoomInfo values(2,201,400,0)
insert into RoomInfo values(2,202,400,0)
insert into RoomInfo values(3,301,888,0)
insert into RoomInfo values(3,302,888,0)

select * from RoomInfo  


if exists (select * from sys.tables where name='THinguInfo')
drop table THinguInfo   
go
--创建房间用品信息表
create table THinguInfo   
(
ThiID int primary key identity(1,1001),--物品编号 主键
RooID int not null references RoomInfo(RooID),--房间编号 外键
ThiName varchar(50)not null,--物品名称
ThiPrice money not null,-- 物品价格
ThiNum int not null-- 物品数量

)
go
--插入房间用品信息
insert into THinguInfo values(1,'',3,3)

select * from THinguInfo 


if exists (select * from sys.tables where name='ShopInfo')
drop table ShopInfo     
go
--创建房间用品消费表
create table ShopInfo     
(
ShopID int primary key identity(1,1001),--消费编号 主键
CusID int not null references CustomInfo(CusID),--顾客编号 外键
ThiID int not null references THinguInfo(ThiID),--物品编号  外键
ShopNum int not null,-- 物品数量
ShopPrice money null--消费总金额
)
go
--插入房间用品消费
insert into UserInfo values(1,2,3,15)

select * from ShopInfo   


if exists (select * from sys.tables where name='CumrooInfo')
drop table CumrooInfo        
go
--创建顾客住宿信息表
create table CumrooInfo        
(
CumID  int primary key identity(1,10001),--住宿信息编号 主键
CusID int not null references CustomInfo(CusID),-- 顾客编号 外键
RoomID int not null references RoomInfo(RooID),--房间编号 外键
IsDamage bit,--是否有东西损坏
IsDamageInfo varchar(100)null,--损坏物品内容
CusDatestart datetime not null,-- 顾客入住时间
CusDateEnd  datetime null--顾客退宿时间
)
go
--插入顾客住宿信息
insert into CumrooInfo values(1,101,0,null,'2019-11-1','2019-11-3')

select * from CumrooInfo    


if exists (select * from sys.tables where name='BillInfo')
drop table BillInfo        
go
--创建账单信息表
create table BillInfo        
(
BilID int primary key identity(1,10000001),--账单编号 主键 
CusID int not null references CustomInfo(CusID),-- 顾客编号 外键
RooID int not null references RoomInfo(RooID),--房间编号  外键
CumID int not null references CumrooInfo(CumID),--住宿信息编号 外键
ShopID int not null references ShopInfo(ShopID),--消费编号 外键
Cumprice money--顾客总消费额
)
go
--插入顾客住宿信息
insert into BillInfo values(1,201,10001,1001,230)

select * from BillInfo   


if exists (select * from sys.tables where name='StatisticalInfo')
drop table StatisticalInfo        
go
--创建房间统计表
create table StatisticalInfo        
(
StatisticalNum int not null, --已入住房间数量
Statistical money null,--收入总金额
StatisticalDate datetime default getdate()--日期
)
go
--插入房间统计表
insert into StatisticalInfo values(5,1000,'2019-11-4')

select * from StatisticalInfo   

if exists (select * from sys.procedures where name='UserInfo_selID')
drop proc UserInfo_selID
go
--创建登录表查询存储过程
create proc UserInfo_selID(@UserID int, @UserName varchar(20)='',@UserPwd int)
as
  declare @sql varchar(MAX)
  set @sql= @sql+ 'and like ''%'+@UserName+'%'''
go
exec UserInfo_selID 1,'张飒',1234

select * from UserInfo where UserName like '%张%'