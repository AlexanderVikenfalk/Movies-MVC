IF OBJECT_ID(N'__EFMigrationsHistory') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20170626111645_Initial')
BEGIN
    CREATE TABLE [Movie] (
        [ID] int NOT NULL IDENTITY,
        [Genre] nvarchar(max),
        [Price] decimal(18, 2) NOT NULL,
        [ReleaseDate] datetime2 NOT NULL,
        [Title] nvarchar(max),
        CONSTRAINT [PK_Movie] PRIMARY KEY ([ID])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20170626111645_Initial')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20170626111645_Initial', N'1.1.2');
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20170626114644_Rating')
BEGIN
    ALTER TABLE [Movie] ADD [Director] nvarchar(max);
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20170626114644_Rating')
BEGIN
    ALTER TABLE [Movie] ADD [Rating] nvarchar(max);
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20170626114644_Rating')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20170626114644_Rating', N'1.1.2');
END;

GO

