USE [movies2]
/****** Object:  Table [dbo].[tblGenres]    Script Date: 11.01.2013 18:04:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblGenres](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](1024) NULL,
	[de-DE] [nvarchar](50) NULL,
	[en-EN] [nvarchar](50) NULL,
 CONSTRAINT [PK__tblGenres__7C8480AE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblImages]    Script Date: 11.01.2013 18:04:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblImages](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ItemID] [int] NOT NULL,
	[SmallImage] [image] NULL,
	[MediumImage] [image] NULL,
	[LargeImage] [image] NULL,
 CONSTRAINT [PK_tblImages] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblItems]    Script Date: 11.01.2013 18:04:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblItems](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[MediaTypeID] [int] NOT NULL,
	[MediaFormatID] [int] NOT NULL,
	[GenreID] [int] NOT NULL,
	[AuthorID] [int] NULL,
	[DirectorID] [int] NULL,
	[Actor1ID] [int] NULL,
	[Actor2ID] [int] NULL,
	[PublishDate] [nvarchar](50) NULL,
	[EAN] [nvarchar](13) NULL,
	[OwnerID] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[Actor3ID] [int] NULL,
	[AmazonSalesRank] [int] NULL,
	[AudienceRank] [nvarchar](255) NULL,
	[BorrowedByID] [int] NULL,
	[BorrowedSince] [datetime] NULL,
	[ASIN] [nvarchar](50) NULL,
	[SmallImageUrl] [nvarchar](255) NULL,
	[MediumImageUrl] [nvarchar](255) NULL,
	[LargeImageUrl] [nvarchar](255) NULL,
	[BorrowCount] [int] NOT NULL,
	[DateAdded] [datetime] NOT NULL,
	[ImageID] [bigint] NULL,
	[GenreIDs] [nvarchar](200) NULL,
 CONSTRAINT [PK__tblItems__164452B1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblLents]    Script Date: 11.01.2013 18:04:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLents](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ItemID] [int] NULL,
	[LentDate] [datetime] NULL,
	[LenderID] [int] NULL,
 CONSTRAINT [PK__tblLents__1273C1CD] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblMediaFormat]    Script Date: 11.01.2013 18:04:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMediaFormat](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](1024) NULL,
 CONSTRAINT [PK__tblMediaFormat__0425A276] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblMediaType]    Script Date: 11.01.2013 18:04:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMediaType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](1024) NULL,
 CONSTRAINT [PK__tblMediaType__023D5A04] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblMovieItems]    Script Date: 11.01.2013 18:04:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMovieItems](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[MediaTypeID] [int] NOT NULL,
	[MediaFormatID] [int] NOT NULL,
	[GenreID] [int] NOT NULL,
	[AuthorID] [int] NULL,
	[DirectorID] [int] NULL,
	[Actor1ID] [int] NULL,
	[Actor2ID] [int] NULL,
	[PublishDate] [nvarchar](50) NULL,
	[EAN] [nvarchar](13) NULL,
	[OwnerID] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[Actor3ID] [int] NULL,
	[AmazonSalesRank] [int] NULL,
	[AudienceRank] [nvarchar](255) NULL,
	[BorrowedByID] [int] NULL,
	[BorrowedSince] [datetime] NULL,
	[ASIN] [nvarchar](50) NULL,
	[SmallImageUrl] [nvarchar](255) NULL,
	[MediumImageUrl] [nvarchar](255) NULL,
	[LargeImageUrl] [nvarchar](255) NULL,
	[BorrowCount] [int] NOT NULL,
	[DateAdded] [datetime] NOT NULL,
	[ImageID] [bigint] NULL,
 CONSTRAINT [PK__tblMovieItems] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblParticipants]    Script Date: 11.01.2013 18:04:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblParticipants](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ParticipantTypeID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](1024) NULL,
 CONSTRAINT [PK__tblParticipants__145C0A3F] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblParticipantType]    Script Date: 11.01.2013 18:04:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblParticipantType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](1024) NULL,
 CONSTRAINT [PK__tblParticipantTy__00551192] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblRatings]    Script Date: 11.01.2013 18:04:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRatings](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ItemID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[Comment] [nvarchar](500) NULL,
	[Rating] [int] NOT NULL,
	[Subject] [nvarchar](255) NULL,
 CONSTRAINT [PK_tblRatings] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblRoles]    Script Date: 11.01.2013 18:04:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRoles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Rolename] [nvarchar](40) NOT NULL,
	[ApplicationName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_tblRoles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblSettings]    Script Date: 11.01.2013 18:04:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSettings](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Updated] [datetime] NOT NULL,
	[Name] [nvarchar](150) NULL,
	[Value] [nvarchar](2048) NULL,
 CONSTRAINT [PK_tblSettings] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblUsers]    Script Date: 11.01.2013 18:04:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUsers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](128) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Password] [nvarchar](128) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Fon] [nvarchar](25) NULL,
	[ApplicationName] [nvarchar](255) NULL,
	[PasswordQuestion] [nvarchar](255) NULL,
	[PasswordAnswer] [nvarchar](255) NULL,
	[IsApproved] [bit] NULL,
	[IsOnLine] [bit] NULL,
	[IsLockedOut] [bit] NULL,
	[LastActivityDate] [datetime] NULL,
	[LastLoginDate] [datetime] NULL,
	[LastPasswordChangedDate] [datetime] NULL,
	[CreationDate] [datetime] NULL,
	[LastLockedOutDate] [datetime] NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NULL,
	[FailedPasswordAnswerAttemptWindowStart] [datetime] NULL,
	[FailureCount] [int] NULL,
	[FailedPasswordAttemptCount] [int] NULL,
	[FailedPasswordAnswerAttemptCount] [int] NULL,
 CONSTRAINT [PK_tblUsers_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblUsersInRoles]    Script Date: 11.01.2013 18:04:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUsersInRoles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[RoleName] [nvarchar](40) NOT NULL,
	[ApplicationName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_UsersInRoles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[tblItems] ADD  CONSTRAINT [DF_tblItems_BorrowedSince]  DEFAULT (((1)/(1))/(1970)) FOR [BorrowedSince]
GO
ALTER TABLE [dbo].[tblItems] ADD  CONSTRAINT [DF_tblItems_BorrowCount]  DEFAULT ((0)) FOR [BorrowCount]
GO
ALTER TABLE [dbo].[tblItems] ADD  CONSTRAINT [DF_tblItems_DateAdded]  DEFAULT (((1)/(1))/(1970)) FOR [DateAdded]
GO
ALTER TABLE [dbo].[tblItems] ADD  CONSTRAINT [DF_tblItems_ImageID]  DEFAULT ((0)) FOR [ImageID]
GO
ALTER TABLE [dbo].[tblMovieItems] ADD  CONSTRAINT [DF_tblMovieItems_BorrowedSince]  DEFAULT (((1)/(1))/(1970)) FOR [BorrowedSince]
GO
ALTER TABLE [dbo].[tblMovieItems] ADD  CONSTRAINT [DF_tblMovieItems_BorrowCount]  DEFAULT ((0)) FOR [BorrowCount]
GO
ALTER TABLE [dbo].[tblMovieItems] ADD  CONSTRAINT [DF_tblMovieItems_DateAdded]  DEFAULT (((1)/(1))/(1970)) FOR [DateAdded]
GO
ALTER TABLE [dbo].[tblMovieItems] ADD  CONSTRAINT [DF_tblMovieItems_ImageID]  DEFAULT ((0)) FOR [ImageID]
GO
ALTER TABLE [dbo].[tblRatings] ADD  CONSTRAINT [DF_tblRatings_Rating]  DEFAULT ((0)) FOR [Rating]
GO
ALTER TABLE [dbo].[tblSettings] ADD  CONSTRAINT [DF_tblSettings_Updated]  DEFAULT (getdate()) FOR [Updated]
GO
ALTER TABLE [dbo].[tblUsers] ADD  CONSTRAINT [DF_tblUsers_IsApproved]  DEFAULT ((0)) FOR [IsApproved]
GO
ALTER TABLE [dbo].[tblUsers] ADD  CONSTRAINT [DF_tblUsers_IsOnLine]  DEFAULT ((0)) FOR [IsOnLine]
GO
ALTER TABLE [dbo].[tblUsers] ADD  CONSTRAINT [DF_tblUsers_IsLockedOut]  DEFAULT ((0)) FOR [IsLockedOut]
GO
ALTER TABLE [dbo].[tblUsers] ADD  CONSTRAINT [DF_tblUsers_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
ALTER TABLE [dbo].[tblUsers] ADD  CONSTRAINT [DF_tblUsers_FailureCount]  DEFAULT ((0)) FOR [FailureCount]
GO
ALTER TABLE [dbo].[tblUsers] ADD  CONSTRAINT [DF_tblUsers_FailedPasswordAttemptCount]  DEFAULT ((0)) FOR [FailedPasswordAttemptCount]
GO
ALTER TABLE [dbo].[tblUsers] ADD  CONSTRAINT [DF_tblUsers_FailedPasswordAnswerAttemptCount]  DEFAULT ((0)) FOR [FailedPasswordAnswerAttemptCount]
GO
ALTER TABLE [dbo].[tblItems]  WITH CHECK ADD  CONSTRAINT [FK_tblItems_tblGenres] FOREIGN KEY([GenreID])
REFERENCES [dbo].[tblGenres] ([ID])
GO
ALTER TABLE [dbo].[tblItems] CHECK CONSTRAINT [FK_tblItems_tblGenres]
GO
ALTER TABLE [dbo].[tblItems]  WITH CHECK ADD  CONSTRAINT [FK_tblItems_tblMediaFormat] FOREIGN KEY([MediaFormatID])
REFERENCES [dbo].[tblMediaFormat] ([ID])
GO
ALTER TABLE [dbo].[tblItems] CHECK CONSTRAINT [FK_tblItems_tblMediaFormat]
GO
ALTER TABLE [dbo].[tblItems]  WITH CHECK ADD  CONSTRAINT [FK_tblItems_tblMediaType] FOREIGN KEY([MediaTypeID])
REFERENCES [dbo].[tblMediaType] ([ID])
GO
ALTER TABLE [dbo].[tblItems] CHECK CONSTRAINT [FK_tblItems_tblMediaType]
GO
ALTER TABLE [dbo].[tblItems]  WITH CHECK ADD  CONSTRAINT [FK_tblItems_tblParticipants] FOREIGN KEY([Actor1ID])
REFERENCES [dbo].[tblParticipants] ([ID])
GO
ALTER TABLE [dbo].[tblItems] CHECK CONSTRAINT [FK_tblItems_tblParticipants]
GO
ALTER TABLE [dbo].[tblItems]  WITH CHECK ADD  CONSTRAINT [FK_tblItems_tblParticipants1] FOREIGN KEY([Actor2ID])
REFERENCES [dbo].[tblParticipants] ([ID])
GO
ALTER TABLE [dbo].[tblItems] CHECK CONSTRAINT [FK_tblItems_tblParticipants1]
GO
ALTER TABLE [dbo].[tblItems]  WITH CHECK ADD  CONSTRAINT [FK_tblItems_tblParticipants2] FOREIGN KEY([Actor3ID])
REFERENCES [dbo].[tblParticipants] ([ID])
GO
ALTER TABLE [dbo].[tblItems] CHECK CONSTRAINT [FK_tblItems_tblParticipants2]
GO
ALTER TABLE [dbo].[tblItems]  WITH CHECK ADD  CONSTRAINT [FK_tblItems_tblParticipants3] FOREIGN KEY([DirectorID])
REFERENCES [dbo].[tblParticipants] ([ID])
GO
ALTER TABLE [dbo].[tblItems] CHECK CONSTRAINT [FK_tblItems_tblParticipants3]
GO
ALTER TABLE [dbo].[tblItems]  WITH CHECK ADD  CONSTRAINT [FK_tblItems_tblParticipants4] FOREIGN KEY([AuthorID])
REFERENCES [dbo].[tblParticipants] ([ID])
GO
ALTER TABLE [dbo].[tblItems] CHECK CONSTRAINT [FK_tblItems_tblParticipants4]
GO
ALTER TABLE [dbo].[tblItems]  WITH CHECK ADD  CONSTRAINT [FK_tblItems_tblUsers] FOREIGN KEY([OwnerID])
REFERENCES [dbo].[tblUsers] ([ID])
GO
ALTER TABLE [dbo].[tblItems] CHECK CONSTRAINT [FK_tblItems_tblUsers]
GO
ALTER TABLE [dbo].[tblLents]  WITH CHECK ADD  CONSTRAINT [FK_tblLents_tblItems] FOREIGN KEY([ItemID])
REFERENCES [dbo].[tblItems] ([ID])
GO
ALTER TABLE [dbo].[tblLents] CHECK CONSTRAINT [FK_tblLents_tblItems]
GO
ALTER TABLE [dbo].[tblMovieItems]  WITH CHECK ADD  CONSTRAINT [FK_tblMovieItems_tblGenres] FOREIGN KEY([GenreID])
REFERENCES [dbo].[tblGenres] ([ID])
GO
ALTER TABLE [dbo].[tblMovieItems] CHECK CONSTRAINT [FK_tblMovieItems_tblGenres]
GO
ALTER TABLE [dbo].[tblMovieItems]  WITH CHECK ADD  CONSTRAINT [FK_tblMovieItems_tblMediaFormat] FOREIGN KEY([MediaFormatID])
REFERENCES [dbo].[tblMediaFormat] ([ID])
GO
ALTER TABLE [dbo].[tblMovieItems] CHECK CONSTRAINT [FK_tblMovieItems_tblMediaFormat]
GO
ALTER TABLE [dbo].[tblMovieItems]  WITH CHECK ADD  CONSTRAINT [FK_tblMovieItems_tblMediaType] FOREIGN KEY([MediaTypeID])
REFERENCES [dbo].[tblMediaType] ([ID])
GO
ALTER TABLE [dbo].[tblMovieItems] CHECK CONSTRAINT [FK_tblMovieItems_tblMediaType]
GO
ALTER TABLE [dbo].[tblMovieItems]  WITH CHECK ADD  CONSTRAINT [FK_tblMovieItems_tblParticipants] FOREIGN KEY([Actor1ID])
REFERENCES [dbo].[tblParticipants] ([ID])
GO
ALTER TABLE [dbo].[tblMovieItems] CHECK CONSTRAINT [FK_tblMovieItems_tblParticipants]
GO
ALTER TABLE [dbo].[tblMovieItems]  WITH CHECK ADD  CONSTRAINT [FK_tblMovieItems_tblParticipants1] FOREIGN KEY([Actor2ID])
REFERENCES [dbo].[tblParticipants] ([ID])
GO
ALTER TABLE [dbo].[tblMovieItems] CHECK CONSTRAINT [FK_tblMovieItems_tblParticipants1]
GO
ALTER TABLE [dbo].[tblMovieItems]  WITH CHECK ADD  CONSTRAINT [FK_tblMovieItems_tblParticipants2] FOREIGN KEY([Actor3ID])
REFERENCES [dbo].[tblParticipants] ([ID])
GO
ALTER TABLE [dbo].[tblMovieItems] CHECK CONSTRAINT [FK_tblMovieItems_tblParticipants2]
GO
ALTER TABLE [dbo].[tblMovieItems]  WITH CHECK ADD  CONSTRAINT [FK_tblMovieItems_tblParticipants3] FOREIGN KEY([DirectorID])
REFERENCES [dbo].[tblParticipants] ([ID])
GO
ALTER TABLE [dbo].[tblMovieItems] CHECK CONSTRAINT [FK_tblMovieItems_tblParticipants3]
GO
ALTER TABLE [dbo].[tblMovieItems]  WITH CHECK ADD  CONSTRAINT [FK_tblMovieItems_tblParticipants4] FOREIGN KEY([AuthorID])
REFERENCES [dbo].[tblParticipants] ([ID])
GO
ALTER TABLE [dbo].[tblMovieItems] CHECK CONSTRAINT [FK_tblMovieItems_tblParticipants4]
GO
ALTER TABLE [dbo].[tblMovieItems]  WITH CHECK ADD  CONSTRAINT [FK_tblMovieItems_tblUsers] FOREIGN KEY([OwnerID])
REFERENCES [dbo].[tblUsers] ([ID])
GO
ALTER TABLE [dbo].[tblMovieItems] CHECK CONSTRAINT [FK_tblMovieItems_tblUsers]
GO
ALTER TABLE [dbo].[tblParticipants]  WITH CHECK ADD  CONSTRAINT [FK_tblParticipants_tblParticipantType] FOREIGN KEY([ParticipantTypeID])
REFERENCES [dbo].[tblParticipantType] ([ID])
GO
ALTER TABLE [dbo].[tblParticipants] CHECK CONSTRAINT [FK_tblParticipants_tblParticipantType]
GO
ALTER TABLE [dbo].[tblRatings]  WITH CHECK ADD  CONSTRAINT [FK_tblRatings_tblItems] FOREIGN KEY([ItemID])
REFERENCES [dbo].[tblItems] ([ID])
GO
ALTER TABLE [dbo].[tblRatings] CHECK CONSTRAINT [FK_tblRatings_tblItems]
GO
ALTER TABLE [dbo].[tblRatings]  WITH CHECK ADD  CONSTRAINT [FK_tblRatings_tblUsers] FOREIGN KEY([UserID])
REFERENCES [dbo].[tblUsers] ([ID])
GO
ALTER TABLE [dbo].[tblRatings] CHECK CONSTRAINT [FK_tblRatings_tblUsers]
GO