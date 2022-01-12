CREATE DATABASE BulletinBoard;
GO

USE BulletinBoard;

CREATE TABLE Events (
  Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  Title NVARCHAR(50),
  Detail NVARCHAR(200),
  [Date] DATETIMEOFFSET,
  CreatedAt DATETIMEOFFSET NOT NULL, 
  UpdatedAt DATETIMEOFFSET NOT NULL
);

INSERT INTO Events (Title, Detail, [Date], CreatedAt, UpdatedAt) VALUES
(N'Capacitacion OCI Associated!', N'Detalle Evento Capacitacion OCI SAA', '2021-11-01', GETDATE(), GETDATE()),
(N'Capacitacion OCI Professional', N'Remember! Remember the Fifth of November', '2021-11-05', GETDATE(), GETDATE());

SELECT * FROM BulletinBoard.dbo.Events;