﻿CREATE TABLE "User" (
	Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
	"Name" VARCHAR(55),
	Username VARCHAR(55) NOT NULL,
	Email VARCHAR(55) NOT NULL,
	"Password" VARCHAR(55) NOT NULL
);

CREATE TABLE Issue (
	Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
	UserId INTEGER NOT NULL,
	Content VARCHAR(255) NOT NULL,
	Active BIT NOT NULL,
	CONSTRAINT FK_Issue_User FOREIGN KEY(UserId) REFERENCES "User"(Id)
);

CREATE TABLE CheckIn (
	Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
	UserId INTEGER NOT NULL,
	AlertSeconds INTEGER NOT NULL,
	CONSTRAINT FK_CheckIn_User FOREIGN KEY(UserId) REFERENCES "User"(Id)
);

CREATE TABLE Advice (
	Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
	IssueId INTEGER NOT NULL,
	Content VARCHAR(255) NOT NULL,
	Active BIT,
	CONSTRAINT FK_Advice_Issue FOREIGN KEY(IssueId) REFERENCES Issue(Id)
);