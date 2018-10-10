-- Creating the data base
Create Database disk_inventory
go

--using the database created
use disk_inventory;

--Creating table for borrower, setting first, last, id, phone number, disk id, and checkout date
create table Borrower(
	brrowerID		int			Primary Key		Not Null,
	fname			char(50)	not null,
	lname			char(50),
	PhoneNum		Char(50),
	

);

--Creating the table for disk has borrower, setting disk ID, Checkout date, borrower id, and return date
Create table DiskHasBorrower (
	DiskID			int			Primary Key Not Null,
	CheckoutDate	DateTime	Not Null,
	brrowerID		int			Foreign key references Borrower(brrowerID) not null,
	returnDate		datetime
);

--creating the disk type table, settting the disk type, disk description, and the disk id
Create Table DiskType(
	DiskType		Char(50)	Primary Key		Not Null,
	diskdescription	Char(50)	not null,
	
);

--Create the table for the disk itself, set the disk id, name, release date, disk type, genre id, and status id
Create Table Disk(
	DiskID			int			Foreign Key References Disk(DiskID) Not Null,
	DiskName		char(50)	Not Null,
	RelDate			char(50)	Not Null,
	DiskType		char(50)	Not null,
	GenreID			int			Foreign Key References Genre(GenreID) Not Null,
	StatusCode		int			not null
);

-- create the table for the genre, set the genre ID, genreDescription and Disk ID
Create Table Genre(
	GenreID			int			Primary Key		Not NUll,
	genreDescription	char(50),
	
);

--Create table for if the disk has artist, set the disk id and the actor id
Create Table DiskHasArtist(
	DiskID			int		Foreign Key References Disk(DiskID) Not Null,
	ArtistID		int		Foreign Key References Artist(ArtistID)
);

--Create table for the artist, set the artist ID, first and last name, group name, artist type id, disk id, and actor id
Create Table Artist(
	ArtistId		int			Primary Key		Not Null,
	fname			char(50)	not null,
	lname			char(50),
	groupName		char(50),
	ArtistTypeID	int			Foreign Key References ArtistType(ArtistTypeID),

);

-- create table for artist type, set the artist type ID, artist description, and artist id
create table	ArtistType(
	ArtistTypeID	int		Primary Key		Not Null,
	artdescription	char(50)		not null,

);

--Create table for the status code, set the status code, the status description and the disk id
create table StatusCode(
	StatusCode		int		primary key		not null,
	statdescription	char(50),
	
);