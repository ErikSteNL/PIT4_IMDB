
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/31/2016 16:11:11
-- Generated from EDMX file: D:\Dropbox\PIT4\Code\PIT4_IMDB\PIT4_IMDB\DBModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [PIT4DB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_FILMFILMTAAL]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FILMTAALs] DROP CONSTRAINT [FK_FILMFILMTAAL];
GO
IF OBJECT_ID(N'[dbo].[FK_TAALFILMTAAL]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FILMTAALs] DROP CONSTRAINT [FK_TAALFILMTAAL];
GO
IF OBJECT_ID(N'[dbo].[FK_FILMFILMTYPE]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FILMTYPEs] DROP CONSTRAINT [FK_FILMFILMTYPE];
GO
IF OBJECT_ID(N'[dbo].[FK_TYPEFILMTYPE]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FILMTYPEs] DROP CONSTRAINT [FK_TYPEFILMTYPE];
GO
IF OBJECT_ID(N'[dbo].[FK_FILMFILMREGISSEUR]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FILMREGISSEURs] DROP CONSTRAINT [FK_FILMFILMREGISSEUR];
GO
IF OBJECT_ID(N'[dbo].[FK_REGISSEURFILMREGISSEUR]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FILMREGISSEURs] DROP CONSTRAINT [FK_REGISSEURFILMREGISSEUR];
GO
IF OBJECT_ID(N'[dbo].[FK_ACTEURROL]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ROLs] DROP CONSTRAINT [FK_ACTEURROL];
GO
IF OBJECT_ID(N'[dbo].[FK_FILMROL]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ROLs] DROP CONSTRAINT [FK_FILMROL];
GO
IF OBJECT_ID(N'[dbo].[FK_FILMBEOORDELING]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BEOORDELINGs] DROP CONSTRAINT [FK_FILMBEOORDELING];
GO
IF OBJECT_ID(N'[dbo].[FK_GEBRUIKERBEOORDELING]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BEOORDELINGs] DROP CONSTRAINT [FK_GEBRUIKERBEOORDELING];
GO
IF OBJECT_ID(N'[dbo].[FK_GEBRUIKERWIJZIGING]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[WIJZIGINGs] DROP CONSTRAINT [FK_GEBRUIKERWIJZIGING];
GO
IF OBJECT_ID(N'[dbo].[FK_GEBRUIKERBLOCKED]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BLOCKEDs] DROP CONSTRAINT [FK_GEBRUIKERBLOCKED];
GO
IF OBJECT_ID(N'[dbo].[FK_GROEPGROEPGEBRUIKER]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[GROEPGEBRUIKERs] DROP CONSTRAINT [FK_GROEPGROEPGEBRUIKER];
GO
IF OBJECT_ID(N'[dbo].[FK_GEBRUIKERGROEPGEBRUIKER]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[GROEPGEBRUIKERs] DROP CONSTRAINT [FK_GEBRUIKERGROEPGEBRUIKER];
GO
IF OBJECT_ID(N'[dbo].[FK_GENREFILMGENRE]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FILMGENREs] DROP CONSTRAINT [FK_GENREFILMGENRE];
GO
IF OBJECT_ID(N'[dbo].[FK_FILMFILMGENRE]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FILMGENREs] DROP CONSTRAINT [FK_FILMFILMGENRE];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FILMs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FILMs];
GO
IF OBJECT_ID(N'[dbo].[FILMTAALs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FILMTAALs];
GO
IF OBJECT_ID(N'[dbo].[TAALs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TAALs];
GO
IF OBJECT_ID(N'[dbo].[FILMTYPEs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FILMTYPEs];
GO
IF OBJECT_ID(N'[dbo].[TYPEs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TYPEs];
GO
IF OBJECT_ID(N'[dbo].[FILMREGISSEURs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FILMREGISSEURs];
GO
IF OBJECT_ID(N'[dbo].[REGISSEURs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[REGISSEURs];
GO
IF OBJECT_ID(N'[dbo].[ROLs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ROLs];
GO
IF OBJECT_ID(N'[dbo].[ACTEURs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ACTEURs];
GO
IF OBJECT_ID(N'[dbo].[BEOORDELINGs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BEOORDELINGs];
GO
IF OBJECT_ID(N'[dbo].[GEBRUIKERs1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GEBRUIKERs1];
GO
IF OBJECT_ID(N'[dbo].[WIJZIGINGs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[WIJZIGINGs];
GO
IF OBJECT_ID(N'[dbo].[BLOCKEDs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BLOCKEDs];
GO
IF OBJECT_ID(N'[dbo].[GROEPGEBRUIKERs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GROEPGEBRUIKERs];
GO
IF OBJECT_ID(N'[dbo].[GROEPs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GROEPs];
GO
IF OBJECT_ID(N'[dbo].[FILMGENREs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FILMGENREs];
GO
IF OBJECT_ID(N'[dbo].[GENREs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GENREs];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'FILMs'
CREATE TABLE [dbo].[FILMs] (
    [IMDBNummer] nvarchar(max)  NOT NULL,
    [FilmNaam] nvarchar(max)  NOT NULL,
    [Duur] int  NOT NULL,
    [Geluid] nvarchar(max)  NOT NULL,
    [AlternatieveNaam] nvarchar(max)  NOT NULL,
    [Poster] nvarchar(max)  NOT NULL,
    [ToegevoegdDatum] datetime  NOT NULL,
    [ToegevoegdDoor] int  NOT NULL,
    [Versie] nvarchar(max)  NOT NULL,
    [GemiddeldeBeoordeling] int  NOT NULL,
    [FilmID] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'FILMTAALs'
CREATE TABLE [dbo].[FILMTAALs] (
    [FilmID] int  NOT NULL,
    [TaalID] int  NOT NULL
);
GO

-- Creating table 'TAALs'
CREATE TABLE [dbo].[TAALs] (
    [TaalID] int IDENTITY(1,1) NOT NULL,
    [TaalNaam] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'FILMTYPEs'
CREATE TABLE [dbo].[FILMTYPEs] (
    [FilmID] int  NOT NULL,
    [TypeID] int  NOT NULL
);
GO

-- Creating table 'TYPEs'
CREATE TABLE [dbo].[TYPEs] (
    [TypeID] int IDENTITY(1,1) NOT NULL,
    [TypeNaam] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'FILMREGISSEURs'
CREATE TABLE [dbo].[FILMREGISSEURs] (
    [RegiID] int  NOT NULL,
    [FilmID] int  NOT NULL
);
GO

-- Creating table 'REGISSEURs'
CREATE TABLE [dbo].[REGISSEURs] (
    [RegiID] int IDENTITY(1,1) NOT NULL,
    [RegiNaam] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ROLs'
CREATE TABLE [dbo].[ROLs] (
    [RolID] int IDENTITY(1,1) NOT NULL,
    [FilmID] int  NOT NULL,
    [RolNaam] nvarchar(max)  NOT NULL,
    [ActeurID] int  NOT NULL
);
GO

-- Creating table 'ACTEURs'
CREATE TABLE [dbo].[ACTEURs] (
    [ActeurID] int IDENTITY(1,1) NOT NULL,
    [ActeurNaam] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'BEOORDELINGs'
CREATE TABLE [dbo].[BEOORDELINGs] (
    [GebruikerID] int  NOT NULL,
    [FilmID] int  NOT NULL,
    [AangemaaktDatum] datetime  NOT NULL,
    [Beoordeling] int  NOT NULL,
    [Commentaar] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'GEBRUIKERs1'
CREATE TABLE [dbo].[GEBRUIKERs1] (
    [GerbuikerID] int IDENTITY(1,1) NOT NULL,
    [GebruikersNaam] nvarchar(max)  NOT NULL,
    [VoorNaam] nvarchar(max)  NOT NULL,
    [AchterNaam] nvarchar(max)  NOT NULL,
    [Leeftijd] datetime  NOT NULL,
    [EmailAdres] nvarchar(max)  NOT NULL,
    [WachtWoord] nvarchar(max)  NOT NULL,
    [RegistratieDatum] datetime  NOT NULL,
    [Rank] int  NOT NULL
);
GO

-- Creating table 'WIJZIGINGs'
CREATE TABLE [dbo].[WIJZIGINGs] (
    [WijzigingID] int IDENTITY(1,1) NOT NULL,
    [GebruikerID] int  NOT NULL,
    [AangepasteEntiteit] nvarchar(max)  NOT NULL,
    [EntiteitID] nvarchar(max)  NOT NULL,
    [AangepasteVak] nvarchar(max)  NOT NULL,
    [AanpasDatum] datetime  NOT NULL,
    [OudData] nvarchar(max)  NOT NULL,
    [NieuwData] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'BLOCKEDs'
CREATE TABLE [dbo].[BLOCKEDs] (
    [BlockID] int IDENTITY(1,1) NOT NULL,
    [GebruikerID] int  NOT NULL,
    [BlockedDoor] int  NOT NULL,
    [BlockDatum] datetime  NOT NULL,
    [BlockReden] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'GROEPGEBRUIKERs'
CREATE TABLE [dbo].[GROEPGEBRUIKERs] (
    [GroepID] int  NOT NULL,
    [GebruikerID] int  NOT NULL
);
GO

-- Creating table 'GROEPs'
CREATE TABLE [dbo].[GROEPs] (
    [GroepID] int IDENTITY(1,1) NOT NULL,
    [GroepNaam] nvarchar(max)  NOT NULL,
    [AangemaaktDatum] datetime  NOT NULL,
    [AangemaaktDoor] int  NOT NULL,
    [GroepBeschrijving] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'FILMGENREs'
CREATE TABLE [dbo].[FILMGENREs] (
    [FilmID] int  NOT NULL,
    [GenreID] int  NOT NULL
);
GO

-- Creating table 'GENREs'
CREATE TABLE [dbo].[GENREs] (
    [GenreID] int IDENTITY(1,1) NOT NULL,
    [GenreNaam] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [FilmID] in table 'FILMs'
ALTER TABLE [dbo].[FILMs]
ADD CONSTRAINT [PK_FILMs]
    PRIMARY KEY CLUSTERED ([FilmID] ASC);
GO

-- Creating primary key on [FilmID], [TaalID] in table 'FILMTAALs'
ALTER TABLE [dbo].[FILMTAALs]
ADD CONSTRAINT [PK_FILMTAALs]
    PRIMARY KEY CLUSTERED ([FilmID], [TaalID] ASC);
GO

-- Creating primary key on [TaalID] in table 'TAALs'
ALTER TABLE [dbo].[TAALs]
ADD CONSTRAINT [PK_TAALs]
    PRIMARY KEY CLUSTERED ([TaalID] ASC);
GO

-- Creating primary key on [FilmID], [TypeID] in table 'FILMTYPEs'
ALTER TABLE [dbo].[FILMTYPEs]
ADD CONSTRAINT [PK_FILMTYPEs]
    PRIMARY KEY CLUSTERED ([FilmID], [TypeID] ASC);
GO

-- Creating primary key on [TypeID] in table 'TYPEs'
ALTER TABLE [dbo].[TYPEs]
ADD CONSTRAINT [PK_TYPEs]
    PRIMARY KEY CLUSTERED ([TypeID] ASC);
GO

-- Creating primary key on [RegiID], [FilmID] in table 'FILMREGISSEURs'
ALTER TABLE [dbo].[FILMREGISSEURs]
ADD CONSTRAINT [PK_FILMREGISSEURs]
    PRIMARY KEY CLUSTERED ([RegiID], [FilmID] ASC);
GO

-- Creating primary key on [RegiID] in table 'REGISSEURs'
ALTER TABLE [dbo].[REGISSEURs]
ADD CONSTRAINT [PK_REGISSEURs]
    PRIMARY KEY CLUSTERED ([RegiID] ASC);
GO

-- Creating primary key on [RolID], [FilmID], [ActeurID] in table 'ROLs'
ALTER TABLE [dbo].[ROLs]
ADD CONSTRAINT [PK_ROLs]
    PRIMARY KEY CLUSTERED ([RolID], [FilmID], [ActeurID] ASC);
GO

-- Creating primary key on [ActeurID] in table 'ACTEURs'
ALTER TABLE [dbo].[ACTEURs]
ADD CONSTRAINT [PK_ACTEURs]
    PRIMARY KEY CLUSTERED ([ActeurID] ASC);
GO

-- Creating primary key on [GebruikerID], [FilmID] in table 'BEOORDELINGs'
ALTER TABLE [dbo].[BEOORDELINGs]
ADD CONSTRAINT [PK_BEOORDELINGs]
    PRIMARY KEY CLUSTERED ([GebruikerID], [FilmID] ASC);
GO

-- Creating primary key on [GerbuikerID] in table 'GEBRUIKERs1'
ALTER TABLE [dbo].[GEBRUIKERs1]
ADD CONSTRAINT [PK_GEBRUIKERs1]
    PRIMARY KEY CLUSTERED ([GerbuikerID] ASC);
GO

-- Creating primary key on [WijzigingID], [GebruikerID] in table 'WIJZIGINGs'
ALTER TABLE [dbo].[WIJZIGINGs]
ADD CONSTRAINT [PK_WIJZIGINGs]
    PRIMARY KEY CLUSTERED ([WijzigingID], [GebruikerID] ASC);
GO

-- Creating primary key on [BlockID], [GebruikerID] in table 'BLOCKEDs'
ALTER TABLE [dbo].[BLOCKEDs]
ADD CONSTRAINT [PK_BLOCKEDs]
    PRIMARY KEY CLUSTERED ([BlockID], [GebruikerID] ASC);
GO

-- Creating primary key on [GroepID], [GebruikerID] in table 'GROEPGEBRUIKERs'
ALTER TABLE [dbo].[GROEPGEBRUIKERs]
ADD CONSTRAINT [PK_GROEPGEBRUIKERs]
    PRIMARY KEY CLUSTERED ([GroepID], [GebruikerID] ASC);
GO

-- Creating primary key on [GroepID] in table 'GROEPs'
ALTER TABLE [dbo].[GROEPs]
ADD CONSTRAINT [PK_GROEPs]
    PRIMARY KEY CLUSTERED ([GroepID] ASC);
GO

-- Creating primary key on [FilmID], [GenreID] in table 'FILMGENREs'
ALTER TABLE [dbo].[FILMGENREs]
ADD CONSTRAINT [PK_FILMGENREs]
    PRIMARY KEY CLUSTERED ([FilmID], [GenreID] ASC);
GO

-- Creating primary key on [GenreID] in table 'GENREs'
ALTER TABLE [dbo].[GENREs]
ADD CONSTRAINT [PK_GENREs]
    PRIMARY KEY CLUSTERED ([GenreID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [FilmID] in table 'FILMTAALs'
ALTER TABLE [dbo].[FILMTAALs]
ADD CONSTRAINT [FK_FILMFILMTAAL]
    FOREIGN KEY ([FilmID])
    REFERENCES [dbo].[FILMs]
        ([FilmID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [TaalID] in table 'FILMTAALs'
ALTER TABLE [dbo].[FILMTAALs]
ADD CONSTRAINT [FK_TAALFILMTAAL]
    FOREIGN KEY ([TaalID])
    REFERENCES [dbo].[TAALs]
        ([TaalID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TAALFILMTAAL'
CREATE INDEX [IX_FK_TAALFILMTAAL]
ON [dbo].[FILMTAALs]
    ([TaalID]);
GO

-- Creating foreign key on [FilmID] in table 'FILMTYPEs'
ALTER TABLE [dbo].[FILMTYPEs]
ADD CONSTRAINT [FK_FILMFILMTYPE]
    FOREIGN KEY ([FilmID])
    REFERENCES [dbo].[FILMs]
        ([FilmID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [TypeID] in table 'FILMTYPEs'
ALTER TABLE [dbo].[FILMTYPEs]
ADD CONSTRAINT [FK_TYPEFILMTYPE]
    FOREIGN KEY ([TypeID])
    REFERENCES [dbo].[TYPEs]
        ([TypeID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TYPEFILMTYPE'
CREATE INDEX [IX_FK_TYPEFILMTYPE]
ON [dbo].[FILMTYPEs]
    ([TypeID]);
GO

-- Creating foreign key on [FilmID] in table 'FILMREGISSEURs'
ALTER TABLE [dbo].[FILMREGISSEURs]
ADD CONSTRAINT [FK_FILMFILMREGISSEUR]
    FOREIGN KEY ([FilmID])
    REFERENCES [dbo].[FILMs]
        ([FilmID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FILMFILMREGISSEUR'
CREATE INDEX [IX_FK_FILMFILMREGISSEUR]
ON [dbo].[FILMREGISSEURs]
    ([FilmID]);
GO

-- Creating foreign key on [RegiID] in table 'FILMREGISSEURs'
ALTER TABLE [dbo].[FILMREGISSEURs]
ADD CONSTRAINT [FK_REGISSEURFILMREGISSEUR]
    FOREIGN KEY ([RegiID])
    REFERENCES [dbo].[REGISSEURs]
        ([RegiID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ActeurID] in table 'ROLs'
ALTER TABLE [dbo].[ROLs]
ADD CONSTRAINT [FK_ACTEURROL]
    FOREIGN KEY ([ActeurID])
    REFERENCES [dbo].[ACTEURs]
        ([ActeurID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ACTEURROL'
CREATE INDEX [IX_FK_ACTEURROL]
ON [dbo].[ROLs]
    ([ActeurID]);
GO

-- Creating foreign key on [FilmID] in table 'ROLs'
ALTER TABLE [dbo].[ROLs]
ADD CONSTRAINT [FK_FILMROL]
    FOREIGN KEY ([FilmID])
    REFERENCES [dbo].[FILMs]
        ([FilmID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FILMROL'
CREATE INDEX [IX_FK_FILMROL]
ON [dbo].[ROLs]
    ([FilmID]);
GO

-- Creating foreign key on [FilmID] in table 'BEOORDELINGs'
ALTER TABLE [dbo].[BEOORDELINGs]
ADD CONSTRAINT [FK_FILMBEOORDELING]
    FOREIGN KEY ([FilmID])
    REFERENCES [dbo].[FILMs]
        ([FilmID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FILMBEOORDELING'
CREATE INDEX [IX_FK_FILMBEOORDELING]
ON [dbo].[BEOORDELINGs]
    ([FilmID]);
GO

-- Creating foreign key on [GebruikerID] in table 'BEOORDELINGs'
ALTER TABLE [dbo].[BEOORDELINGs]
ADD CONSTRAINT [FK_GEBRUIKERBEOORDELING]
    FOREIGN KEY ([GebruikerID])
    REFERENCES [dbo].[GEBRUIKERs1]
        ([GerbuikerID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [GebruikerID] in table 'WIJZIGINGs'
ALTER TABLE [dbo].[WIJZIGINGs]
ADD CONSTRAINT [FK_GEBRUIKERWIJZIGING]
    FOREIGN KEY ([GebruikerID])
    REFERENCES [dbo].[GEBRUIKERs1]
        ([GerbuikerID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_GEBRUIKERWIJZIGING'
CREATE INDEX [IX_FK_GEBRUIKERWIJZIGING]
ON [dbo].[WIJZIGINGs]
    ([GebruikerID]);
GO

-- Creating foreign key on [GebruikerID] in table 'BLOCKEDs'
ALTER TABLE [dbo].[BLOCKEDs]
ADD CONSTRAINT [FK_GEBRUIKERBLOCKED]
    FOREIGN KEY ([GebruikerID])
    REFERENCES [dbo].[GEBRUIKERs1]
        ([GerbuikerID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_GEBRUIKERBLOCKED'
CREATE INDEX [IX_FK_GEBRUIKERBLOCKED]
ON [dbo].[BLOCKEDs]
    ([GebruikerID]);
GO

-- Creating foreign key on [GroepID] in table 'GROEPGEBRUIKERs'
ALTER TABLE [dbo].[GROEPGEBRUIKERs]
ADD CONSTRAINT [FK_GROEPGROEPGEBRUIKER]
    FOREIGN KEY ([GroepID])
    REFERENCES [dbo].[GROEPs]
        ([GroepID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [GebruikerID] in table 'GROEPGEBRUIKERs'
ALTER TABLE [dbo].[GROEPGEBRUIKERs]
ADD CONSTRAINT [FK_GEBRUIKERGROEPGEBRUIKER]
    FOREIGN KEY ([GebruikerID])
    REFERENCES [dbo].[GEBRUIKERs1]
        ([GerbuikerID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_GEBRUIKERGROEPGEBRUIKER'
CREATE INDEX [IX_FK_GEBRUIKERGROEPGEBRUIKER]
ON [dbo].[GROEPGEBRUIKERs]
    ([GebruikerID]);
GO

-- Creating foreign key on [GenreID] in table 'FILMGENREs'
ALTER TABLE [dbo].[FILMGENREs]
ADD CONSTRAINT [FK_GENREFILMGENRE]
    FOREIGN KEY ([GenreID])
    REFERENCES [dbo].[GENREs]
        ([GenreID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_GENREFILMGENRE'
CREATE INDEX [IX_FK_GENREFILMGENRE]
ON [dbo].[FILMGENREs]
    ([GenreID]);
GO

-- Creating foreign key on [FilmID] in table 'FILMGENREs'
ALTER TABLE [dbo].[FILMGENREs]
ADD CONSTRAINT [FK_FILMFILMGENRE]
    FOREIGN KEY ([FilmID])
    REFERENCES [dbo].[FILMs]
        ([FilmID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------