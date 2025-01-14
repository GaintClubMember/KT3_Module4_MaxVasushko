CREATE DATABASE UsersDB; 
USE [UsersDB]
GO
/****** Object:  Table [dbo].[AuthTypes]    Script Date: 10.10.2024 13:28:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuthTypes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_AuthTypes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genders]    Script Date: 10.10.2024 13:28:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Genders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 10.10.2024 13:28:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 10.10.2024 13:28:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role_id] [int] NOT NULL,
	[lastname] [nvarchar](100) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[ptronymic] [nvarchar](100) NOT NULL,
	[email] [nvarchar](100) NOT NULL,
	[login] [nvarchar](100) NOT NULL,
	[password] [nvarchar](100) NOT NULL,
	[phone] [nvarchar](100) NOT NULL,
	[passportSeries] [nvarchar](100) NOT NULL,
	[passportNumber] [nvarchar](100) NOT NULL,
	[birth] [date] NOT NULL,
	[lastAuth] [datetime] NULL,
	[authType_id] [int] NULL,
	[gender_id] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AuthTypes] ON 

INSERT [dbo].[AuthTypes] ([id], [name]) VALUES (1, N'Неуспешно')
INSERT [dbo].[AuthTypes] ([id], [name]) VALUES (2, N'Успешно')
SET IDENTITY_INSERT [dbo].[AuthTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[Genders] ON 

INSERT [dbo].[Genders] ([id], [name]) VALUES (1, N'женский')
INSERT [dbo].[Genders] ([id], [name]) VALUES (2, N'мужской')
SET IDENTITY_INSERT [dbo].[Genders] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([id], [name]) VALUES (1, N'Администратор')
INSERT [dbo].[Roles] ([id], [name]) VALUES (2, N'Исполнитель')
INSERT [dbo].[Roles] ([id], [name]) VALUES (3, N'Менеджер')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id], [role_id], [lastname], [name], [ptronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [birth], [lastAuth], [authType_id], [gender_id]) VALUES (1, 3, N'Акимов', N'Ян', N'Алексеевич', N'gohufreilagrau-3818@yopmail.com', N'akimovya', N'bn069Caj', N'7817855837', N'2367', N'558134', CAST(N'1993-07-03' AS Date), NULL, 2, 2)
INSERT [dbo].[Users] ([id], [role_id], [lastname], [name], [ptronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [birth], [lastAuth], [authType_id], [gender_id]) VALUES (2, 2, N'Гончарова', N'Ульяна', N'Львовна', N'xawugosune-1385@yopmail.com', N'goncharovaul', N'pW4qZhL!', N'2309068815', N'7101', N'669343', CAST(N'1975-06-22' AS Date), NULL, 2, 1)
INSERT [dbo].[Users] ([id], [role_id], [lastname], [name], [ptronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [birth], [lastAuth], [authType_id], [gender_id]) VALUES (3, 1, N'Анохина', N'Елизавета', N'Матвеевна', N'leuttevitrafo1998@mail.ru', N'anochinaem', N'y6UNmaJg', N'5554448316', N'3455', N'719630', CAST(N'1991-08-16' AS Date), NULL, 2, 1)
INSERT [dbo].[Users] ([id], [role_id], [lastname], [name], [ptronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [birth], [lastAuth], [authType_id], [gender_id]) VALUES (4, 3, N'Николаев', N'Илья', N'Владиславович', N'frapreubrulloba1141@yandex.ru', N'nickolaeviv', N'ebOt@4y$', N'3926824442', N'2377', N'871623', CAST(N'1970-12-22' AS Date), NULL, 2, 2)
INSERT [dbo].[Users] ([id], [role_id], [lastname], [name], [ptronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [birth], [lastAuth], [authType_id], [gender_id]) VALUES (5, 2, N'Уткин', N'Дмитрий', N'Платонович', N'zapramaxesu-7741@yopmail.com', N'utkindp', N'zQt8g@GH', N'8364290386', N'8755', N'921148', CAST(N'1999-05-04' AS Date), NULL, 1, 2)
INSERT [dbo].[Users] ([id], [role_id], [lastname], [name], [ptronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [birth], [lastAuth], [authType_id], [gender_id]) VALUES (6, 2, N'Куликова', N'Стефания', N'Никитична', N'rouzecroummegre-3899@yopmail.com', N'kulikovasn', N'TCmE7Jon', N'2839453092', N'4355', N'104594', CAST(N'1994-12-06' AS Date), NULL, 2, 1)
INSERT [dbo].[Users] ([id], [role_id], [lastname], [name], [ptronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [birth], [lastAuth], [authType_id], [gender_id]) VALUES (7, 2, N'Волков', N'Егор', N'Матвеевич', N'ziyeuddocrabri-4748@@yopmail.com', N'volkovem', N'pbgO3Vv5', N'6213593669', N'2791', N'114390', CAST(N'1995-03-28' AS Date), NULL, 2, 2)
INSERT [dbo].[Users] ([id], [role_id], [lastname], [name], [ptronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [birth], [lastAuth], [authType_id], [gender_id]) VALUES (8, 1, N'Соколова', N'Софья', N'Георгиевна', N'ketameissoinnei-1951@yopmail.com', N'sokolovasg', N'lITaH?Bs', N'4405610314', N'5582', N'126286', CAST(N'1977-03-27' AS Date), NULL, 1, 1)
INSERT [dbo].[Users] ([id], [role_id], [lastname], [name], [ptronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [birth], [lastAuth], [authType_id], [gender_id]) VALUES (9, 3, N'Голубева', N'Полина', N'Андреевна', N'yipraubaponou-5849@yopmail.com', N'golubevapa', N's|ke*p@~', N'3319182434', N'2978', N'133653', CAST(N'1975-04-12' AS Date), NULL, 2, 1)
INSERT [dbo].[Users] ([id], [role_id], [lastname], [name], [ptronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [birth], [lastAuth], [authType_id], [gender_id]) VALUES (10, 3, N'Вишневская', N'Мария', N'Андреевна', N'crapedocouca-3572@yopmail.com', N'vishnevskayama', N'OCaywHJZ', N'4932193942', N'7512', N'141956', CAST(N'1975-12-23' AS Date), NULL, 2, 1)
INSERT [dbo].[Users] ([id], [role_id], [lastname], [name], [ptronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [birth], [lastAuth], [authType_id], [gender_id]) VALUES (11, 3, N'Васильева', N'Арина', N'Данииловна', N'ceigoixakaunni-9227@yopmail.com', N'vasilevad', N'DAWuV%#u', N'4074855030', N'5046', N'158433', CAST(N'2000-01-22' AS Date), NULL, 1, 1)
INSERT [dbo].[Users] ([id], [role_id], [lastname], [name], [ptronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [birth], [lastAuth], [authType_id], [gender_id]) VALUES (12, 3, N'Павлов', N'Дмитрий', N'Максимович', N'yeimmeiwauzomo-7054@yopmail.com', N'pavlovdm', N'ptoED%zE', N'9194782497', N'2460', N'169505', CAST(N'1983-10-03' AS Date), NULL, 1, 2)
INSERT [dbo].[Users] ([id], [role_id], [lastname], [name], [ptronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [birth], [lastAuth], [authType_id], [gender_id]) VALUES (13, 2, N'Горбунова', N'Мирослава', N'Артуровна', N'pixil59@gmail.com', N'gorbunovama', N'ZFR2~Zl*', N'4828029580', N'3412', N'174593', CAST(N'1998-03-03' AS Date), NULL, 2, 1)
INSERT [dbo].[Users] ([id], [role_id], [lastname], [name], [ptronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [birth], [lastAuth], [authType_id], [gender_id]) VALUES (14, 3, N'Демина', N'София', N'Романовна', N'deummecillummu-4992@mail.ru', N'deminasr', N'D%DVKyDN', N'4559446449', N'4950', N'183034', CAST(N'1993-06-08' AS Date), NULL, 1, 1)
INSERT [dbo].[Users] ([id], [role_id], [lastname], [name], [ptronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [birth], [lastAuth], [authType_id], [gender_id]) VALUES (15, 2, N'Петрова', N'Алина', N'Робертовна', N'vilagajaunne-5170@yandex.ru', N'petrovaar', N'z7ZE?8N5', N'7103882563', N'5829', N'219464', CAST(N'1980-09-23' AS Date), NULL, 2, 1)
INSERT [dbo].[Users] ([id], [role_id], [lastname], [name], [ptronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [birth], [lastAuth], [authType_id], [gender_id]) VALUES (16, 2, N'Плотников', N'Григорий', N'Александрович', N'frusubroppotou656@yandex.ru', N'plotnikovga', N'yh+S4@yc', N'7594523846', N'6443', N'208059', CAST(N'1991-03-13' AS Date), NULL, 2, 2)
INSERT [dbo].[Users] ([id], [role_id], [lastname], [name], [ptronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [birth], [lastAuth], [authType_id], [gender_id]) VALUES (17, 2, N'Прохорова', N'Есения', N'Тимофеевна', N'vhopkins@lewis-mullen.com', N'prochorovaet', N'wLF186dB', N'6878011332', N'7079', N'213265', CAST(N'1998-04-14' AS Date), NULL, NULL, 1)
INSERT [dbo].[Users] ([id], [role_id], [lastname], [name], [ptronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [birth], [lastAuth], [authType_id], [gender_id]) VALUES (18, 2, N'Чернов', N'Алексей', N'Егорович', N'nlewis@yahoo.com', N'chernovae', N'Sjkr*1zV', N'4257832253', N'8207', N'522702', CAST(N'1980-04-16' AS Date), NULL, 2, 2)
INSERT [dbo].[Users] ([id], [role_id], [lastname], [name], [ptronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [birth], [lastAuth], [authType_id], [gender_id]) VALUES (19, 3, N'Горбунов', N'Степан', N'Артёмович', N'garciadavid@mckinney-mcbride.com', N'gorbunovsa', N'hFhK%$JI', N'8894494391', N'9307', N'232158', CAST(N'1993-07-23' AS Date), NULL, 2, 2)
INSERT [dbo].[Users] ([id], [role_id], [lastname], [name], [ptronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [birth], [lastAuth], [authType_id], [gender_id]) VALUES (20, 2, N'Рябинина', N'Софья', N'Артёмовна', N'loudittoimmolau1900@gmail.com', N'ryabininasa', N'&yw1da4K', N'8253018250', N'1357', N'242839', CAST(N'1990-06-01' AS Date), NULL, NULL, 1)
INSERT [dbo].[Users] ([id], [role_id], [lastname], [name], [ptronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [birth], [lastAuth], [authType_id], [gender_id]) VALUES (21, 2, N'Козлова', N'Яна', N'Даниловна', N'hittuprofassa4984@mail.com', N'kozlovayd', N'wCH7dl3k', N'3973342086', N'1167', N'256636', CAST(N'1987-12-21' AS Date), NULL, NULL, 1)
INSERT [dbo].[Users] ([id], [role_id], [lastname], [name], [ptronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [birth], [lastAuth], [authType_id], [gender_id]) VALUES (22, 3, N'Лукьянова', N'Ульяна', N'Олеговна', N'freineiciweijau888@yandex.ru', N'lyckyanovayo', N'JadQ24D5', N'2415703040', N'1768', N'266986', CAST(N'1981-10-22' AS Date), NULL, NULL, 1)
INSERT [dbo].[Users] ([id], [role_id], [lastname], [name], [ptronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [birth], [lastAuth], [authType_id], [gender_id]) VALUES (23, 2, N'Кондрашова', N'Арина', N'Ивановна', N'jessica84@hotmail.com', N'kondrashovai', N'YlBz$8vJ', N'7134628265', N'1710', N'427875', CAST(N'1976-12-22' AS Date), NULL, 1, 1)
INSERT [dbo].[Users] ([id], [role_id], [lastname], [name], [ptronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [birth], [lastAuth], [authType_id], [gender_id]) VALUES (24, 3, N'Быкова', N'Виктория', N'Тимуровна', N'nokupekidda2001@gmail.com', N'bykovavt', N'nx8Z$K98', N'8548222331', N'1806', N'289145', CAST(N'1973-06-14' AS Date), NULL, NULL, 1)
INSERT [dbo].[Users] ([id], [role_id], [lastname], [name], [ptronymic], [email], [login], [password], [phone], [passportSeries], [passportNumber], [birth], [lastAuth], [authType_id], [gender_id]) VALUES (25, 2, N'Гуляев', N'Тимофей', N'Даниилович', N'ginaritter@schneider-buchanan.com', N'gylyaevtd', N'lz$kp1?f', N'4397136117', N'1587', N'291249', CAST(N'1987-02-05' AS Date), CAST(N'2023-02-01T13:07:20.000' AS DateTime), 1, 2)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_AuthTypes] FOREIGN KEY([authType_id])
REFERENCES [dbo].[AuthTypes] ([id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_AuthTypes]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Genders] FOREIGN KEY([gender_id])
REFERENCES [dbo].[Genders] ([id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Genders]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([role_id])
REFERENCES [dbo].[Roles] ([id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
