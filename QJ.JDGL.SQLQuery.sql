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
--������¼��
create table UserInfo
(
UserID int primary key identity(1,1),--�û���� 
UserName varchar(20)not null,--��¼��
UserPwd varchar(20) not null,--����
UserCard int--��� 1 �ϰ� 2���� 3Ա��
)
go
--����Ա����������¼��Ϣ
insert into UserInfo values('admin','admin',1)
insert into UserInfo values('123456','123456',2)
insert into UserInfo values('999999','999999',3)
go

if exists (select * from sys.tables where name='CustomInfo')
drop table CustomInfo
go
--�����˿���Ϣ��
create table CustomInfo
(
CusID int primary key identity(1,1),-- �˿ͱ�� ���� 
CusName varchar(20)not null,--�˿�����
CusSex char(2) not null,--�˿��Ա�
CusPhone varchar(20) not null,-- �˿��ֻ���
CusBodyId varchar(20) not null--�˿����֤��
)
go
--����˿���Ϣ
insert into CustomInfo values('���','��',12345678901,411481199001026243)
insert into CustomInfo values('С��','��',12345678902,411481199601026243)
insert into CustomInfo values('Ф˼','Ů',12345678903,411481199901026243)
insert into CustomInfo values('����','��',12345678904,411481199003026243)
go
select * from CustomInfo


if exists (select * from sys.tables where name='StaffInfo')
drop table StaffInfo
go
--����Ա����Ϣ��
create table StaffInfo
(
StaID int primary key identity(1,1),--Ա����� ����
UserID int not null references UserInfo(UserID),--��¼��� ���
StaName varchar(20)not null,-- Ա������
StaSex char(2) not null,-- Ա���Ա�
StaPhone varchar(20) not null,--Ա���ֻ���
StaCard varchar(20) not null,--Ա�����֤��
IsWork bit--Ա���Ƿ��ڸ�
)
go
--����Ա����Ϣ

insert into StaffInfo values(1,'����','��',12345678101,411481199001026243,1)
insert into StaffInfo values(2,'½��','��',12345678202,411481199601026243,1)
insert into StaffInfo values(3,'��˼','Ů',12345678303,411481199901026243,1)
insert into StaffInfo values(3,'����','��',12345678404,411481199003026243,0)
go
select * from StaffInfo


if exists (select * from sys.tables where name='ManagerInfo ')
drop table ManagerInfo 
go
--�����������Ϣ��
create table ManagerInfo 
(
ManID int primary key identity(1,1),--��� ���� 
UserID int not null references UserInfo(UserID),--��¼��� ���
ManName varchar(20)not null,--  ����
ManSex char(2) not null,-- �Ա�
ManCard  int,-- 0 ����1 �ϰ�
ManPhone varchar(20) not null--�ֻ���  
)
go
--���������Ա��Ϣ
insert into ManagerInfo values(3,'���','��',1,12345678888)
insert into ManagerInfo values(2,'����','��',0,12345678666)
insert into ManagerInfo values(2,'���','Ů',0,12345678668)

go
select * from ManagerInfo 


if exists (select * from sys.tables where name='RoomType ')
drop table RoomType 
go
--�����������ͱ�
create table RoomType 
(
RTypeID int primary key identity(1,1), --���ͱ�� ���� 
RooType varchar(20) not null,--��������
)
go
--���뷿������
insert into RoomType values('��׼��')
insert into RoomType values('˫�˼�')
insert into RoomType values('�����׷�')

select * from RoomType 


if exists (select * from sys.tables where name='RoomNum')
drop table RoomNum
go
--��������������
create table RoomNum 
(
NumID int primary key identity(1,1), --��� ����
RooNum varchar(20) not null--��������
)
go
insert into RoomNum values('һ����ס')
insert into RoomNum values('������ס')
select * from RoomNum
go

if exists (select * from sys.tables where name='RooRight')
drop table RooRight
go
--���������Ƿ�ȡ����
create table RooRight 
(
RightID int primary key identity(1,1), --��� ����
RooRight varchar(20) not null--�����ܷ�ȡ��
)
go
insert into RooRight values('����ȡ��')
insert into RooRight values('��ȡ��')
select * from RooRight
go

