create Database Course
use Course

create Table Teachers(
	[Id] int primary key identity(1,1),
	[Name] nvarchar(20) Not Null,
	[Surname] nvarchar(20) Not Null,
	[Email] nvarchar(50) unique,
	[Age] int Not Null,
	[Salary] DECIMAL(10, 2)
)

insert into Teachers([Name],[Surname],[Email],[Age],[Salary])
values
('Mahir','Safarov','mahirsafarovv@mail.ru',20,700),
('Cavid','Bashirov','bashirov@mail.ru',29,2500),
('Ramil','Allahverdiyev','ramil@mail.ru',26,1000),
('Musa','Afandiyev','musa@gmail.com',19,1500),
('Fatima','Bayramova','bayram@gmail.com',20,2000),
('Nicat','Novruzzade','novruz@gmail.com',21,900),
('Rasul','Hasanov','result@gmail.com',15,5000)

truncate table Teachers
--Task 1.1
declare @avgAge int
select @avgAge = AVG([Age]) from Teachers
select * from Teachers where [Age] > @avgAge
--Task 1.2
select * from Teachers where [Salary] between 1000 and 3000
--Task 1.3
--declare @endOfEmail nvarchar(50)
--select @endOfEmail = RIGHT([Email],CHARINDEX('@', REVERSE([Email]))-1) FROM Teachers
--select [Name],[Surname] from Teachers where @endOfEmail = 'mail.ru'

--select [Name],[Surname] from Teachers where RIGHT([Email],CHARINDEX('@', REVERSE([Email]))-1) = 'mail.ru'

select [Name],[Surname] from Teachers where [Email] Like '%mail.ru'
--Task 1.4
select * from Teachers where [Name] Like 'C%'


