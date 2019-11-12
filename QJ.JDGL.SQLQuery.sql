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
StaID int primary key identity(1,101),--Ա����� ����
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
ManID int primary key identity(1,101),--��� ���� 
ManName varchar(20)not null,--  ����
ManSex char(2) not null,-- �Ա�
ManCard  int,-- 0 ����1 �ϰ�
ManPhone varchar(20) not null--�ֻ���  
)
go
--���������Ա��Ϣ
insert into ManagerInfo values('���','��',1,12345678888)
insert into ManagerInfo values('����','��',0,12345678666)
insert into ManagerInfo values('���','Ů',0,12345678668)
go
select * from ManagerInfo 


if exists (select * from sys.tables where name='RoomType ')
drop table RoomType 
go
--�����������ͱ�
create table RoomType 
(
RTypeID int primary key identity(1,1), --���ͱ�� ���� 
RooType varchar(20) not null--��������
)
go
--���뷿������
insert into RoomType values('��׼��')
insert into RoomType values('˫�˼�')
insert into RoomType values('�����׷�')

select * from RoomType 


if exists (select * from sys.tables where name='RoomInfo')
drop table RoomInfo  
go
--����������Ϣ��
create table RoomInfo  
(
RooID int primary key identity(1001,1), --������ ���� 
RTypeID int not null references RoomType(RTypeID),--���ͱ�� ���
Rooname varchar(50)not null,--��������
RooPrice money not null,-- ����۸�
IsRoo bit-- �Ƿ����й˿�
)
go
--���뷿����Ϣ
insert into RoomInfo values(1,101,168,0)
insert into RoomInfo values(1,201,168,0)
insert into RoomInfo values(2,202,200,0)
insert into RoomInfo values(2,203,200,0)
insert into RoomInfo values(3,302,888,0)
go
select * from RoomInfo  


if exists (select * from sys.tables where name='THinguInfo')
drop table THinguInfo   
go
--����������Ʒ��Ϣ��
create table THinguInfo   
(
ThiID int primary key identity(1,1001),--��Ʒ��� ����
RooID int not null references RoomInfo(RooID),--������ ���
ThiName varchar(50)not null,--��Ʒ����
ThiPrice money not null,-- ��Ʒ�۸�
ThiNum int not null-- ��Ʒ����

)
go
--���뷿����Ʒ��Ϣ
insert into THinguInfo values(1,'',3,3)

select * from THinguInfo 


if exists (select * from sys.tables where name='ShopInfo')
drop table ShopInfo     
go
--����������Ʒ���ѱ�
create table ShopInfo     
(
ShopID int primary key identity(1,1001),--���ѱ�� ����
CusID int not null references CustomInfo(CusID),--�˿ͱ�� ���
ThiID int not null references THinguInfo(ThiID),--��Ʒ���  ���
ShopNum int not null,-- ��Ʒ����
ShopPrice money null--�����ܽ��
)
go
--���뷿����Ʒ����
insert into UserInfo values(1,2,3,15)

select * from ShopInfo   


if exists (select * from sys.tables where name='CumrooInfo')
drop table CumrooInfo        
go
--�����˿�ס����Ϣ��
create table CumrooInfo        
(
CumID  int primary key identity(1,10001),--ס����Ϣ��� ����
CusID int not null references CustomInfo(CusID),-- �˿ͱ�� ���
RoomID int not null references RoomInfo(RooID),--������ ���
IsDamage bit,--�Ƿ��ж�����
IsDamageInfo varchar(100)null,--����Ʒ����
CusDatestart datetime not null,-- �˿���סʱ��
CusDateEnd  datetime null--�˿�����ʱ��
)
go
--����˿�ס����Ϣ
insert into CumrooInfo values(1,101,0,null,'2019-11-1','2019-11-3')

select * from CumrooInfo    


if exists (select * from sys.tables where name='BillInfo')
drop table BillInfo        
go
--�����˵���Ϣ��
create table BillInfo        
(
BilID int primary key identity(1,10000001),--�˵���� ���� 
CusID int not null references CustomInfo(CusID),-- �˿ͱ�� ���
RooID int not null references RoomInfo(RooID),--������  ���
CumID int not null references CumrooInfo(CumID),--ס����Ϣ��� ���
ShopID int not null references ShopInfo(ShopID),--���ѱ�� ���
Cumprice money--�˿������Ѷ�
)
go
--����˿�ס����Ϣ
insert into BillInfo values(1,201,10001,1001,230)

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
insert into StatisticalInfo values(5,1000,'2019-11-4')

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
insert into tousu values('���','1002','����','������')
select * from tousu


if exists (select * from sys.procedures where name='UserInfo_selID')
drop proc UserInfo_selID
go
--������¼���ѯ�洢����
create proc UserInfo_selID(@UserID int, @UserName varchar(20)='',@UserPwd int)
as
  declare @sql varchar(MAX)
  set @sql= @sql+ 'and like ''%'+@UserName+'%'''
go
exec UserInfo_selID 1,'���',1234

select * from UserInfo where UserName like '%��%'


