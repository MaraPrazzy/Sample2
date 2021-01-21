CREATE TABLE [SalesLT].[Address_Copy] (
    [AddressID]        INT              IDENTITY (1, 1) NOT NULL,
    [AddressLine1]     NVARCHAR (60)    NOT NULL,
    [AddressLine2]     NVARCHAR (60)    NULL,
    [City]             NVARCHAR (30)    NOT NULL,
    [StateProvince]    [dbo].[Name]     NOT NULL,
    [CountryRegion]    [dbo].[Name]     NOT NULL,
    [PostalCode]       NVARCHAR (15)    NOT NULL,
    [rowguid_new]      UNIQUEIDENTIFIER CONSTRAINT [DF_Address_rowguid_new] DEFAULT (newid()) NOT NULL,
    [ModifiedDate_new] DATETIME         CONSTRAINT [DF_Address_ModifiedDate_new] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_Address_AddressID_new] PRIMARY KEY CLUSTERED ([AddressID] ASC),
    CONSTRAINT [AK_Address_rowguid_New] UNIQUE NONCLUSTERED ([rowguid_new] ASC)
);





