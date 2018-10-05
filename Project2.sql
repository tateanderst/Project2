Create Database disk_inventory
go

use disk_inventory;

create table Borrower(
	brrowerID		int			Primary Key		Not Null,
	fname			char(50),
	lname			char(50),
	PhoneNum		Char(50),
	DiskID			int,
	checkoutDate	DateTime

);

Create table DiskHasBorrower (
	DiskID			int			Primary Key		Not Null,
	CheckoutDate	DateTime	Not Null,
	BorrowerID		int			Not Null,
	returnDate		datetime
);

Create Table DiskType(
	DiskType		Char(50)	Primary Key		Not Null,
	diskdescription	Char(50),
	DiskID			int,		
);

Create Table Disk(
	DiskID			int			Primary Key		Not Null,
	DiskName		char(50)	Not Null,
	RelDate			char(50)	Not Null,
	DiskType		char(50),
	GenreID			int			Not Null,
	StatusID		int
);

Create Table Genre(
	GenreID			int			Primary Key		Not NUll,
	genreDescription	char(50),
	DiskID			int
);

Create Table DiskHasArtist(
	DiskID			int			Not Null,
	ActorID			int,
);

Create Table Artist(
	ArtistId		int			Primary Key		Not Null,
	fname			char(50)	not null,
	lname			char(50),
	groupName		char(50),
	ArtistTypeID	int,
	diskID			int,
	actorID			int,
);

create table	ArtistType(
	ArtisttypeID	int		Primary Key		Not Null,
	artdescription	char(50),
	ArtistID		int
);

create table StatusCode(
	StatusCode		int		primary key		not null,
	statdescription	char(50),
	DiskID			int
);