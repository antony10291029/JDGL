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
UserPwd varchar(20) not null,--密码
UserCard int--身份 1 老板 2经理 3员工
)
go
--插入员工，管理层登录信息
insert into UserInfo values('admin','admin',1)
insert into UserInfo values('123456','123456',2)
insert into UserInfo values('999999','999999',3)
go

if exists (select * from sys.tables where name='CustomInfo')
drop table CustomInfo
go
--创建顾客信息表
create table CustomInfo
(
CusID int primary key identity(1,1),-- 顾客编号 主键 
CusName varchar(20)not null,--顾客姓名
CusSex char(2) not null,--顾客性别
CusPhone varchar(20) not null,-- 顾客手机号
CusBodyId varchar(20) not null--顾客身份证号
)
go
--插入顾客信息
insert into CustomInfo values('大白','男',12345678901,411481199001026243)
insert into CustomInfo values('小白','男',12345678902,411481199601026243)
insert into CustomInfo values('肖思','女',12345678903,411481199901026243)
insert into CustomInfo values('赵新','男',12345678904,411481199003026243)
go
select * from CustomInfo


if exists (select * from sys.tables where name='StaffInfo')
drop table StaffInfo
go
--创建员工信息表
create table StaffInfo
(
StaID int primary key identity(1,1),--员工编号 主键
UserID int not null references UserInfo(UserID),--登录编号 外键
StaName varchar(20)not null,-- 员工姓名
StaSex char(2) not null,-- 员工性别
StaPhone varchar(20) not null,--员工手机号
StaCard varchar(20) not null,--员工身份证号
IsWork bit--员工是否在岗
)
go
--插入员工信息

insert into StaffInfo values(1,'周政','男',12345678101,411481199001026243,1)
insert into StaffInfo values(2,'陆河','男',12345678202,411481199601026243,1)
insert into StaffInfo values(3,'李思','女',12345678303,411481199901026243,1)
insert into StaffInfo values(3,'赵羽','男',12345678404,411481199003026243,0)
go
select * from StaffInfo


if exists (select * from sys.tables where name='ManagerInfo ')
drop table ManagerInfo 
go
--创建管理层信息表
create table ManagerInfo 
(
ManID int primary key identity(1,1),--编号 主键 
UserID int not null references UserInfo(UserID),--登录编号 外键
ManName varchar(20)not null,--  姓名
ManSex char(2) not null,-- 性别
ManCard  int,-- 0 经理，1 老板
ManPhone varchar(20) not null--手机号  
)
go
--插入管理人员信息
insert into ManagerInfo values(3,'张飒','男',1,12345678888)
insert into ManagerInfo values(2,'李信','男',0,12345678666)
insert into ManagerInfo values(2,'刘岚','女',0,12345678668)

go
select * from ManagerInfo 


if exists (select * from sys.tables where name='RoomType ')
drop table RoomType 
go
--创建房间类型表
create table RoomType 
(
RTypeID int primary key identity(1,1), --类型编号 主键 
RooType varchar(20) not null,--房间类型
)
go
--插入房间人数
insert into RoomType values('标准间')
insert into RoomType values('双人间')
insert into RoomType values('豪华套房')

select * from RoomType 


if exists (select * from sys.tables where name='RoomNum')
drop table RoomNum
go
--创建房间人数表
create table RoomNum 
(
NumID int primary key identity(1,1), --编号 主键
RooNum varchar(20) not null--房间人数
)
go
insert into RoomNum values('一人入住')
insert into RoomNum values('两人入住')
select * from RoomNum
go

if exists (select * from sys.tables where name='RooRight')
drop table RooRight
go
--创建房间是否取消表
create table RooRight 
(
RightID int primary key identity(1,1), --编号 主键
RooRight varchar(20) not null--房间能否取消
)
go
insert into RooRight values('不可取消')
insert into RooRight values('可取消')
select * from RooRight
go

