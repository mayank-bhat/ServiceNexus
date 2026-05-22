show databases;
create database dbprojectdata;

create table dbprojectdata.tblCountry(CountryID int not null primary key auto_increment,CountryName varchar(50));
select * from dbprojectdata.tblCountry;

create table dbprojectdata.tblState(StateID int not null primary key auto_increment,StateName varchar(50), CountryID int, foreign key(CountryID) references dbprojectdata.tblCountry(CountryID));
select * from dbprojectdata.tblState;

create table dbprojectdata.tblDistrict(DistrictID int not null primary key auto_increment,DistrictName varchar(50),StateID int,foreign key(StateID) references dbprojectdata.tblState(StateID));
select * from dbprojectdata.tblDistrict;

create table dbprojectdata.tblTaluka(TalukaID int not null primary key auto_increment,TalukaName varchar(50),DistrictID int,foreign key(DistrictID) references dbprojectdata.tblDistrict(DistrictID));
select * from dbprojectdata.tblTaluka;

create table dbprojectdata.tblVillage(VillageID int not null primary key auto_increment,VillageName varchar(50),TalukaID int,foreign key(TalukaID) references dbprojectdata.tblTaluka(TalukaID));
select * from dbprojectdata.tblVillage;

create table dbprojectdata.tblUserLogin(UserID varchar(50) primary key ,Password varchar(50) not null);
select * from dbprojectdata.tblUserLogin;

select * from dbprojectdata.tblVehicle;
select * from dbprojectdata.tblVehicleType;

select * from dbprojectdata.tblRoot;
select * from dbprojectdata.tblAllocation;
select * from dbprojectdata.tbldesignation;

-- not run-------------------------------------------------------
create table dbprojectdata.tblRootStop(
RootStopID int primary key auto_increment not null, 
RootID int,
StationID int,
StopTime varchar(50),
foreign key (RootID) references dbprojectdata.tblRoot(RootID)
);



SET FOREIGN_KEY_CHECKS = 0;
delete from  dbprojectdata.tblState  where StateID=33;
SET FOREIGN_KEY_CHECKS = 1;

