USE [ASTM]
GO
/****** Object:  Table [dbo].[CreditCardDetail]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CreditCardDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CreditCardDetailID] [char](10) NOT NULL,
	[ReceiptID] [char](10) NOT NULL,
	[BankName] [varchar](150) NOT NULL,
	[CreditCardNumber] [varchar](150) NULL,
	[CreditCardHolderName] [varchar](100) NULL,
	[ValidUptoMonth] [varchar](15) NULL,
	[ValiduptoYear] [varchar](4) NULL,
	[CVVNumber] [varchar](20) NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_CreditCardDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Course]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Course](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CourseID] [varchar](50) NOT NULL,
	[CourseName] [varchar](100) NOT NULL,
	[Description] [varchar](250) NULL,
	[Duration] [int] NOT NULL,
	[Fees] [decimal](18, 2) NULL,
	[ModificationType] [varchar](50) NOT NULL,
	[ModifiedBy] [varchar](50) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Country]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Country](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CountryID] [varchar](50) NOT NULL,
	[CountryName] [varchar](150) NOT NULL,
	[ModificationType] [varchar](50) NOT NULL,
	[ModifiedBy] [varchar](50) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContactPerson]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContactPerson](
	[ID] [int] NOT NULL,
	[ContactReferenceID] [char](10) NULL,
	[Name] [varchar](100) NULL,
	[Designation] [varchar](25) NULL,
	[ContactNumber] [varchar](50) NULL,
	[MobileNumber] [varchar](50) NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_ContactPerson] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[City]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[City](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CityID] [varchar](50) NOT NULL,
	[CityName] [varchar](150) NOT NULL,
	[StateID] [varchar](50) NOT NULL,
	[ModificationType] [varchar](50) NOT NULL,
	[ModifiedBy] [varchar](50) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cheque/DDDetails]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cheque/DDDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Cheque/DD DetailID] [char](10) NULL,
	[ReceiptID] [char](10) NULL,
	[Cheque/DDDetailNo] [varchar](10) NULL,
	[BankDetail] [varchar](100) NULL,
	[BranchDetail] [varchar](50) NULL,
	[AccountName] [varchar](150) NULL,
	[AccountDetails/IFCCode] [varchar](50) NULL,
	[PayableAT] [varchar](150) NULL,
	[PayTo] [varchar](50) NULL,
	[Commisiion] [varchar](50) NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Cheque/DDDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Chapters]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Chapters](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ChapterID] [nchar](10) NULL,
	[BookID] [char](10) NULL,
	[ChapterName] [varchar](150) NULL,
	[Description] [varchar](250) NULL,
	[Duration] [int] NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Chapters] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Certification]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Certification](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CertificationID] [nchar](10) NOT NULL,
	[AchieverID] [char](10) NOT NULL,
	[AcheivedBy] [varchar](25) NULL,
	[RegistrationCode] [varchar](50) NULL,
	[CertificateName] [varchar](250) NOT NULL,
	[Date] [date] NULL,
	[Details] [varchar](250) NULL,
	[FileName] [varchar](250) NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Certification] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CenterBatchCourse]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CenterBatchCourse](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CenterBatchCourseID] [varchar](50) NOT NULL,
	[CenterID] [varchar](50) NULL,
	[BatchID] [varchar](50) NOT NULL,
	[CourseID] [varchar](50) NOT NULL,
	[ModificationType] [varchar](50) NOT NULL,
	[ModifiedBy] [varchar](50) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_BatchCourse] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CashBook]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CashBook](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CashTransID] [char](10) NULL,
	[DebitAmount] [numeric](18, 0) NULL,
	[CreditAmount] [numeric](18, 0) NULL,
	[TransactionDate] [date] NULL,
	[Description] [varchar](150) NULL,
	[Remarks] [varchar](50) NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_CashBook] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Branch]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Branch](
	[ID] [int] NOT NULL,
	[BranchID] [char](10) NOT NULL,
	[BranchName] [varchar](250) NOT NULL,
	[Title] [varchar](250) NULL,
	[EmailID] [varchar](50) NULL,
	[ContactNumber] [varchar](50) NULL,
	[Status] [bit] NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Books]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Books](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BookID] [char](10) NOT NULL,
	[SubModuleID] [char](10) NOT NULL,
	[BookName] [varchar](250) NOT NULL,
	[AuthorID] [char](10) NULL,
	[PublisherID] [char](10) NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BatchSyllabusID]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BatchSyllabusID](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BatchSyllabusID] [char](10) NOT NULL,
	[BatchID] [char](10) NOT NULL,
	[SyllabusID] [char](10) NOT NULL,
	[Status] [varchar](20) NULL,
	[Date] [date] NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_BatchSyllabusID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Batch]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Batch](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BatchID] [varchar](50) NULL,
	[BatchName] [varchar](150) NULL,
	[Description] [varchar](250) NULL,
	[CenterID] [varchar](50) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Capacity] [int] NULL,
	[ModificationType] [varchar](50) NOT NULL,
	[ModifiedBy] [varchar](50) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Batch] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BankBook]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BankBook](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BankTransID] [char](10) NULL,
	[BankInfoID] [char](10) NULL,
	[DebitAmount] [numeric](18, 0) NULL,
	[CreditAmount] [numeric](18, 0) NULL,
	[TransactionDate] [date] NULL,
	[ReferenceNumber] [numeric](18, 0) NULL,
	[Description] [varchar](150) NULL,
	[Remarks] [varchar](50) NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_BankBook] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BankAccountInfo]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BankAccountInfo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BankAccountInfoID] [char](10) NOT NULL,
	[BankName] [varchar](150) NOT NULL,
	[BankAccountNumber] [varbinary](50) NOT NULL,
	[BranchName] [varchar](150) NOT NULL,
	[address] [varchar](150) NULL,
	[Remarks] [varchar](50) NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_BankAccountInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Author]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Author](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AuthorID] [char](10) NOT NULL,
	[AuthorName] [varchar](150) NOT NULL,
	[Description] [varchar](250) NULL,
	[BookType] [varchar](150) NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Author] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AttendanceDetail]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AttendanceDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AttendanceDetailID] [char](10) NOT NULL,
	[AttendanceID] [char](10) NOT NULL,
	[Student/FacultyID] [char](10) NOT NULL,
	[Status] [varchar](20) NULL,
	[Reason] [varchar](250) NULL,
	[Type] [varchar](100) NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_AttendanceDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Attendance](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AttendanceID] [char](10) NOT NULL,
	[Date] [date] NOT NULL,
	[BatchID] [char](10) NULL,
	[CourseID] [char](10) NULL,
	[FacultyID] [char](10) NULL,
	[SessionID] [char](10) NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Attendance] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AssignmentAllocation]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AssignmentAllocation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AllocationID] [char](10) NULL,
	[AssignmentID] [char](10) NULL,
	[BatchID] [char](10) NULL,
	[Marks] [varchar](50) NULL,
	[AllocationDate] [date] NULL,
	[SubmissionDate] [date] NULL,
	[FacultyID] [char](10) NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_AssignmentAllocation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AdvertisementCompany]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdvertisementCompany](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AdvertisementCompanyID] [char](10) NOT NULL,
	[CompanyName] [varchar](150) NOT NULL,
	[ContactNumber] [varchar](50) NULL,
	[EmailID] [varchar](50) NULL,
	[WebsiteAddress] [varchar](50) NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_AdvertisementCompany] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Advertisement]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Advertisement](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AdvertisementID] [char](10) NOT NULL,
	[CompanyID] [char](10) NOT NULL,
	[source] [varchar](150) NULL,
	[Scheme] [varchar](150) NULL,
	[AdvertisementDetail] [varchar](250) NOT NULL,
	[Date] [datetime] NULL,
	[SchemeEnddate] [datetime] NULL,
	[Purpose] [varchar](100) NULL,
	[PaymentAmount] [varchar](20) NULL,
	[FileName] [varchar](100) NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Advertisement] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Address]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Address](
	[ID] [int] NOT NULL,
	[AddressTypeID] [int] NULL,
	[Addressee] [varchar](50) NULL,
	[Address] [varchar](100) NULL,
	[City] [varchar](50) NULL,
	[Zip] [char](10) NULL,
	[ModificationType] [varchar](50) NOT NULL,
	[ModifiedBy] [varchar](50) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AccountType]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AccountType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AccountTypeID] [char](10) NULL,
	[Name] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_AccountType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Account]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [char](10) NULL,
	[AccountCode] [varchar](50) NULL,
	[AccountTypeID] [char](10) NULL,
	[DebitAmount] [numeric](18, 0) NULL,
	[CreditAmount] [numeric](18, 0) NULL,
	[Description] [varchar](150) NULL,
	[Remarks] [varchar](50) NULL,
	[TransactionDate] [date] NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Upload]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Upload](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UploadID] [char](10) NULL,
	[Category] [varchar](25) NULL,
	[Title] [varchar](150) NULL,
	[Description] [varchar](250) NULL,
	[FileName] [varchar](250) NULL,
	[DateTime] [datetime] NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Upload] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TrainingCenter]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TrainingCenter](
	[ID] [int] NOT NULL,
	[TrainingCenterID] [varchar](50) NOT NULL,
	[TrainingCenterName] [varchar](50) NOT NULL,
	[TagLine] [varchar](250) NULL,
	[FirstName] [varchar](100) NULL,
	[LastName] [varchar](100) NULL,
	[EmailID] [varchar](50) NULL,
	[Designation] [varchar](50) NULL,
	[Status] [bit] NULL,
	[ContactNumber] [varchar](50) NULL,
	[MobileNumber] [varchar](50) NULL,
	[ModificationType] [varchar](50) NOT NULL,
	[ModifiedBy] [varchar](50) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_TrainingCenter] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TimeTableSetting]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TimeTableSetting](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TimeTableSettingID] [varchar](50) NOT NULL,
	[BatchID] [varchar](50) NOT NULL,
	[Day] [varchar](9) NOT NULL,
	[StartTime] [varchar](10) NOT NULL,
	[EndTime] [varchar](10) NOT NULL,
	[ModificationType] [varchar](50) NOT NULL,
	[ModifiedBy] [varchar](50) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_TimeTableSetting] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Syllabus]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Syllabus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SyllabusID] [char](10) NULL,
	[SubModuleID] [char](10) NOT NULL,
	[SyllabusName] [varchar](100) NOT NULL,
	[Description] [varchar](200) NOT NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Syllabus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SubModule]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SubModule](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ModuleID] [char](10) NULL,
	[SubModuleID] [char](10) NOT NULL,
	[SubModuleName] [varchar](100) NOT NULL,
	[Description] [varchar](200) NOT NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_SubModule] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StudentPersonalInformation]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StudentPersonalInformation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [char](10) NOT NULL,
	[InquiryID] [char](10) NOT NULL,
	[RegistrationCode] [char](10) NULL,
	[Name] [varchar](150) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[Gender] [char](1) NULL,
	[Phone] [varchar](50) NULL,
	[Photo] [varchar](250) NULL,
	[Nationality] [varchar](50) NULL,
	[Caste] [varchar](50) NULL,
	[Religion] [varchar](50) NULL,
	[Fees] [varchar](20) NULL,
	[ApplicableFee] [varchar](20) NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_StudentPersonalInformation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StudentPaymentInformation]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StudentPaymentInformation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StudentPaymentInformationID] [char](10) NOT NULL,
	[StudentID] [char](10) NOT NULL,
	[AdmissionNumber] [char](10) NOT NULL,
	[Date] [date] NOT NULL,
	[BranchID] [char](10) NOT NULL,
	[Duration] [int] NULL,
	[PaymentOption] [varchar](50) NOT NULL,
	[Fees] [varchar](50) NULL,
	[Interest] [varchar](50) NULL,
	[Tenor] [varchar](50) NULL,
	[FirstPayment] [varchar](50) NOT NULL,
	[RemainingPayment] [varchar](50) NULL,
	[Percentage] [varchar](50) NULL,
	[EMIStatus] [varchar](50) NULL,
	[EMIInformation] [varchar](50) NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_StudentCourseInformation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StudentOccupationalInformation]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StudentOccupationalInformation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StudentOccupational] [char](10) NULL,
	[StudentID] [char](10) NULL,
	[CompanyName] [varchar](150) NULL,
	[Designation] [varchar](100) NULL,
	[FromDate] [date] NULL,
	[ToDate] [date] NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_StudentOccupationalInformation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StudentGuardianInformation]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StudentGuardianInformation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StudentGuardianID] [char](10) NOT NULL,
	[StudentID] [char](10) NOT NULL,
	[GuardianRelation] [varchar](50) NOT NULL,
	[Name] [varchar](150) NOT NULL,
	[Occupation] [varchar](50) NULL,
	[EmailID] [varchar](50) NULL,
	[TelephoneNumber] [varchar](50) NULL,
	[Photo] [varchar](50) NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_StudentGuardianInformation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StudentEducationalInformation]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StudentEducationalInformation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StudentEducationaID] [char](10) NOT NULL,
	[StudentID] [char](10) NOT NULL,
	[Class/Degree] [varchar](100) NOT NULL,
	[Marks] [varchar](20) NOT NULL,
	[Percentage] [varchar](5) NULL,
	[Grade] [varchar](2) NULL,
	[InstituteName] [varchar](150) NOT NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_StudentEducationalInformation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StudentCourseInformation]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StudentCourseInformation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StudentCourseInformationID] [char](10) NOT NULL,
	[AdmissionNumber] [char](10) NOT NULL,
	[CourseID] [char](10) NOT NULL,
	[BatchID] [char](10) NOT NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_StudentCourseInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StudentAssignmentMarks]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StudentAssignmentMarks](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StudentAssignmentMarksID] [char](10) NULL,
	[AllocationID] [char](10) NULL,
	[StudentID] [char](10) NULL,
	[MarksObtained] [varchar](10) NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_StudentAssignmentMarks] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[State]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[State](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StateID] [varchar](50) NOT NULL,
	[StateName] [varchar](150) NOT NULL,
	[CountryID] [char](10) NOT NULL,
	[ModificationType] [varchar](50) NOT NULL,
	[ModifiedBy] [varchar](50) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SMS]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SMS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SMSID] [char](10) NOT NULL,
	[MobileNo] [varchar](15) NOT NULL,
	[Message] [varchar](250) NOT NULL,
	[SentDateTime] [datetime] NULL,
	[Delievered] [datetime] NULL,
	[Status] [varchar](25) NULL,
	[Purpose] [varchar](250) NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_SMS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SessionChapter]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SessionChapter](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SessionChapterID] [char](10) NOT NULL,
	[SessionID] [char](10) NOT NULL,
	[ChapterID] [char](10) NOT NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_SessionChapter] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Session]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Session](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SessionID] [char](10) NULL,
	[SyllabusID] [char](10) NULL,
	[SessionName] [varchar](150) NULL,
	[Duration] [int] NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Session] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SalaryCalculationBase]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalaryCalculationBase](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SalaryCalculationBaseID] [char](10) NULL,
	[UserLevelCode] [int] NULL,
	[ArithmeticOperation] [varchar](2) NULL,
	[ElementType] [varchar](2) NULL,
	[ElementCode] [int] NULL,
	[Amount] [numeric](18, 0) NULL,
	[CalculationBase] [numeric](18, 0) NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_SalaryCalculationBase] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RecommendationSource]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RecommendationSource](
	[ID] [int] NULL,
	[RecommendationSourceID] [varchar](50) NULL,
	[RecommendationSource] [varchar](150) NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ReceiptEntry]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ReceiptEntry](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ReceiptID] [char](10) NOT NULL,
	[ReceiptType] [varchar](50) NOT NULL,
	[ReceiptDetails] [varchar](250) NULL,
	[ReferenceNumber] [varchar](50) NULL,
	[Date] [date] NOT NULL,
	[ReceivedFrom] [char](10) NULL,
	[Amount] [varchar](20) NOT NULL,
	[PaymentMode] [varchar](20) NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_ReceiptEntry] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Publisher]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Publisher](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PublisherName] [varchar](150) NOT NULL,
	[Detailks] [varchar](250) NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Publisher] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Presentation/Workshop]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Presentation/Workshop](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Pesentation/WorkshopId] [char](10) NULL,
	[Type] [varchar](20) NULL,
	[Topic] [varchar](250) NULL,
	[StartDateTime] [datetime] NULL,
	[EndDateTime] [datetime] NULL,
	[GivenBy] [varchar](100) NULL,
	[Details] [varchar](200) NULL,
	[FileName] [varchar](150) NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Presentation/Workshop] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PettyCash]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PettyCash](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PettyCashID] [char](10) NULL,
	[Petty] [varchar](50) NULL,
	[Date] [varchar](10) NULL,
	[ExpenseType] [varchar](50) NULL,
	[ExpenseDetails] [varchar](150) NULL,
	[Amount] [varchar](20) NULL,
	[ReceiptAttached] [varchar](100) NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_PettyCash] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Notes/Assignment]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Notes/Assignment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Notes/AssignmentID] [char](10) NULL,
	[CourseID] [char](10) NULL,
	[Title] [varchar](150) NULL,
	[Content] [varchar](250) NULL,
	[FacultyID] [char](10) NULL,
	[Date] [date] NULL,
	[Type] [varchar](50) NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Notes/Assignment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Module]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Module](
	[ID] [int] NOT NULL,
	[ModuleID] [char](10) NOT NULL,
	[CourseID] [char](10) NOT NULL,
	[ModuleName] [varchar](100) NOT NULL,
	[Description] [varchar](200) NOT NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ledger]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ledger](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LedgerID] [char](10) NULL,
	[AccountID] [char](10) NULL,
	[DebitAmount] [numeric](18, 0) NULL,
	[CreditAmount] [numeric](18, 0) NULL,
	[TransactionDate] [date] NULL,
	[TranType] [varchar](10) NULL,
	[Description] [varchar](150) NULL,
	[Remarks] [varchar](50) NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Ledger] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LeaveTypes]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LeaveTypes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LeaveTypeID] [char](10) NULL,
	[LeaveTypeName] [varchar](150) NULL,
	[CarryForward] [bit] NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_LeaveTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LeaveMaster]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LeaveMaster](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LeaveTypeID] [char](10) NULL,
	[LeaveCode] [char](10) NULL,
	[LeaveTypeName] [varchar](150) NULL,
	[LeaveDate] [date] NULL,
	[NumberOfDays] [int] NULL,
	[CarryForward] [char](1) NULL,
	[Remarks] [varchar](50) NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_LeaveMaster] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LeaveDetails]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LeaveDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LeaveDetailID] [char](10) NOT NULL,
	[LeaveTypeID] [char](10) NOT NULL,
	[EmployeeID] [char](10) NOT NULL,
	[LeaveFromDate] [datetime] NOT NULL,
	[LeaveToDate] [datetime] NOT NULL,
	[NumberOfDays] [int] NULL,
	[ApprovalDate] [datetime] NULL,
	[Remarks] [varchar](50) NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_LeaveDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FollowUp]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FollowUp](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FollowUpID] [char](10) NOT NULL,
	[InquiryID] [char](10) NULL,
	[FollowUpDate] [datetime] NOT NULL,
	[FacultyID] [char](10) NOT NULL,
	[FollowUpMode] [varchar](20) NULL,
	[ReponseDetail] [varchar](250) NULL,
	[Status] [varchar](20) NULL,
	[Remark] [varchar](250) NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_FollowUp] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ExamType]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExamType](
	[ID] [int] NOT NULL,
	[ExamTypeID] [char](10) NOT NULL,
	[ExamTypeName] [varchar](150) NOT NULL,
	[Status] [smallint] NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_ExamType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Exam]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Exam](
	[ID] [int] NULL,
	[ExamID] [char](10) NULL,
	[ExamTypeID] [char](10) NULL,
	[ExamName] [varchar](100) NULL,
	[Status] [smallint] NULL,
	[CourseID] [varchar](50) NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmployeeSalaryRevision]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmployeeSalaryRevision](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SalaryRevisionID] [char](10) NULL,
	[EmployeeID] [char](10) NULL,
	[ElementCode] [int] NULL,
	[CalculationType] [char](1) NULL,
	[FixPerAmt] [char](1) NULL,
	[Calculation_BaseedOn] [varchar](100) NULL,
	[CalculationBasedOnNM] [varchar](100) NULL,
	[ElementNature] [char](1) NULL,
	[SalaryAmount] [numeric](18, 2) NULL,
	[SalaryType] [varchar](50) NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_EmployeeSalaryRevision] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmployeeSalaryCalculation]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmployeeSalaryCalculation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SalaryCalculationID] [char](10) NULL,
	[SalaryYear] [int] NULL,
	[SalaryMonth] [char](10) NULL,
	[EmployeeID] [char](10) NULL,
	[Element_Code] [int] NULL,
	[SalaryType] [varchar](3) NULL,
	[ElementNature] [varchar](1) NULL,
	[ActualAmount] [numeric](18, 2) NULL,
	[SalaryDays] [numeric](18, 0) NULL,
	[PresentDays] [numeric](18, 0) NULL,
	[Paid] [char](1) NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_EmployeeSalaryCalculation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmployeeMaster]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmployeeMaster](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [char](10) NULL,
	[Name] [nchar](10) NULL,
	[DateOfBirth] [date] NULL,
	[Sex] [varchar](10) NULL,
	[JoiningDate] [datetime] NULL,
	[Caste] [varchar](50) NULL,
	[Religion] [varchar](50) NULL,
	[Nationality] [varchar](50) NULL,
	[Designation] [varchar](50) NULL,
	[MobileNumber] [varchar](15) NULL,
	[PhoneNumber] [varchar](10) NULL,
	[EmailID] [varchar](50) NULL,
	[Photo] [varchar](150) NULL,
	[Course] [varchar](50) NULL,
	[Remarks] [varchar](50) NULL,
	[WorkProfile] [varchar](150) NULL,
	[Experience] [varchar](50) NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_EmployeeMaster] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InquiryMode]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InquiryMode](
	[ID] [int] NULL,
	[InquiryModeID] [varchar](50) NULL,
	[InquiryMode] [varchar](150) NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Inquiry]    Script Date: 10/18/2012 23:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Inquiry](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[InquiryID] [char](10) NOT NULL,
	[Name] [varchar](150) NOT NULL,
	[CourseID] [char](10) NULL,
	[ContactNumber] [varchar](50) NOT NULL,
	[EmailID] [varchar](50) NULL,
	[DateOfInquiry] [datetime] NULL,
	[Purpose] [varchar](100) NULL,
	[InquiryModeID] [varchar](50) NULL,
	[RecommendationSourceID] [varchar](50) NULL,
	[PreferedBranchID] [char](10) NULL,
	[PreferedBatchID] [char](10) NULL,
	[ReceivedBy] [char](10) NULL,
	[ExecutedBy] [char](10) NULL,
	[PotentialStatus] [varchar](50) NULL,
	[ModificationType] [char](8) NOT NULL,
	[ModifiedBy] [char](10) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Inquiry] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[GetTrainingCenterList]    Script Date: 10/18/2012 23:07:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetTrainingCenterList]
	
AS
BEGIN
	
	SET NOCOUNT ON;
	SELECT TrainingCenterID,TrainingCenterName,TagLine,FirstName,LastName,EmailID,Designation,Status,ContactNumber,MobileNumber
	FROM TrainingCenter
	WHERE ModificationType<>'DELETED' OR ModificationType<>'UPDATEDDELETED'
    
END
GO
/****** Object:  StoredProcedure [dbo].[GetTrainingCenter]    Script Date: 10/18/2012 23:07:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetTrainingCenter]
	@TrainingCenterID	varchar(50)
	
AS
BEGIN
	
	SET NOCOUNT ON;
	SELECT TrainingCenterID,TrainingCenterName,TagLine,FirstName,LastName,EmailID,Designation,Status,ContactNumber,MobileNumber
	FROM TrainingCenter
	WHERE TrainingCenterID= @TrainingCenterID AND (ModificationType<>'DELETED' OR ModificationType<>'UPDATEDDELETED' )
	
	SELECT Addressee,Address,CityName,StateName,CountryName,Zip
	FROM Address,City,State,country
	WHERE Addressee= @TrainingCenterID AND (Address.ModificationType<>'DELETED' OR Address.ModificationType<>'UPDATEDDELETED' )AND  
		City.StateID=State.StateID 
		AND State.CountryID=Country.CountryID
	
	
	SELECT ContactReferenceID,Name,Designation,ContactNumber,MobileNumber
	FROM ContactPerson
	WHERE ContactReferenceID= @TrainingCenterID AND (ModificationType<>'DELETED' OR ModificationType<>'UPDATEDDELETED' )
    
END
GO
/****** Object:  StoredProcedure [dbo].[GetCourseList]    Script Date: 10/18/2012 23:07:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

CREATE PROCEDURE [dbo].[GetCourseList]
	
	
AS
BEGIN
	
	SET NOCOUNT ON;
	SELECT CourseID,CourseName,Description,Duration,Fees
	FROM Course
	WHERE ModificationType<>'DELETED' OR ModificationType<>'UPDATEDDELETED' 
	
    
END
GO
/****** Object:  StoredProcedure [dbo].[GetCourse]    Script Date: 10/18/2012 23:07:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

CREATE PROCEDURE [dbo].[GetCourse]
	@CourseID	varchar(50)
	
AS
BEGIN
	
	SET NOCOUNT ON;
	SELECT CourseID,CourseName,Description,Duration,Fees
	FROM Course
	WHERE CourseID= @CourseID AND (ModificationType<>'DELETED' OR ModificationType<>'UPDATEDDELETED' )
	
    
END
GO
/****** Object:  StoredProcedure [dbo].[GetBatchList]    Script Date: 10/18/2012 23:07:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetBatchList]
	
AS
BEGIN
	
	SET NOCOUNT ON;
	SELECT BatchID,BatchName,Description,TrainingCenterName, StartDate,EndDate,Capacity
	FROM Batch,TrainingCenter
	WHERE (Batch.ModificationType<>'DELETED' OR Batch.ModificationType<>'UPDATEDDELETED' ) AND (TrainingCenter.TrainingCenterID=Batch.CenterID AND (TrainingCenter.ModificationType<>'DELETED' OR TrainingCenter.ModificationType<>'UPDATEDDELETED' ))
	
    
END
GO
/****** Object:  StoredProcedure [dbo].[GetBatch]    Script Date: 10/18/2012 23:07:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

CREATE PROCEDURE [dbo].[GetBatch]
	@BatchID	varchar(50)
	
AS
BEGIN
	
	SET NOCOUNT ON;
	SELECT BatchID,BatchName,Description,TrainingCenterName, StartDate,EndDate,Capacity
	FROM Batch,TrainingCenter
	WHERE (BatchID= @BatchID AND (Batch.ModificationType<>'DELETED' OR Batch.ModificationType<>'UPDATEDDELETED' )) AND (TrainingCenter.TrainingCenterID=Batch.CenterID AND (TrainingCenter.ModificationType<>'DELETED' OR TrainingCenter.ModificationType<>'UPDATEDDELETED' ))
	
	
	
	SELECT BatchID,Day,StartTime,EndTime
	FROM TimeTableSetting
	WHERE BatchID= @BatchID AND (ModificationType<>'DELETED' OR ModificationType<>'UPDATEDDELETED' )
	
	SELECT Course.CourseID,CourseName
	FROM CenterBatchCourse,Course
	WHERE CenterBatchCourse.BatchID= @BatchID AND (CenterBatchCourse.ModificationType<>'DELETED' OR CenterBatchCourse.ModificationType<>'UPDATEDDELETED' )
			AND Course.CourseID=CenterBatchCourse.CourseID AND (Course.ModificationType<>'DELETED' OR Course.ModificationType<>'UPDATEDDELETED' )
    
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteTrainingCenter]    Script Date: 10/18/2012 23:07:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteTrainingCenter]
	@TrainingCenterID	varchar(50),
	@ModificationType	varchar(50),
	@ModifiedBy	varchar(50),
	@ModifiedDate	datetime

AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		BEGIN TRANSACTION
				UPDATE TrainingCenter SET ModificationType=@ModificationType,ModifiedBy=@ModifiedBy,ModifiedDate=@ModifiedDate WHERE TrainingCenterID=@TrainingCenterID  AND (ModificationType='UPDATED' or ModificationType='CREATED')
				UPDATE Address SET ModificationType=@ModificationType,ModifiedBy=@ModifiedBy,ModifiedDate=@ModifiedDate WHERE Addressee=@TrainingCenterID  AND (ModificationType='UPDATED' or ModificationType='CREATED')
				UPDATE ContactPerson SET ModificationType=@ModificationType,ModifiedBy=@ModifiedBy,ModifiedDate=@ModifiedDate WHERE ContactReferenceID=@TrainingCenterID  AND (ModificationType='UPDATED' or ModificationType='CREATED')
				COMMIT
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT > 0
         ROLLBACK
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteCourse]    Script Date: 10/18/2012 23:07:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

CREATE PROCEDURE [dbo].[DeleteCourse]
@CourseID	varchar(50),
@ModificationType	varchar(50),
@ModifiedBy	varchar(50),
@ModifiedDate	datetime

AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		BEGIN TRANSACTION
				UPDATE Course SET ModificationType='DELETED',ModifiedBy=@ModifiedBy,ModifiedDate=@ModifiedDate WHERE CourseID=@CourseID  AND (ModificationType='UPDATED' or ModificationType='CREATED')
				COMMIT
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT > 0
         ROLLBACK
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteBatch]    Script Date: 10/18/2012 23:07:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

CREATE PROCEDURE [dbo].[DeleteBatch]
@BatchID	varchar(50),
@ModificationType	varchar(50),
@ModifiedBy	varchar(50),
@ModifiedDate	datetime

AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		BEGIN TRANSACTION
				UPDATE Batch SET ModificationType=@ModificationType,ModifiedBy=@ModifiedBy,ModifiedDate=@ModifiedDate WHERE BatchID=@BatchID  AND (ModificationType='UPDATED' or ModificationType='CREATED')
				UPDATE TimeTableSetting SET ModificationType=@ModificationType,ModifiedBy=@ModifiedBy,ModifiedDate=@ModifiedDate WHERE BatchID=@BatchID  AND (ModificationType='UPDATED' or ModificationType='CREATED')
				UPDATE CenterBatchCourse SET ModificationType=@ModificationType,ModifiedBy=@ModifiedBy,ModifiedDate=@ModifiedDate WHERE BatchID=@BatchID  AND (ModificationType='UPDATED' or ModificationType='CREATED')
				
				COMMIT
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT > 0
         ROLLBACK
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[InsertUpdateTrainingCenter]    Script Date: 10/18/2012 23:07:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsertUpdateTrainingCenter] 
@TrainingCenterID	varchar(50),
@TrainingCenterName	varchar(50),
@TagLine	varchar(250),
@FirstName	varchar(100),
@LastName	varchar(100),
@EmailID	varchar(50),
@Designation varchar(50),
@Status	bit,
@ContactNumber	varchar(50),
@MobileNumber	varchar(50),
@Address xml,
@ContactPerson xml,
@ModificationType	varchar(50),
@ModifiedBy	varchar(50)	,
@ModifiedDate	datetime
	
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		BEGIN TRANSACTION
			IF @TrainingCenterID =0
			BEGIN
				SELECT @TrainingCenterID ='C'+MAX( right(TrainingCenterID,len(TrainingCenterID)-1))+1 from TrainingCenter
				END
			ELSE
			BEGIN
				UPDATE TrainingCenter SET ModificationType='UPDATEDDELETED',ModifiedBy=@ModifiedBy,ModifiedDate=@ModifiedDate WHERE TrainingCenterID=@TrainingCenterID  AND (ModificationType='UPDATED' or ModificationType='CREATED')
				UPDATE Address SET ModificationType='UPDATEDDELETED',ModifiedBy=@ModifiedBy,ModifiedDate=@ModifiedDate WHERE Addressee=@TrainingCenterID  AND (ModificationType='UPDATED' or ModificationType='CREATED')
				UPDATE ContactPerson SET ModificationType='UPDATEDDELETED',ModifiedBy=@ModifiedBy,ModifiedDate=@ModifiedDate WHERE ContactReferenceID=@TrainingCenterID  AND (ModificationType='UPDATED' or ModificationType='CREATED')
			END
			INSERT INTO 
				TrainingCenter (TrainingCenterID,TrainingCenterName,TagLine,FirstName,LastName,EmailID,Designation,
				Status,ContactNumber,MobileNumber,ModificationType,ModifiedBy,ModifiedDate) 
			VALUES (@TrainingCenterID,@TrainingCenterName,@TagLine,@FirstName,@LastName,
				@EmailID,@Designation,@Status,@ContactNumber,@MobileNumber,@ModificationType,@ModifiedBy,@ModifiedDate)
				
			DECLARE @currRecord int    
			EXECUTE sp_xml_preparedocument @currRecord OUTPUT, @Address 
		    
		    INSERT INTO Address (Addressee,Address,City,Zip,ModificationType,ModifiedBy,ModifiedDate) 
			SELECT @TrainingCenterID,Address,City,Zip,@ModificationType,@ModifiedBy,@ModifiedDate
			FROM OPENXML (@currRecord, 'Addresses/Address', 1)
			WITH (	
					Address [varchar](50)       'Address',
					City [varchar](50)       'City',
					Zip [char](10)       'Zip'
					
				   )
			EXEC sp_xml_removedocument @currRecord
			EXECUTE sp_xml_preparedocument @currRecord OUTPUT, @ContactPerson 
		    INSERT INTO ContactPerson (ContactReferenceID,Name,Designation,ContactNumber,MobileNumber,ModificationType,ModifiedBy,ModifiedDate) 
			SELECT @TrainingCenterID,Name,Designation,ContactNumber,MobileNumber,@ModificationType,@ModifiedBy,@ModifiedDate
			FROM OPENXML (@currRecord, 'ContactPersons/ContactPerson', 1)
			WITH (	
					Name [varchar](100)       'Name',
					Designation [varchar](25)       'Designation',
					ContactNumber [varchar](50)       'ContactNumber',
					MobileNumber [varchar](50)        'MobileNumber'
					
				  )
			EXEC sp_xml_removedocument @currRecord
			
		COMMIT
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT > 0
         ROLLBACK
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[InsertUpdateCourse]    Script Date: 10/18/2012 23:07:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsertUpdateCourse]
@CourseID	varchar(50),
@CourseName	varchar(100),
@Description	varchar(250),
@Duration	int,
@Fees	decimal(18, 2),
@ModificationType	varchar(50),
@ModifiedBy	varchar(50)	,
@ModifiedDate	datetime	

AS
BEGIN
	SET XACT_ABORT ON
	SET NoCount ON
	BEGIN TRY
		BEGIN TRANSACTION
			IF @CourseID ='0'
			BEGIN
				--SELECT @CourseID ='CR'+MAX( right(CourseID,len(CourseID)-2))+1 from Course
				SELECT @CourseID= 'CR'+CONVERT(varchar,MAX( right(CourseID,len(CourseID)-2))+1) from Course

				IF @CourseID IS NULL
				SET	@CourseID='CR1'
				END
			ELSE
			BEGIN
				UPDATE Course SET ModificationType='UPDATEDDELETED',ModifiedBy=@ModifiedBy,ModifiedDate=@ModifiedDate WHERE CourseID=@CourseID  AND (ModificationType='UPDATED' or ModificationType='CREATED')
				
				
			END
			INSERT INTO 
				Course(CourseID,CourseName,Description,Duration,Fees,ModificationType,ModifiedBy,ModifiedDate) 
			VALUES (@CourseID,@CourseName,@Description,@Duration,@Fees,@ModificationType,@ModifiedBy,@ModifiedDate)
			
			
			
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT > 0
         ROLLBACK TRANSACTION
        SELECT ERROR_MESSAGE() AS ErrorMessage;
	END CATCH
    
END
GO
/****** Object:  StoredProcedure [dbo].[InsertUpdateBatch]    Script Date: 10/18/2012 23:07:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsertUpdateBatch]
	@BatchID varchar(50)	,
	@BatchName	varchar(150)	,
	@Description	varchar(250)	,
	@CenterID	char(10)	,
	@StartDate	datetime	,
	@EndDate	datetime	,
	@Capacity	int	,
	@BatchTimes xml,
	@Courses xml,
	@ModificationType	varchar(50),
	@ModifiedBy	varchar(50)	,
	@ModifiedDate	datetime	

AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		BEGIN TRANSACTION
			IF @BatchID =0
			BEGIN
				SELECT @BatchID ='B'+MAX( right(BatchID,len(BatchID)-1))+1 from Batch
				END
			ELSE
			BEGIN
				UPDATE Batch SET ModificationType='UPDATEDDELETED',ModifiedBy=@ModifiedBy,ModifiedDate=@ModifiedDate WHERE BatchID=@BatchID  AND (ModificationType='UPDATED' or ModificationType='CREATED')
				UPDATE TimeTableSetting SET ModificationType='UPDATEDDELETED',ModifiedBy=@ModifiedBy,ModifiedDate=@ModifiedDate WHERE BatchID=@BatchID  AND (ModificationType='UPDATED' or ModificationType='CREATED')
				
			END
			INSERT INTO 
				Batch (BatchID,BatchName,Description,CenterID,StartDate,EndDate,Capacity,ModificationType,ModifiedBy,ModifiedDate) 
			VALUES (@BatchID,@BatchName,@Description,@CenterID,@StartDate,@EndDate,@Capacity,@ModificationType,@ModifiedBy,@ModifiedDate)
			
			DECLARE @currRecord int    
			EXECUTE sp_xml_preparedocument @currRecord OUTPUT, @BatchTimes 
		    
		    INSERT INTO  TimeTableSetting(BatchID,Day,StartTime,EndTime,ModificationType,ModifiedBy,ModifiedDate) 
			SELECT @BatchID,Day,StartTime,EndTime,@ModificationType,@ModifiedBy,@ModifiedDate
			FROM OPENXML (@currRecord, 'DayTimes/DayTime', 1)
			WITH (	
					Day [varchar](9)       'Day',
					StartTime [varchar](10)       'StartTime',
					EndTime [varchar](10)       'EndTime'
					
				   )
			EXEC sp_xml_removedocument @currRecord
			
			EXECUTE sp_xml_preparedocument @currRecord OUTPUT, @Courses 
		    
		    INSERT INTO  CenterBatchCourse(CenterID,BatchID,CourseID,ModificationType,ModifiedBy,ModifiedDate) 
			SELECT @CenterID,@BatchID,CourseID,@ModificationType,@ModifiedBy,@ModifiedDate
			FROM OPENXML (@currRecord, 'Courses/Course', 1)
			WITH (	
					CourseID [varchar](50)       'CourseID'
					
					
				   )
			EXEC sp_xml_removedocument @currRecord
			
		COMMIT
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT > 0
         ROLLBACK
	END CATCH
    
END
GO