if exists (select * from sys.tables where name='RoomInfo')
drop table RoomInfo  
go
--创建房间信息表
create table RoomInfo  
(
RooID int primary key identity(1,1), --房间编号 主键 
RTypeID int not null references RoomType(RTypeID),--类型编号 外键
NumID int references RoomNum(NumID),--人数编号 外键
RightID int references RooRight(RightID),--取消编号 外键
Rooname varchar(50)not null,--房间名称
RooPrice money not null,-- 房间价格
IsRoo bit-- 是否已有顾客
)
go
--插入房间信息
insert into RoomInfo values(1,1,1,201,160,0)
insert into RoomInfo values(1,1,2,301,200,0)
insert into RoomInfo values(1,2,1,401,200,0)
insert into RoomInfo values(1,2,2,501,230,0)
insert into RoomInfo values(2,2,1,202,200,0)
insert into RoomInfo values(2,2,1,302,200,0)
insert into RoomInfo values(2,2,2,402,240,0)
insert into RoomInfo values(2,2,2,502,240,0)
insert into RoomInfo values(3,1,1,203,365,0)
insert into RoomInfo values(3,1,2,303,400,0)
insert into RoomInfo values(3,2,1,403,400,0)
insert into RoomInfo values(3,2,2,503,430,0)
go
select * from RoomInfo  


if exists (select * from sys.tables where name='THinguInfo')
drop table THinguInfo   
go
--创建房间用品信息表
create table THinguInfo   
(
ThiID int primary key identity(1,1),--物品编号 主键
RooID int not null references RoomInfo(RooID),--房间编号 外键
ThiName varchar(50)not null,--物品名称
ThiPrice money not null,-- 物品价格
ThiNum int not null-- 物品数量
)
go
--插入房间用品信息
insert into THinguInfo values(1,'面包',5,1)
select * from THinguInfo 


if exists (select * from sys.tables where name='ShopInfo')
drop table ShopInfo     
go
--创建房间用品消费表
create table ShopInfo     
(
ShopID int primary key identity(1,1),--消费编号 主键
CusID int not null references CustomInfo(CusID),--顾客编号 外键
ThiID int not null references THinguInfo(ThiID),--物品编号  外键
ShopNum int not null,-- 物品数量
ShopPrice money null--消费总金额
)
go
--插入房间用品消费
--insert into UserInfo values(1,2,3,15)

select * from ShopInfo   


if exists (select * from sys.tables where name='CumrooInfo')
drop table CumrooInfo        
go
--创建顾客住宿信息表
create table CumrooInfo        
(
CumID  int primary key identity(1,1),--住宿信息编号 主键
CusID int not null references CustomInfo(CusID),-- 顾客编号 外键
RooID int not null references RoomInfo(RooID),--房间编号 外键
IsDamage bit,--是否有东西损坏
IsDamageInfo varchar(100)null,--损坏物品内容
CusDatestart datetime not null,-- 顾客入住时间
CusDateEnd  datetime null--顾客退宿时间
)
go
--插入顾客住宿信息
--insert into CumrooInfo values(1,1001,0,null,'2019-11-1','2019-11-3')

select * from CumrooInfo    


--开房储存过程
if exists(select * from sys.procedures where name='ins_kaifang')
	drop proc ins_kaifang
go
create proc ins_kaifang (@CusName varchar(20),@CusSex char(2),@CusPhone varchar(20),
			@CusBodyId varchar(20),@RTypeID int,@NumID varchar(20),@RightID varchar(20))
as 
	insert into CustomInfo values(@CusName,@CusSex,@CusPhone,@CusBodyId)
	declare @RooID int
	select TOP 1  @RooID=RooID  from RoomInfo where RTypeID=@RTypeID and NumID=@NumID and RightID=@RightID and IsRoo=0  order by RooID 
	update RoomInfo set IsRoo=1 where RooID=@RooID
	declare @CusID int
	select @CusID=CusID from CustomInfo where CusName=@CusName
	insert into CumrooInfo values(@CusID,@RooID,0,null,GETDATE(),null)
go
--exec ins_kaifang  'ss','男','123456','123456789',1,1,1

--查询顾客住宿信息
select CusName,CusSex,CusPhone,CusBodyId,RooType,Rooname,RooPrice,IsRoo,IsDamage,IsDamageInfo,
CusDatestart,CusDateEnd from CustomInfo UI,RoomType RT,RoomInfo RI,CumrooInfo UT where 
RT.RTypeID=RI.RTypeID and RI.RooID=UT.RooID and UI.CusID=UT.CusID

