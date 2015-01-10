CREATE TABLE [dbo].[Table]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [UserName] NCHAR(20) NOT NULL, 
    [Email] NCHAR(50) NOT NULL, 
    [Password] NCHAR(20) NOT NULL, 
    [PSUID] NCHAR(10) NOT NULL
)
