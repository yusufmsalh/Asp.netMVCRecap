USE [CustomerMangemnetDB]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 09/06/2018 06:54:18 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CstomerID] [int] IDENTITY(1,1) NOT NULL,
	[CstName] [nvarchar](100) NOT NULL,
	[CstDateOfBirth] [date] NOT NULL,
	[Gender] [nvarchar](6) NOT NULL,
	[CstEmail] [nvarchar](100) NULL,
	[CstAddress] [nvarchar](max) NULL,
	[CstPhoneNumber] [nvarchar](50) NULL,
	[CstNotes] [nvarchar](max) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CstomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([CstomerID], [CstName], [CstDateOfBirth], [Gender], [CstEmail], [CstAddress], [CstPhoneNumber], [CstNotes]) VALUES (1, N'Karim Mohamed ', CAST(N'1950-09-06' AS Date), N'Male', N'y@y.com', N'kjsafpaj', N'01008562899', N'dlkjaldladla')
INSERT [dbo].[Customer] ([CstomerID], [CstName], [CstDateOfBirth], [Gender], [CstEmail], [CstAddress], [CstPhoneNumber], [CstNotes]) VALUES (2, N'Mona Ahmed ', CAST(N'2018-02-06' AS Date), N'Female', N'llfls@ds.com', N'fdffd', N'01008562855', N'fdjfhsfushfish')
INSERT [dbo].[Customer] ([CstomerID], [CstName], [CstDateOfBirth], [Gender], [CstEmail], [CstAddress], [CstPhoneNumber], [CstNotes]) VALUES (3, N'1234567890', CAST(N'2018-06-09' AS Date), N'Male', N'llfls@dds.com', N'fdffd', N'01008562877', NULL)
INSERT [dbo].[Customer] ([CstomerID], [CstName], [CstDateOfBirth], [Gender], [CstEmail], [CstAddress], [CstPhoneNumber], [CstNotes]) VALUES (4, N'Amira Akaram', CAST(N'2018-06-01' AS Date), N'Female', N'llfls@g.com', N'fdffd', N'01008562877', NULL)
INSERT [dbo].[Customer] ([CstomerID], [CstName], [CstDateOfBirth], [Gender], [CstEmail], [CstAddress], [CstPhoneNumber], [CstNotes]) VALUES (5, N'dsddsdsdsds', CAST(N'2018-06-07' AS Date), N'Male', NULL, NULL, NULL, NULL)
INSERT [dbo].[Customer] ([CstomerID], [CstName], [CstDateOfBirth], [Gender], [CstEmail], [CstAddress], [CstPhoneNumber], [CstNotes]) VALUES (6, N'1234567890', CAST(N'2018-06-09' AS Date), N'Male', N'ajss@f.com', NULL, N'01008562877', NULL)
INSERT [dbo].[Customer] ([CstomerID], [CstName], [CstDateOfBirth], [Gender], [CstEmail], [CstAddress], [CstPhoneNumber], [CstNotes]) VALUES (7, N'1234567890', CAST(N'2018-06-01' AS Date), N'Female', N'llfls@yahoo.com', N'fdffd', N'01008562877', NULL)
INSERT [dbo].[Customer] ([CstomerID], [CstName], [CstDateOfBirth], [Gender], [CstEmail], [CstAddress], [CstPhoneNumber], [CstNotes]) VALUES (8, N'1234567890', CAST(N'2018-06-01' AS Date), N'Female', N'mkdsm@ffa.co', N'fdffd', N'01002877856', NULL)
INSERT [dbo].[Customer] ([CstomerID], [CstName], [CstDateOfBirth], [Gender], [CstEmail], [CstAddress], [CstPhoneNumber], [CstNotes]) VALUES (9, N'1234567890', CAST(N'2018-06-06' AS Date), N'Female', N'dsdsd@goijad.com', N'fdffd', N'01008562877', NULL)
INSERT [dbo].[Customer] ([CstomerID], [CstName], [CstDateOfBirth], [Gender], [CstEmail], [CstAddress], [CstPhoneNumber], [CstNotes]) VALUES (10, N'Ahmed Makram', CAST(N'2018-06-06' AS Date), N'Female', N'mkdsm@fd.com', N'fdffd', N'01008562877', NULL)
INSERT [dbo].[Customer] ([CstomerID], [CstName], [CstDateOfBirth], [Gender], [CstEmail], [CstAddress], [CstPhoneNumber], [CstNotes]) VALUES (11, N'1234567890', CAST(N'2018-06-01' AS Date), N'Female', NULL, N'fdffd', NULL, NULL)
INSERT [dbo].[Customer] ([CstomerID], [CstName], [CstDateOfBirth], [Gender], [CstEmail], [CstAddress], [CstPhoneNumber], [CstNotes]) VALUES (12, N'1234567890', CAST(N'2018-06-01' AS Date), N'Female', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Customer] OFF
