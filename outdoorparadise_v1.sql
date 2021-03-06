USE [OutdoorParadise]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 30-3-2016 10:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Address](
	[ID] [int] NOT NULL,
	[Address1] [varchar](50) NULL,
	[Address_number] [int] NULL,
	[Address2] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[Region] [varchar](50) NULL,
	[Postal_zone] [varchar](50) NULL,
	[Country] [int] NOT NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AenC_Employee]    Script Date: 30-3-2016 10:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AenC_Employee](
	[Employee_ID] [int] NOT NULL,
	[Terminations_date] [date] NULL,
	[Birth_date] [date] NULL,
	[Bene_health_ins] [varchar](50) NULL,
	[Bene_life_ins] [varchar](50) NULL,
	[Bene_day_care] [varchar](50) NULL,
	[Sex] [bit] NULL,
	[Job] [int] NOT NULL,
	[Department] [int] NULL,
 CONSTRAINT [PK_AenC_Employee] PRIMARY KEY CLUSTERED 
(
	[Employee_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Bonus]    Script Date: 30-3-2016 10:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bonus](
	[Employee_ID] [int] NOT NULL,
	[Bonus_date] [date] NOT NULL,
	[Bonus_amount] [money] NULL,
 CONSTRAINT [PK_Bonus] PRIMARY KEY CLUSTERED 
(
	[Employee_ID] ASC,
	[Bonus_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Booking]    Script Date: 30-3-2016 10:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[ID] [int] NOT NULL,
	[Date] [datetime] NULL,
	[Cancellation_insurance] [bit] NULL,
	[Payed] [bit] NULL,
	[Order_ID] [int] NOT NULL,
	[Travel_ID] [int] NOT NULL,
 CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 30-3-2016 10:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] NOT NULL,
	[Category_en] [varchar](40) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contact_details]    Script Date: 30-3-2016 10:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contact_details](
	[ID] [int] NOT NULL,
	[Number] [varchar](50) NULL,
	[Extension] [varchar](5) NULL,
	[Type] [char](1) NOT NULL,
 CONSTRAINT [PK_Contact_details] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Country]    Script Date: 30-3-2016 10:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Country](
	[ID] [int] NOT NULL,
	[Description] [varchar](50) NULL,
	[Language] [varchar](2) NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Course]    Script Date: 30-3-2016 10:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Course](
	[ID] [int] NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 30-3-2016 10:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [int] NOT NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](128) NULL,
	[Fname] [varchar](20) NULL,
	[Lname] [varchar](20) NULL,
	[Bankaccount] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Birthday] [datetime] NULL,
	[Sex] [bit] NULL,
	[Address] [int] NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer_contact_details]    Script Date: 30-3-2016 10:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_contact_details](
	[Customer_ID] [int] NOT NULL,
	[Detail_ID] [int] NOT NULL,
 CONSTRAINT [PK_Customer_contact_details] PRIMARY KEY CLUSTERED 
(
	[Customer_ID] ASC,
	[Detail_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Department]    Script Date: 30-3-2016 10:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Department](
	[ID] [int] NULL,
	[Department_name] [varchar](50) NULL,
	[Deptartment_head] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Discount]    Script Date: 30-3-2016 10:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discount](
	[Product_ID] [int] NOT NULL,
	[Promotion_ID] [int] NOT NULL,
	[Discount] [decimal](1, 1) NULL,
 CONSTRAINT [PK_Discount] PRIMARY KEY CLUSTERED 
(
	[Product_ID] ASC,
	[Promotion_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employee]    Script Date: 30-3-2016 10:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employee](
	[ID] [int] NOT NULL,
	[Fname] [varchar](50) NULL,
	[Lname] [varchar](50) NULL,
	[Salary] [money] NULL,
	[Position] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Date_hired] [datetime] NULL,
	[Manager] [int] NULL,
	[Sales_branch] [int] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Employee_course]    Script Date: 30-3-2016 10:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_course](
	[Employee_ID] [int] NOT NULL,
	[Course_ID] [int] NOT NULL,
	[year] [date] NULL,
 CONSTRAINT [PK_Employee_course] PRIMARY KEY CLUSTERED 
(
	[Employee_ID] ASC,
	[Course_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Excursion]    Script Date: 30-3-2016 10:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Excursion](
	[ID] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[Price] [money] NULL,
	[Travel_ID] [int] NULL,
 CONSTRAINT [PK_Excursion] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Excursion_booking]    Script Date: 30-3-2016 10:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Excursion_booking](
	[Excursion_ID] [int] NOT NULL,
	[Booking_ID] [int] NOT NULL,
	[Tourguide] [bit] NULL,
	[Participants] [int] NULL,
 CONSTRAINT [PK_Excursion_booking] PRIMARY KEY CLUSTERED 
(
	[Excursion_ID] ASC,
	[Booking_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 30-3-2016 10:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Hotel](
	[ID] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[Lat] [float] NULL,
	[Lon] [float] NULL,
	[Address] [int] NULL,
 CONSTRAINT [PK_Hotel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Job]    Script Date: 30-3-2016 10:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Job](
	[ID] [int] NOT NULL,
	[Job_start] [varchar](50) NULL,
	[Job_title] [varchar](50) NULL,
	[Min_salary] [money] NULL,
	[Max_salary] [money] NULL,
 CONSTRAINT [PK_Job] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Order_header]    Script Date: 30-3-2016 10:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Order_header](
	[ID] [int] NOT NULL,
	[Order_type] [varchar](50) NULL,
	[Order_method] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Order_line]    Script Date: 30-3-2016 10:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_line](
	[ID] [int] NOT NULL,
	[Order_header] [int] NOT NULL,
	[Product] [int] NOT NULL,
	[Quantity] [int] NULL,
	[Sales_price] [money] NULL,
 CONSTRAINT [PK_Order_line] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order_method]    Script Date: 30-3-2016 10:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Order_method](
	[ID] [int] NOT NULL,
	[Order_method_en] [varchar](50) NULL,
 CONSTRAINT [PK_Order_method] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 30-3-2016 10:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[ID] [int] NOT NULL,
	[Order_line_ID] [int] NOT NULL,
	[Amount] [money] NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 30-3-2016 10:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[size] [varchar](10) NULL,
	[color] [varchar](20) NULL,
	[image] [varchar](50) NULL,
	[price] [money] NULL,
	[cost] [money] NULL,
	[sub_category_id] [int] NOT NULL,
	[introduction_date] [datetime] NOT NULL,
	[margin] [float] NULL,
 CONSTRAINT [PK_Product1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product_storage]    Script Date: 30-3-2016 10:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product_storage](
	[Product_ID] [int] NOT NULL,
	[Storage_ID] [int] NOT NULL,
	[Amount] [int] NULL,
	[YearMonth] [date] NULL,
	[Location] [varchar](50) NULL,
 CONSTRAINT [PK_Product_storage] PRIMARY KEY CLUSTERED 
(
	[Product_ID] ASC,
	[Storage_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Promotion]    Script Date: 30-3-2016 10:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Promotion](
	[ID] [int] NOT NULL,
	[Date_start] [datetime] NULL,
	[Date_end] [datetime] NULL,
	[Description] [varchar](50) NULL,
 CONSTRAINT [PK_Promotion] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Retailer]    Script Date: 30-3-2016 10:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Retailer](
	[ID] [int] NOT NULL,
	[Company_name] [varchar](50) NULL,
	[Retailer_type] [int] NOT NULL,
 CONSTRAINT [PK_Retailer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Retailer_representative]    Script Date: 30-3-2016 10:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Retailer_representative](
	[ID] [int] NOT NULL,
	[Fname] [varchar](50) NULL,
	[Lname] [varchar](50) NULL,
	[Phone] [varchar](20) NULL,
	[Address] [int] NOT NULL,
 CONSTRAINT [PK_Retailer_representative] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Retailer_site]    Script Date: 30-3-2016 10:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Retailer_site](
	[ID] [int] NOT NULL,
	[Active_indicator] [bit] NULL,
	[Retailer] [int] NOT NULL,
	[Address] [int] NOT NULL,
	[Retailer_representative] [int] NULL,
 CONSTRAINT [PK_Retailer_site] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Retailer_type]    Script Date: 30-3-2016 10:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Retailer_type](
	[ID] [int] NOT NULL,
	[Type_name_en] [varchar](25) NULL,
 CONSTRAINT [PK_Retailer_type] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Return_reason]    Script Date: 30-3-2016 10:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Return_reason](
	[ID] [int] NOT NULL,
	[Description] [varchar](50) NULL,
 CONSTRAINT [PK_Return_reason] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Returned_item]    Script Date: 30-3-2016 10:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Returned_item](
	[ID] [int] NOT NULL,
	[Order_line_ID] [int] NOT NULL,
	[Return_reason_ID] [int] NOT NULL,
	[Return_date] [datetime] NULL,
	[Return_quantity] [int] NULL,
 CONSTRAINT [PK_Returned_item] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sales_branch]    Script Date: 30-3-2016 10:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales_branch](
	[ID] [int] NOT NULL,
	[Address] [int] NOT NULL,
 CONSTRAINT [PK_Sales_branch] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sales_target]    Script Date: 30-3-2016 10:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales_target](
	[Employee_ID] [int] NOT NULL,
	[Product_ID] [int] NOT NULL,
	[Sales_period] [int] NULL,
	[Sales_target] [int] NULL,
	[Target_achieved] [bit] NULL,
	[Retailer] [int] NULL,
 CONSTRAINT [PK_Sales_target] PRIMARY KEY CLUSTERED 
(
	[Employee_ID] ASC,
	[Product_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Staff_contact_details]    Script Date: 30-3-2016 10:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff_contact_details](
	[Employee_ID] [int] NOT NULL,
	[Detail_ID] [int] NOT NULL,
 CONSTRAINT [PK_Staff_contact_details] PRIMARY KEY CLUSTERED 
(
	[Employee_ID] ASC,
	[Detail_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Storage]    Script Date: 30-3-2016 10:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Storage](
	[ID] [int] NOT NULL,
	[Address] [int] NULL,
 CONSTRAINT [PK_Storage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sub_category]    Script Date: 30-3-2016 10:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sub_category](
	[ID] [int] NOT NULL,
	[Sub_category_en] [varchar](50) NULL,
	[Category] [int] NOT NULL,
 CONSTRAINT [PK_Sub_category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Travel]    Script Date: 30-3-2016 10:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Travel](
	[ID] [int] NOT NULL,
	[Activity] [varchar](50) NULL,
	[Min_participants] [int] NULL,
	[Max_participants] [int] NULL,
	[Kids_allowed] [bit] NULL,
 CONSTRAINT [PK_Travel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Travel_booking]    Script Date: 30-3-2016 10:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Travel_booking](
	[Travel_ID] [int] NOT NULL,
	[Booking_ID] [int] NOT NULL,
	[Start_date] [datetime] NULL,
	[End_date] [datetime] NULL,
	[Price] [money] NULL,
 CONSTRAINT [PK_Travel_booking] PRIMARY KEY CLUSTERED 
(
	[Travel_ID] ASC,
	[Booking_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Travel_companion]    Script Date: 30-3-2016 10:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Travel_companion](
	[ID] [int] NOT NULL,
	[Fname] [varchar](50) NULL,
	[Lname] [varchar](50) NULL,
	[Birthday] [datetime] NULL,
	[Sex] [bit] NULL,
	[Booking_ID] [int] NULL,
 CONSTRAINT [PK_Travel_companion] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Travel_hotel]    Script Date: 30-3-2016 10:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Travel_hotel](
	[Travel_ID] [int] NOT NULL,
	[Hotel_ID] [int] NOT NULL,
 CONSTRAINT [PK_Travel_hotel] PRIMARY KEY CLUSTERED 
(
	[Travel_ID] ASC,
	[Hotel_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Travel_product]    Script Date: 30-3-2016 10:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Travel_product](
	[Travel_ID] [int] NOT NULL,
	[Product_ID] [int] NOT NULL,
	[Discount] [decimal](1, 1) NULL,
 CONSTRAINT [PK_Travel_product] PRIMARY KEY CLUSTERED 
(
	[Travel_ID] ASC,
	[Product_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
