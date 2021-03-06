USE [vsecommercelocal]
GO
/****** Object:  Table [dbo].[Android_PushNotification]    Script Date: 24-08-2018 14:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Android_PushNotification](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RegisterDeviceId] [nvarchar](max) NOT NULL,
	[CreatedDateTimeUtc] [datetime] NOT NULL,
 CONSTRAINT [PK_PushNotification] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Area]    Script Date: 24-08-2018 14:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Area](
	[City] [nvarchar](100) NOT NULL,
	[AreaName] [nvarchar](100) NOT NULL,
	[Latitude] [nvarchar](50) NULL,
	[Longitude] [nvarchar](50) NULL,
 CONSTRAINT [PK_Area] PRIMARY KEY CLUSTERED 
(
	[City] ASC,
	[AreaName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BuyerAddress]    Script Date: 24-08-2018 14:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BuyerAddress](
	[BuyerAddressId] [int] IDENTITY(1,1) NOT NULL,
	[User] [int] NOT NULL,
	[State] [nvarchar](4000) NULL,
	[City] [nvarchar](4000) NULL,
	[Address1] [nvarchar](4000) NULL,
	[Address2] [nvarchar](4000) NULL,
	[PostalCode] [nvarchar](4000) NULL,
	[PhoneNumber] [nvarchar](4000) NULL,
	[CreatedOnUtc] [datetime] NOT NULL,
	[UpdatedOnUtc] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.BuyerAddress] PRIMARY KEY CLUSTERED 
(
	[BuyerAddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 24-08-2018 14:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[ParentCategoryId] [int] NULL,
	[Name] [nvarchar](400) NOT NULL,
	[MetaTitle] [nvarchar](400) NULL,
	[Published] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[DisplayOrder] [int] NULL,
	[CreatedOnUtc] [datetime] NULL,
	[UpdatedOnUtc] [datetime] NULL,
	[CategoryGroupTag] [nvarchar](150) NULL,
	[GroupDisplayOrder] [int] NULL,
	[FlagShowBuy] [bit] NULL,
	[ShowOnHomePage] [bit] NULL,
 CONSTRAINT [PK_dbo.Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CategoryMasterFilter]    Script Date: 24-08-2018 14:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryMasterFilter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Category] [int] NOT NULL,
	[FilterParameter] [nvarchar](100) NOT NULL,
	[Unit] [nvarchar](50) NULL,
	[DisplayType] [text] NULL,
 CONSTRAINT [PK_CategoryFilter] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Clients]    Script Date: 24-08-2018 14:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[Id] [nvarchar](128) NOT NULL,
	[Secret] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[ApplicationType] [int] NOT NULL,
	[Active] [bit] NOT NULL,
	[RefreshTokenLifeTime] [int] NOT NULL,
	[AllowedOrigin] [nvarchar](100) NULL,
 CONSTRAINT [PK_dbo.Clients] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Country]    Script Date: 24-08-2018 14:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[AllowsBilling] [bit] NOT NULL,
	[AllowsShipping] [bit] NOT NULL,
	[TwoLetterIsoCode] [nvarchar](2) NULL,
	[ThreeLetterIsoCode] [nvarchar](3) NULL,
	[NumericIsoCode] [int] NOT NULL,
	[SubjectToVat] [bit] NOT NULL,
	[Published] [bit] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Country] PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Discount]    Script Date: 24-08-2018 14:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discount](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[DiscountTypeId] [int] NOT NULL,
	[UsePercentage] [bit] NOT NULL,
	[DiscountPercentage] [decimal](18, 4) NOT NULL,
	[DiscountAmount] [decimal](18, 4) NOT NULL,
	[StartDateUtc] [datetime] NULL,
	[EndDateUtc] [datetime] NULL,
	[RequiresCouponCode] [bit] NOT NULL,
	[CouponCode] [nvarchar](100) NOT NULL,
	[MinOrderValue] [decimal](18, 4) NULL,
	[MaxDiscountAmount] [decimal](18, 4) NULL,
 CONSTRAINT [PK_dbo.Discount] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ExternalAuthenticationRecord]    Script Date: 24-08-2018 14:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExternalAuthenticationRecord](
	[AuthId] [int] IDENTITY(1,1) NOT NULL,
	[User] [int] NOT NULL,
	[Email] [nvarchar](4000) NULL,
	[ExternalIdentifier] [nvarchar](4000) NULL,
	[ExternalDisplayIdentifier] [nvarchar](4000) NULL,
	[OAuthToken] [nvarchar](4000) NULL,
	[OAuthAccessToken] [nvarchar](4000) NULL,
	[ProviderSystemName] [nvarchar](4000) NULL,
 CONSTRAINT [PK_dbo.ExternalAuthenticationRecord] PRIMARY KEY CLUSTERED 
(
	[AuthId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 24-08-2018 14:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturer](
	[ManufacturerId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](400) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[MetaKeywords] [nvarchar](400) NULL,
	[MetaDescription] [nvarchar](4000) NULL,
	[MetaTitle] [nvarchar](400) NULL,
	[LimitedToStores] [bit] NULL,
	[Deleted] [bit] NULL,
	[DisplayOrder] [int] NULL,
	[CreatedOnUtc] [datetime] NULL,
	[UpdatedOnUtc] [datetime] NULL,
 CONSTRAINT [PK_dbo.Manufacturer] PRIMARY KEY CLUSTERED 
(
	[ManufacturerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 24-08-2018 14:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[Id] [int] IDENTITY(10010,1) NOT NULL,
	[OrderGuid] [uniqueidentifier] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[BillingAddressId] [int] NOT NULL,
	[ShippingAddressId] [int] NOT NULL,
	[OrderStatusId] [int] NOT NULL,
	[ShippingStatusId] [int] NOT NULL,
	[PaymentStatusId] [int] NOT NULL,
	[DeliveryMethod] [int] NOT NULL,
	[PaymentMethod] [int] NOT NULL,
	[VatNumber] [nvarchar](200) NULL,
	[OrderSubtotalInclTax] [decimal](18, 4) NULL,
	[OrderShippingCharges] [decimal](18, 4) NULL,
	[PaymentMethodAdditionalFee] [decimal](18, 4) NULL,
	[OrderDiscount] [decimal](18, 4) NULL,
	[OrderTotal] [decimal](18, 4) NULL,
	[RefundedAmount] [decimal](18, 4) NULL,
	[CustomerIp] [nvarchar](200) NULL,
	[TransactionId] [nvarchar](200) NULL,
	[TransactionResult] [nvarchar](200) NULL,
	[TransactionResultDetails] [nvarchar](max) NULL,
	[OrderDateUtc] [datetime] NULL,
	[Deleted] [bit] NULL,
	[UpdatedOnUtc] [datetime] NULL,
	[PurchaseOrderStatus] [int] NULL,
	[OrderCancel] [bit] NULL,
 CONSTRAINT [PK_dbo.Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderProductItem]    Script Date: 24-08-2018 14:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProductItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderItemGuid] [uniqueidentifier] NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[BranchId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitPriceInclTax] [decimal](18, 4) NOT NULL,
	[PriceInclTax] [decimal](18, 4) NOT NULL,
	[OrderItemStatus] [int] NULL,
	[SelectedSize] [nvarchar](50) NULL,
	[OrderCancel] [bit] NULL,
	[ShippingCharges] [decimal](18, 0) NULL,
 CONSTRAINT [PK_dbo.OrderItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PasswordReset]    Script Date: 24-08-2018 14:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PasswordReset](
	[Username] [nvarchar](200) NOT NULL,
	[PasswordResetToken] [nvarchar](500) NOT NULL,
	[PasswordResetExpiration] [datetime] NOT NULL,
	[FlagCompleted] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PermissionRecord]    Script Date: 24-08-2018 14:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](4000) NOT NULL,
	[SystemName] [nvarchar](255) NOT NULL,
	[Category] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_dbo.PermissionRecord] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PermissionRecordMapping]    Script Date: 24-08-2018 14:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionRecordMapping](
	[PermissionRecord] [int] NOT NULL,
	[CustomerRole] [int] NOT NULL,
 CONSTRAINT [PK_dbo.PermissionRecord_Role_Mapping] PRIMARY KEY CLUSTERED 
(
	[PermissionRecord] ASC,
	[CustomerRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pricing]    Script Date: 24-08-2018 14:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pricing](
	[PricingId] [int] IDENTITY(1,1) NOT NULL,
	[Product] [int] NOT NULL,
	[Store] [int] NOT NULL,
	[Branch] [int] NOT NULL,
	[CallForPrice] [bit] NULL,
	[Price] [decimal](18, 4) NULL,
	[OldPrice] [decimal](18, 4) NULL,
	[ProductCost] [decimal](18, 4) NULL,
	[SpecialPrice] [decimal](18, 4) NULL,
	[SpecialPriceDescription] [nvarchar](50) NULL,
	[SpecialPriceStartDateTimeUtc] [datetime] NULL,
	[SpecialPriceEndDateTimeUtc] [datetime] NULL,
	[AdditionalShippingCharge] [decimal](18, 4) NULL,
	[DeliveryTime] [int] NULL,
	[IsShipEnabled] [bit] NULL,
	[IsFreeShipping] [bit] NULL,
	[AdditionalTax] [decimal](18, 0) NULL,
	[CreatedUser] [nvarchar](50) NULL,
	[UpdatedUser] [nvarchar](50) NULL,
	[IsDeleted] [bit] NULL,
	[CreatedOnUtc] [datetime] NULL,
	[UpdatedOnUtc] [datetime] NULL,
 CONSTRAINT [PK_Pricing] PRIMARY KEY CLUSTERED 
(
	[PricingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 24-08-2018 14:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductTypeId] [int] NULL,
	[PictureName] [nvarchar](400) NULL,
	[PictureName1] [nvarchar](400) NULL,
	[PictureName2] [nvarchar](400) NULL,
	[Name] [nvarchar](400) NOT NULL,
	[ShortDescription] [nvarchar](4000) NULL,
	[FullDescription] [nvarchar](max) NOT NULL,
	[Manufacturer] [int] NOT NULL,
	[Category] [int] NULL,
	[ShowOnHomePage] [bit] NOT NULL,
	[MetaKeywords] [nvarchar](400) NULL,
	[MetaDescription] [nvarchar](4000) NULL,
	[MetaTitle] [nvarchar](400) NULL,
	[SubjectToAcl] [bit] NULL,
	[LimitedToStores] [bit] NULL,
	[Sku] [nvarchar](400) NULL,
	[ManufacturerPartNumber] [nvarchar](400) NULL,
	[Gtin] [nvarchar](400) NULL,
	[IsGiftCard] [bit] NULL,
	[GiftCardTypeId] [int] NULL,
	[Weight] [nvarchar](50) NULL,
	[Length] [nvarchar](50) NULL,
	[Width] [nvarchar](50) NULL,
	[Height] [nvarchar](50) NULL,
	[Color] [nvarchar](50) NULL,
	[DisplayOrder] [int] NULL,
	[Published] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedOnUtc] [datetime] NULL,
	[UpdatedOnUtc] [datetime] NULL,
	[ProductDescriptionHtml] [nvarchar](max) NULL,
	[Size1] [nvarchar](50) NULL,
	[Size2] [nvarchar](50) NULL,
	[Size3] [nvarchar](50) NULL,
	[Size4] [nvarchar](50) NULL,
	[Size5] [nvarchar](50) NULL,
	[Size6] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductContact]    Script Date: 24-08-2018 14:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductContact](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ContactName] [nvarchar](50) NOT NULL,
	[Mobile] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[ProductId] [int] NOT NULL,
	[StoreId] [int] NOT NULL,
	[UpdatedOnUtc] [datetime] NOT NULL,
	[Subject] [nvarchar](200) NULL,
	[Reply] [nvarchar](200) NULL,
	[ReplyDate] [datetime] NULL,
 CONSTRAINT [PK_ProductContact] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductFilterValue]    Script Date: 24-08-2018 14:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductFilterValue](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[CategoryMasterFilter] [int] NOT NULL,
	[FilterValue] [nvarchar](500) NOT NULL,
	[FilterValueText] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_ProductFilterValue] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductKeyFeatures]    Script Date: 24-08-2018 14:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductKeyFeatures](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Parameter] [nvarchar](100) NULL,
	[KeyFeature] [nvarchar](300) NOT NULL,
	[DisplayOrder] [int] NULL,
 CONSTRAINT [PK_ProductKeyFeatures] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductRating]    Script Date: 24-08-2018 14:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductRating](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Rating] [int] NOT NULL,
	[UpdatedOnUtc] [datetime] NULL,
	[User] [int] NULL,
 CONSTRAINT [PK_ProductRating] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductSpecification]    Script Date: 24-08-2018 14:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSpecification](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[SpecificationGroup] [nvarchar](50) NOT NULL,
	[SpecificationAttribute] [nvarchar](50) NOT NULL,
	[SpecificationDetails] [nvarchar](300) NOT NULL,
	[DisplayOrder] [int] NULL,
 CONSTRAINT [PK_ProductSpecification] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role]    Script Date: 24-08-2018 14:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleId] [int] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[FreeShipping] [bit] NOT NULL,
	[TaxExempt] [bit] NOT NULL,
	[TaxDisplayType] [int] NULL,
	[Active] [bit] NOT NULL,
	[IsSystemRole] [bit] NOT NULL,
	[SystemName] [nvarchar](255) NULL,
 CONSTRAINT [PK_dbo.CustomerRole] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Seller]    Script Date: 24-08-2018 14:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seller](
	[StoreId] [int] IDENTITY(1,1) NOT NULL,
	[StoreName] [nvarchar](400) NOT NULL,
	[LogoPicture] [nvarchar](400) NULL,
	[Description] [nvarchar](4000) NULL,
	[PrimaryContact] [int] NOT NULL,
	[CreatedOnUtc] [datetime] NOT NULL,
	[UpdatedOnUtc] [datetime] NULL,
	[CreatedUser] [int] NOT NULL,
	[OriginalStoreName] [nvarchar](400) NULL,
 CONSTRAINT [PK_dbo.Store] PRIMARY KEY CLUSTERED 
(
	[StoreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SellerBranch]    Script Date: 24-08-2018 14:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SellerBranch](
	[BranchId] [int] IDENTITY(1,1) NOT NULL,
	[Store] [int] NOT NULL,
	[BranchName] [nvarchar](200) NOT NULL,
	[Email] [nvarchar](400) NULL,
	[Country] [int] NULL,
	[State] [nvarchar](400) NULL,
	[City] [nvarchar](400) NULL,
	[Address1] [nvarchar](500) NULL,
	[Address2] [nvarchar](500) NULL,
	[PostalCode] [nvarchar](50) NULL,
	[PhoneNumber] [nvarchar](100) NULL,
	[FaxNumber] [nvarchar](100) NULL,
	[CreatedOnUtc] [datetime] NOT NULL,
	[Latitude] [decimal](10, 7) NULL,
	[Longitude] [decimal](10, 7) NULL,
	[EnableBuy] [bit] NULL,
	[FlagPartner] [bit] NULL,
	[OriginalBranchName] [nvarchar](200) NULL,
 CONSTRAINT [PK_dbo.Address] PRIMARY KEY CLUSTERED 
(
	[BranchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SellerCategory]    Script Date: 24-08-2018 14:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SellerCategory](
	[Id] [int] IDENTITY(1000,1) NOT NULL,
	[seller] [int] NULL,
	[Category] [int] NULL,
	[FlagDeleted] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SellerRating]    Script Date: 24-08-2018 14:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SellerRating](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NOT NULL,
	[Rating] [int] NOT NULL,
	[UpdatedOnUtc] [datetime] NULL,
 CONSTRAINT [PK_SellerRating] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ShoppingCartItem]    Script Date: 24-08-2018 14:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCartItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [decimal](18, 0) NOT NULL,
	[CreatedOnUtc] [datetime] NOT NULL,
	[UpdatedOnUtc] [datetime] NOT NULL,
	[ShippingCharges] [decimal](18, 0) NULL,
	[SelectedSize] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.ShoppingCartItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SiteSettings]    Script Date: 24-08-2018 14:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SiteSettings](
	[SiteKey] [nvarchar](100) NOT NULL,
	[Value] [nvarchar](100) NULL,
 CONSTRAINT [PK_SiteSettings] PRIMARY KEY CLUSTERED 
(
	[SiteKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Stock]    Script Date: 24-08-2018 14:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stock](
	[StockId] [int] IDENTITY(1,1) NOT NULL,
	[Product] [int] NOT NULL,
	[Seller] [int] NOT NULL,
	[StockQuantity] [int] NOT NULL,
	[DisplayStockAvailability] [bit] NOT NULL,
	[DisplayStockQuantity] [bit] NOT NULL,
	[MinStockQuantity] [int] NOT NULL,
	[LowStockActivityId] [int] NOT NULL,
	[NotifyAdminForQuantityBelow] [int] NOT NULL,
	[BackorderModeId] [int] NOT NULL,
	[AllowBackInStockSubscriptions] [bit] NOT NULL,
	[OrderMinimumQuantity] [int] NOT NULL,
	[OrderMaximumQuantity] [int] NOT NULL,
	[AllowedQuantities] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Stock] PRIMARY KEY CLUSTERED 
(
	[StockId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[temp_Pricing]    Script Date: 24-08-2018 14:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp_Pricing](
	[BranchName] [nvarchar](200) NOT NULL,
	[ProductName] [nvarchar](200) NOT NULL,
	[StoreId] [int] NOT NULL,
	[BranchId] [int] NOT NULL,
	[Price] [decimal](18, 4) NULL,
	[SpecialPrice] [decimal](18, 4) NOT NULL,
	[AdditionalShippingCharge] [decimal](18, 4) NULL,
	[AdditionalTax] [decimal](18, 0) NULL,
	[Published] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[temp_Product]    Script Date: 24-08-2018 14:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp_Product](
	[PictureName] [nvarchar](400) NULL,
	[Category] [nvarchar](400) NULL,
	[SubCategory] [nvarchar](400) NULL,
	[Name] [nvarchar](400) NOT NULL,
	[ShortDescription] [nvarchar](4000) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[Manufacturer] [nvarchar](400) NOT NULL,
	[MetaKeywords] [nvarchar](400) NULL,
	[MetaDescription] [nvarchar](4000) NULL,
	[MetaTitle] [nvarchar](400) NULL,
	[ManufacturerPartNumber] [nvarchar](400) NULL,
	[Gtin] [nvarchar](400) NULL,
	[IsGiftCard] [bit] NULL,
	[Weight] [nvarchar](50) NULL,
	[Length] [nvarchar](50) NULL,
	[Width] [nvarchar](50) NULL,
	[Height] [nvarchar](50) NULL,
	[Color] [nvarchar](50) NULL,
	[DisplayOrder] [int] NULL,
	[Published] [bit] NULL,
	[PictureName1] [nvarchar](400) NULL,
	[PictureName2] [nvarchar](400) NULL,
	[Size1] [nvarchar](50) NULL,
	[Size2] [nvarchar](50) NULL,
	[Size3] [nvarchar](50) NULL,
	[Size4] [nvarchar](50) NULL,
	[Size5] [nvarchar](50) NULL,
	[Size6] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[temp_ProductFilterValue]    Script Date: 24-08-2018 14:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[temp_ProductFilterValue](
	[CategoryId] [int] NULL,
	[ProductId] [int] NULL,
	[FilterParameter] [varchar](400) NULL,
	[FilterValue] [varchar](400) NULL,
	[FilterValueText] [varchar](400) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[temp_ProductFilterValueWithProductName]    Script Date: 24-08-2018 14:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[temp_ProductFilterValueWithProductName](
	[ProductName] [varchar](5000) NULL,
	[FilterParameter] [varchar](400) NULL,
	[FilterValue] [varchar](400) NULL,
	[FilterValueText] [varchar](400) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[temp_ProductKeyFeatures]    Script Date: 24-08-2018 14:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp_ProductKeyFeatures](
	[ProductName] [nvarchar](400) NOT NULL,
	[Parameter] [nvarchar](100) NULL,
	[KeyFeature] [nvarchar](300) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[temp_ProductSpecification]    Script Date: 24-08-2018 14:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp_ProductSpecification](
	[ProductName] [nvarchar](400) NOT NULL,
	[SpecificationGroup] [nvarchar](50) NOT NULL,
	[SpecificationAttribute] [nvarchar](50) NOT NULL,
	[SpecificationDetails] [nvarchar](300) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 24-08-2018 14:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserGuid] [uniqueidentifier] NOT NULL,
	[Username] [nvarchar](200) NOT NULL,
	[FirstName] [nvarchar](200) NOT NULL,
	[LastName] [nvarchar](200) NULL,
	[Email] [nvarchar](500) NOT NULL,
	[PhoneNumber1] [nvarchar](200) NULL,
	[PhoneNumber2] [nvarchar](200) NULL,
	[Password] [varbinary](64) NULL,
	[PasswordFormatId] [int] NOT NULL,
	[PasswordSalt] [nvarchar](200) NULL,
	[IsMerchant] [bit] NOT NULL,
	[Active] [bit] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[LastIpAddress] [nvarchar](200) NULL,
	[CreatedOnUtc] [datetime] NOT NULL,
	[LastLoginDateUtc] [datetime] NULL,
	[BillingAddress_Id] [int] NULL,
	[ShippingAddress_Id] [int] NULL,
	[UpdatedOnUtc] [datetime] NULL,
	[IsAdmin] [bit] NULL,
	[IsSuperAdmin] [bit] NULL,
	[IsSales] [bit] NULL,
	[IsSupport] [bit] NULL,
	[IsMarketing] [bit] NULL,
 CONSTRAINT [PK_dbo.User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [User_Unique] UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserRoleMapping]    Script Date: 24-08-2018 14:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoleMapping](
	[User] [int] NOT NULL,
	[UserRole] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Customer_CustomerRole_Mapping] PRIMARY KEY CLUSTERED 
(
	[User] ASC,
	[UserRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserWishlist]    Script Date: 24-08-2018 14:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserWishlist](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[User] [int] NOT NULL,
	[Product] [int] NOT NULL,
	[CreatedOnUtc] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VbuyHistory]    Script Date: 24-08-2018 14:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VbuyHistory](
	[Slno] [int] IDENTITY(1,1) NOT NULL,
	[TableName] [nvarchar](max) NULL,
	[ColumnName] [nvarchar](max) NULL,
	[OldValue] [nvarchar](max) NULL,
	[newValue] [nvarchar](max) NULL,
	[ModifyValueID] [int] NULL,
	[modifiedDate] [datetime] NULL,
	[UserId] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[PasswordReset] ADD  CONSTRAINT [DF_PasswordReset_FlagCompleted]  DEFAULT ((0)) FOR [FlagCompleted]
GO
ALTER TABLE [dbo].[CategoryMasterFilter]  WITH CHECK ADD  CONSTRAINT [FK_CategoryFilter_Category] FOREIGN KEY([Category])
REFERENCES [dbo].[Category] ([CategoryId])
GO
ALTER TABLE [dbo].[CategoryMasterFilter] CHECK CONSTRAINT [FK_CategoryFilter_Category]
GO
ALTER TABLE [dbo].[ExternalAuthenticationRecord]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ExternalAuthenticationRecord_dbo.Customer_CustomerId] FOREIGN KEY([User])
REFERENCES [dbo].[User] ([UserId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ExternalAuthenticationRecord] CHECK CONSTRAINT [FK_dbo.ExternalAuthenticationRecord_dbo.Customer_CustomerId]
GO
ALTER TABLE [dbo].[OrderProductItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrderItem_dbo.Order_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[OrderProduct] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderProductItem] CHECK CONSTRAINT [FK_dbo.OrderItem_dbo.Order_OrderId]
GO
ALTER TABLE [dbo].[OrderProductItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrderItem_dbo.Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderProductItem] CHECK CONSTRAINT [FK_dbo.OrderItem_dbo.Product_ProductId]
GO
ALTER TABLE [dbo].[PasswordReset]  WITH CHECK ADD  CONSTRAINT [FK_PasswordReset_User] FOREIGN KEY([Username])
REFERENCES [dbo].[User] ([Username])
GO
ALTER TABLE [dbo].[PasswordReset] CHECK CONSTRAINT [FK_PasswordReset_User]
GO
ALTER TABLE [dbo].[PermissionRecordMapping]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PermissionRecord_Role_Mapping_dbo.PermissionRecord_PermissionRecord_Id] FOREIGN KEY([PermissionRecord])
REFERENCES [dbo].[PermissionRecord] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PermissionRecordMapping] CHECK CONSTRAINT [FK_dbo.PermissionRecord_Role_Mapping_dbo.PermissionRecord_PermissionRecord_Id]
GO
ALTER TABLE [dbo].[Pricing]  WITH CHECK ADD  CONSTRAINT [FK_Pricing_Product] FOREIGN KEY([Product])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[Pricing] CHECK CONSTRAINT [FK_Pricing_Product]
GO
ALTER TABLE [dbo].[Pricing]  WITH CHECK ADD  CONSTRAINT [FK_Pricing_SellerBranch] FOREIGN KEY([Branch])
REFERENCES [dbo].[SellerBranch] ([BranchId])
GO
ALTER TABLE [dbo].[Pricing] CHECK CONSTRAINT [FK_Pricing_SellerBranch]
GO
ALTER TABLE [dbo].[Pricing]  WITH CHECK ADD  CONSTRAINT [FK_Pricing_Store] FOREIGN KEY([Store])
REFERENCES [dbo].[Seller] ([StoreId])
GO
ALTER TABLE [dbo].[Pricing] CHECK CONSTRAINT [FK_Pricing_Store]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([Category])
REFERENCES [dbo].[Category] ([CategoryId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Manufacturer] FOREIGN KEY([Manufacturer])
REFERENCES [dbo].[Manufacturer] ([ManufacturerId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Manufacturer]
GO
ALTER TABLE [dbo].[ProductFilterValue]  WITH CHECK ADD  CONSTRAINT [FK_ProductFilterValue_CategoryMasterFilter] FOREIGN KEY([CategoryMasterFilter])
REFERENCES [dbo].[CategoryMasterFilter] ([Id])
GO
ALTER TABLE [dbo].[ProductFilterValue] CHECK CONSTRAINT [FK_ProductFilterValue_CategoryMasterFilter]
GO
ALTER TABLE [dbo].[ProductKeyFeatures]  WITH CHECK ADD  CONSTRAINT [FK_ProductKeyFeatures_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[ProductKeyFeatures] CHECK CONSTRAINT [FK_ProductKeyFeatures_Product]
GO
ALTER TABLE [dbo].[Seller]  WITH CHECK ADD  CONSTRAINT [FK_Seller_User1] FOREIGN KEY([CreatedUser])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Seller] CHECK CONSTRAINT [FK_Seller_User1]
GO
ALTER TABLE [dbo].[SellerBranch]  WITH CHECK ADD  CONSTRAINT [FK_StoreAddress_Store] FOREIGN KEY([Country])
REFERENCES [dbo].[Country] ([CountryId])
GO
ALTER TABLE [dbo].[SellerBranch] CHECK CONSTRAINT [FK_StoreAddress_Store]
GO
ALTER TABLE [dbo].[SellerCategory]  WITH CHECK ADD FOREIGN KEY([seller])
REFERENCES [dbo].[SellerBranch] ([BranchId])
GO
ALTER TABLE [dbo].[ShoppingCartItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ShoppingCartItem_dbo.Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ShoppingCartItem] CHECK CONSTRAINT [FK_dbo.ShoppingCartItem_dbo.Product_ProductId]
GO
ALTER TABLE [dbo].[Stock]  WITH CHECK ADD  CONSTRAINT [FK_Stock_Product] FOREIGN KEY([Product])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[Stock] CHECK CONSTRAINT [FK_Stock_Product]
GO
ALTER TABLE [dbo].[Stock]  WITH CHECK ADD  CONSTRAINT [FK_Stock_Store] FOREIGN KEY([Seller])
REFERENCES [dbo].[Seller] ([StoreId])
GO
ALTER TABLE [dbo].[Stock] CHECK CONSTRAINT [FK_Stock_Store]
GO
ALTER TABLE [dbo].[UserRoleMapping]  WITH CHECK ADD  CONSTRAINT [FK_Customer_CustomerRole_Mapping_CustomerRole] FOREIGN KEY([UserRole])
REFERENCES [dbo].[Role] ([RoleId])
GO
ALTER TABLE [dbo].[UserRoleMapping] CHECK CONSTRAINT [FK_Customer_CustomerRole_Mapping_CustomerRole]
GO
ALTER TABLE [dbo].[UserRoleMapping]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Customer_CustomerRole_Mapping_dbo.Customer_Customer_Id] FOREIGN KEY([User])
REFERENCES [dbo].[User] ([UserId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserRoleMapping] CHECK CONSTRAINT [FK_dbo.Customer_CustomerRole_Mapping_dbo.Customer_Customer_Id]
GO
ALTER TABLE [dbo].[UserWishlist]  WITH CHECK ADD  CONSTRAINT [FK_UserWishlist_Product] FOREIGN KEY([Product])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[UserWishlist] CHECK CONSTRAINT [FK_UserWishlist_Product]
GO
ALTER TABLE [dbo].[UserWishlist]  WITH CHECK ADD  CONSTRAINT [FK_UserWishlist_User] FOREIGN KEY([User])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[UserWishlist] CHECK CONSTRAINT [FK_UserWishlist_User]
GO
