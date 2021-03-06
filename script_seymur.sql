USE [test_seymur]
GO
/****** Object:  Table [dbo].[Person]    Script Date: 6/7/2017 1:25:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[surname] [varchar](50) NOT NULL,
	[age] [int] NOT NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Seymur]    Script Date: 6/7/2017 1:25:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seymur](
	[id] [int] NOT NULL,
	[person_id] [int] NOT NULL
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Seymur]  WITH CHECK ADD  CONSTRAINT [FK_Seymur_Person] FOREIGN KEY([person_id])
REFERENCES [dbo].[Person] ([id])
GO
ALTER TABLE [dbo].[Seymur] CHECK CONSTRAINT [FK_Seymur_Person]
GO