if exists (select * from sys.tables where name='RoomInfo')
drop table RoomInfo  
go
--����������Ϣ��
create table RoomInfo  
(
RooID int primary key identity(1,1), --������ ���� 
RTypeID int not null references RoomType(RTypeID),--���ͱ�� ���
NumID int references RoomNum(NumID),--������� ���
RightID int references RooRight(RightID),--ȡ����� ���
Rooname varchar(50)not null,--��������
RooPrice money not null,-- ����۸�
IsRoo bit-- �Ƿ����й˿�
)
go
--���뷿����Ϣ
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
--����������Ʒ��Ϣ��
create table THinguInfo   
(
ThiID int primary key identity(1,1),--��Ʒ��� ����
RooID int not null references RoomInfo(RooID),--������ ���
ThiName varchar(50)not null,--��Ʒ����
ThiPrice money not null,-- ��Ʒ�۸�
ThiNum int not null-- ��Ʒ����
)
go
--���뷿����Ʒ��Ϣ
insert into THinguInfo values(1,'���',5,1)
select * from THinguInfo 


if exists (select * from sys.tables where name='ShopInfo')
drop table ShopInfo     
go
--����������Ʒ���ѱ�
create table ShopInfo     
(
ShopID int primary key identity(1,1),--���ѱ�� ����
CusID int not null references CustomInfo(CusID),--�˿ͱ�� ���
ThiID int not null references THinguInfo(ThiID),--��Ʒ���  ���
ShopNum int not null,-- ��Ʒ����
ShopPrice money null--�����ܽ��
)
go
--���뷿����Ʒ����
--insert into UserInfo values(1,2,3,15)

select * from ShopInfo   


if exists (select * from sys.tables where name='CumrooInfo')
drop table CumrooInfo        
go
--�����˿�ס����Ϣ��
create table CumrooInfo        
(
CumID  int primary key identity(1,1),--ס����Ϣ��� ����
CusID int not null references CustomInfo(CusID),-- �˿ͱ�� ���
RooID int not null references RoomInfo(RooID),--������ ���
IsDamage bit,--�Ƿ��ж�����
IsDamageInfo varchar(100)null,--����Ʒ����
CusDatestart datetime not null,-- �˿���סʱ��
CusDateEnd  datetime null--�˿�����ʱ��
)
go
--����˿�ס����Ϣ
--insert into CumrooInfo values(1,1001,0,null,'2019-11-1','2019-11-3')

select * from CumrooInfo    


--�����������
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
--exec ins_kaifang  'ss','��','123456','123456789',1,1,1

--��ѯ�˿�ס����Ϣ
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
--�����˵���Ϣ��
create table BillInfo        
(
BilID int primary key identity(1,1),--�˵���� ���� 
CusID int not null references CustomInfo(CusID),-- �˿ͱ�� ���
RooID int not null references RoomInfo(RooID),--������  ���
CumID int not null references CumrooInfo(CumID),--ס����Ϣ��� ���
ShopID int not null references ShopInfo(ShopID),--���ѱ�� ���
Cumprice money--�˿������Ѷ�
)
go
--����˿�ס����Ϣ
--insert into BillInfo values(1,201,10001,1001,230)

select * from BillInfo   


if exists (select * from sys.tables where name='StatisticalInfo')
drop table StatisticalInfo        
go
--��������ͳ�Ʊ�
create table StatisticalInfo        
(
StatisticalNum int not null, --����ס��������
Statistical money null,--�����ܽ��
StatisticalDate datetime default getdate()--����
)
go
--���뷿��ͳ�Ʊ�
--insert into StatisticalInfo values(5,1000,'2019-11-4')

select * from StatisticalInfo   

--Ͷ����Ϣ��
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
--insert into tousu values('���','1002','����','������')
select * from tousu


if exists (select * from sys.procedures where name='UserInfo_selID')
drop proc UserInfo_selID
go
--������Ϣ��
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
insert into baoxiu values('����','1002','10000�ߴ����',GETDATE(),'',null)
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
exec StaffInfoAdd '123232','123456',1,'����','�Ա�','1234564234','343243242432423',3
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