if exists(select * from sys.procedures where name='sel_kaifang')
	drop proc sel_kaifang
go
create proc sel_kaifang
as
	select * from RoomType
	select * from RoomInfo RI,RoomType RT where RT.RTypeID=RI.RTypeID
go
exec sel_kaifang

--delete from CustomInfo where CusName='ss'
--delete from CumrooInfo where CusID!=1
--select * from RoomInfo
--update RoomInfo set IsRoo=0 where RTypeID!=1005


if exists (select * from sys.tables where name='BillInfo')
drop table BillInfo        
go
--创建账单信息表
create table BillInfo        
(
BilID int primary key identity(1,1),--账单编号 主键 
CusID int not null references CustomInfo(CusID),-- 顾客编号 外键
RooID int not null references RoomInfo(RooID),--房间编号  外键
CumID int not null references CumrooInfo(CumID),--住宿信息编号 外键
ShopID int not null references ShopInfo(ShopID),--消费编号 外键
Cumprice money--顾客总消费额
)
go
--插入顾客住宿信息
--insert into BillInfo values(1,201,10001,1001,230)

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
--insert into StatisticalInfo values(5,1000,'2019-11-4')

select * from StatisticalInfo   

--投诉信息表
if exists(select * from sys.tables where name='tousu')
drop table tousu
go
create table tousu
(
	touid int primary key identity(1,1),
	touname varchar(20)not null,
	toufang int not null,
	toudui varchar(20)not null,
	touliyou varchar(500)not null
)
--insert into tousu values('大白','1002','张三','她瞪我')
select * from tousu


if exists (select * from sys.procedures where name='UserInfo_selID')
drop proc UserInfo_selID
go
--报修信息表
if exists(select * from sys.tables where name='baoxiu')
drop table baoxiu
go
create table baoxiu
(
	baoid int primary key identity(1,1),
	baoname varchar(20)not null,
	baofang int not null,
	wupin varchar(50)not null,
	shijian datetime default(getdate()),
	ischuli bit default(0) check(ischuli='0'or ischuli='1'),
	chushijian datetime default(null)
	
)
insert into baoxiu values('养身','1002','10000瓦大吊灯',GETDATE(),'',null)
--update baoxiu set ischuli='1',chushijian=getdate()where baoid='1'
select * from baoxiu
go


if exists (select * from sys.procedures where name='StaffInfoAdd ')
drop  proc StaffInfoAdd
go
create proc StaffInfoAdd (@UserName varchar(20) ,@UserPwd varchar(20),@UserCard int,@StaName varchar(20),@StaSex char(2),@StaPhone varchar(20),@StaCard varchar(20),@IsWork bit)
as
	insert into UserInfo values(@UserName,@UserPwd,@UserCard)
	declare @UserID int
	set @UserID=IDENT_CURRENT('UserInfo')
	insert into StaffInfo values(@UserID,@StaName,@StaSex,@StaPhone,@StaCard,@IsWork)
go
exec StaffInfoAdd '123232','123456',1,'张三','性别','1234564234','343243242432423',3
go

if exists (select * from sys.procedures where name='StaffInfoAddSel ')
drop  proc StaffInfoAddSel
go
create proc StaffInfoAddSel (@UserCard int=0,@StaName varchar(20)='',@StaSex char(2)='',@IsWork int=2)
as
	declare @sql varchar(max);
	set @sql='	select StaffInfo.*,UserInfo.UserName,UserInfo.UserPwd,UserInfo.UserCard from StaffInfo,UserInfo where StaffInfo.UserID=UserInfo.UserID and StaffInfo.StaName like''%'+@StaName+'%'' '
		if(@UserCard<>0)
			set @sql+=' and UserInfo.UserCard= '+CONVERT(varchar,@UserCard)
		if(@StaSex<>'')
			set @sql+=' and StaffInfo.StaSex= '''+CONVERT(varchar,@StaSex)+''''
		if(@IsWork<>2)
			set @sql+=' and StaffInfo.IsWork= '+CONVERT(varchar,@IsWork)
	exec(@sql)
	
go
exec StaffInfoAddSel 0,'','',2
go