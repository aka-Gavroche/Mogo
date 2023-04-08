DROP DATABASE dymar;
CREATE DATABASE dymar;

USE dymar;

-- CREATE TABLE Mailing(
--     ID INT PRIMARY KEY AUTO_INCREMENT,
--     Address VARCHAR(100) NOT NULL
-- );


-- INSERT INTO Mailing(Address) VALUES('test@test.com');
-- INSERT INTO Mailing(Address) VALUES('admin@admin.com');
-- INSERT INTO Mailing(Address) VALUES('dymar@test.com');
-- INSERT INTO Mailing(Address) VALUES('mardy@test.com');
-- INSERT INTO Mailing(Address) VALUES('tset@test.com');

CREATE TABLE Articles(
	ID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(200) NOT NULL,
    Annotation VARCHAR(1000) NOT NULL,
    Image VARCHAR(3000) NOT NULL,
    Text VARCHAR(8000),
    AddedTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

-- INSERT INTO Articles(Title, Annotation, Image, Text) VALUES('First Article','Short Desription Of first Article','','This is the first article and it will not be the last.');
-- INSERT INTO Articles(Title, Annotation, Image, Text) VALUES('Last Article','Not so short Desription Of last Article','','This is the last article and we are very sad about it.');

CREATE TABLE Albums(
	ID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(200) NOT NULL,
    ImagePreview VARCHAR(3000) NOT NULL
);

-- INSERT INTO Albums(Title, ImagePreview) VALUES('Test album', 'album1.jpg');
-- INSERT INTO Albums(Title, ImagePreview) VALUES('Flower power', 'flower.jpg');
-- INSERT INTO Albums(Title, ImagePreview) VALUES('Seven seas', 'pirate.jpg');

CREATE TABLE Photos(
	ID INT PRIMARY KEY AUTO_INCREMENT,
    AlbumID INT,
    Image VARCHAR(3000) NOT NULL,
    CONSTRAINT FK_PhotoAlbum FOREIGN KEY (AlbumID)
	REFERENCES Albums(ID) ON DELETE CASCADE
);


-- INSERT INTO Photos(AlbumID, Image) VALUES(2,'tulip.jpg');
-- INSERT INTO Photos(AlbumID, Image) VALUES(2,'rose.jpg');
-- INSERT INTO Photos(AlbumID, Image) VALUES(3,'blackBeard.jpg');
-- INSERT INTO Photos(AlbumID, Image) VALUES(3,'sinbad.jpg');
-- INSERT INTO Photos(AlbumID, Image) VALUES(1,'placeholder.jpg');

CREATE TABLE Users(
	ID INT PRIMARY KEY AUTO_INCREMENT,
    Username VARCHAR(100) NOT NULL,
    Pass VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    DOB DATETIME,
    IsAdmin BIT
);

INSERT INTO Users(Username, Pass, Email, DOB, IsAdmin) VALUES('admin', 'admin', 'admin@admin.com', '2001-01-01', 1);
