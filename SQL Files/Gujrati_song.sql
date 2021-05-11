
CREATE TABLE Gujrati_Songs ( SongID INTEGER, SongName VARCHAR(100), ArtistID INTEGER NOT NULL, ArtistName VARCHAR(100), Lyrics VARCHAR(13683),
    ReleaseDate DATE, Rating INTEGER, TotalReviews INTEGER, GenreID INTEGER NOT NULL, MoodID INTEGER NOT NULL, FilmID INTEGER NOT NULL,
    SongFilePath VARCHAR(200), Image BLOB(16), PRIMARY KEY (SongID), FOREIGN KEY (GenreID) REFERENCES Genre (GenreID), FOREIGN KEY (ArtistID)
	REFERENCES Artist (ArtistID), FOREIGN KEY (MoodID) REFERENCES Mood (MoodID), FOREIGN KEY (FilmID) REFERENCES FilmMakers (FilmID) );

Insert into Gujrati_Songs values(700,"Maine Payal Hai Chhanikai",24,"Falguni Pathak","/home/akshyta/Desktop/DBMS_Project/Lyrics/G1","2013-05-13",4,162,901,102,41,"/home/akshyta/Desktop/DBMS_Project/Songs/G1","/home/akshyta/Desktop/DBMS_Project/Images/G1");
Insert into Gujrati_Songs values(701,"Yaad Piya ki Aane Lagi",24,"Falguni Pathak","/home/akshyta/Desktop/DBMS_Project/Lyrics/G2","2013-05-13",4,135,902,103,41,"/home/akshyta/Desktop/DBMS_Project/Songs/G2","/home/akshyta/Desktop/DBMS_Project/Images/G2");
Insert into Gujrati_Songs values(702,"Meri Chunar Udd Udd jaye",24,"Falguni Pathak","/home/akshyta/Desktop/DBMS_Project/Lyrics/G3","2013-05-13",3,110,903,103,41,"/home/akshyta/Desktop/DBMS_Project/Songs/G3","/home/akshyta/Desktop/DBMS_Project/Images/G3");
Insert into Gujrati_Songs values(703,"Saawan Mein",24,"Falguni Pathak","/home/akshyta/Desktop/DBMS_Project/Lyrics/G4","2015-06-18",5,130,904,103,41,"/home/akshyta/Desktop/DBMS_Project/Songs/G4","/home/akshyta/Desktop/DBMS_Project/Images/G4");
Insert into Gujrati_Songs values(705,"Aiyo Rama",24,"Falguni Pathak","/home/akshyta/Desktop/DBMS_Project/Lyrics/G5","2012-08-20",4,100,905,102,41,"/home/akshyta/Desktop/DBMS_Project/Songs/G5","/home/akshyta/Desktop/DBMS_Project/Images/G5");
Insert into Gujrati_Songs values(706,"Agamni Vaat Karsho Na",27,"Sanjay Oza","/home/akshyta/Desktop/DBMS_Project/Lyrics/G6","2010-11-14",3,140,906,105,41,"/home/akshyta/Desktop/DBMS_Project/Songs/G6","/home/akshyta/Desktop/DBMS_Project/Images/G6");
Insert into Gujrati_Songs values(707,"Amari Jindagi No Aa",27,"Sanjay Oza","/home/akshyta/Desktop/DBMS_Project/Lyrics/G7","2012-04-13",5,160,907,105,41,"/home/akshyta/Desktop/DBMS_Project/Songs/G7","/home/akshyta/Desktop/DBMS_Project/Images/G7");
Insert into Gujrati_Songs values(708,"Haque Thi Vadhare Lesh",27,"Sanjay Oza","/home/akshyta/Desktop/DBMS_Project/Lyrics/G8","2016-01-31",4,145,908,101,41,"/home/akshyta/Desktop/DBMS_Project/Songs/G8","/home/akshyta/Desktop/DBMS_Project/Images/G8");
Insert into Gujrati_Songs values(709,"Matlabi Duniya Matlabi Pyar",28,"Parth Chaudhary","/home/akshyta/Desktop/DBMS_Project/Lyrics/G9","2016-05-22",4,170,909,104,41,"/home/akshyta/Desktop/DBMS_Project/Songs/G9","/home/akshyta/Desktop/DBMS_Project/Images/G9");
Insert into Gujrati_Songs values(710,"Love You Love You Karta Ta",28,"Parth Chaudhary","/home/akshyta/Desktop/DBMS_Project/Lyrics/G10","2016-08-25",2,100,901,104,41,"/home/akshyta/Desktop/DBMS_Project/Songs/G10","/home/akshyta/Desktop/DBMS_Project/Images/G10");
Insert into Gujrati_Songs values(711,"Dhol Nagada",29,"Geeta Rabari","/home/akshyta/Desktop/DBMS_Project/Lyrics/G11","2009-02-01",5,190,902,101,41,"/home/akshyta/Desktop/DBMS_Project/Songs/G11","/home/akshyta/Desktop/DBMS_Project/Images/G11");
Insert into Gujrati_Songs values(712,"Koni Pade Entry",29,"Geeta Rabari","/home/akshyta/Desktop/DBMS_Project/Lyrics/G12","2009-08-20",3,113,903,102,41,"/home/akshyta/Desktop/DBMS_Project/Songs/G12","/home/akshyta/Desktop/DBMS_Project/Images/G12");
Insert into Gujrati_Songs values(713,"Bewafa Have Taro Varo",30,"Vijay Suvada","/home/akshyta/Desktop/DBMS_Project/Lyrics/G13","2007-01-04",4,122,904,102,41,"/home/akshyta/Desktop/DBMS_Project/Songs/G13","/home/akshyta/Desktop/DBMS_Project/Images/G13");
Insert into Gujrati_Songs values(714,"Lagdi Lahore Di",31,"Sachin Jigar","/home/akshyta/Desktop/DBMS_Project/Lyrics/G14","2011-08-03",2,29,905,105,41,"/home/akshyta/Desktop/DBMS_Project/Songs/G14","/home/akshyta/Desktop/DBMS_Project/Images/G14");
Insert into Gujrati_Songs values(715,"Kamariya",31,"Sachin Jigar","/home/akshyta/Desktop/DBMS_Project/Lyrics/G15","2015-01-28",4,120,906,105,41,"/home/akshyta/Desktop/DBMS_Project/Songs/G15","/home/akshyta/Desktop/DBMS_Project/Images/G15");
Insert into Gujrati_Songs values(716,"Kyu Sudhi Aene Yaad Karu",32,"Jayker Bhojak","/home/akshyta/Desktop/DBMS_Project/Lyrics/G16","2005-01-02",3,114,907,101,41,"/home/akshyta/Desktop/DBMS_Project/Songs/G16","/home/akshyta/Desktop/DBMS_Project/Images/G16");
Insert into Gujrati_Songs values(717,"Lapet",32,"Jayker Bhojak","/home/akshyta/Desktop/DBMS_Project/Lyrics/G17","2014-03-18",3,130,908,102,41,"/home/akshyta/Desktop/DBMS_Project/Songs/G17","/home/akshyta/Desktop/DBMS_Project/Images/G17");
Insert into Gujrati_Songs values(718,"Bhooli Shaksho Na Tame",32,"Jayker Bhojak","/home/akshyta/Desktop/DBMS_Project/Lyrics/G18","2005-01-29",3,155,909,103,41,"/home/akshyta/Desktop/DBMS_Project/Songs/G18","/home/akshyta/Desktop/DBMS_Project/Images/G18");
Insert into Gujrati_Songs values(719,"Ukhana",33,"Shyamal Saumil","/home/akshyta/Desktop/DBMS_Project/Lyrics/G19","2016-04-05",4,177,901,104,41,"/home/akshyta/Desktop/DBMS_Project/Songs/G19","/home/akshyta/Desktop/DBMS_Project/Images/G19");
Insert into Gujrati_Songs values(720,"He Nath Jodi Hath",33,"Shyama Saumil","/home/akshyta/Desktop/DBMS_Project/Lyrics/G20","2018-09-30",4,189,902,105,41,"/home/akshyta/Desktop/DBMS_Project/Songs/G20","/home/akshyta/Desktop/DBMS_Project/Images/G20");
Insert into Gujrati_Songs values(721,"Dejo Tali",34,"Aarti Munshi","/home/akshyta/Desktop/DBMS_Project/Lyrics/G21","2017-09-27",5,200,903,101,41,"/home/akshyta/Desktop/DBMS_Project/Songs/G21","/home/akshyta/Desktop/DBMS_Project/Images/G21");
Insert into Gujrati_Songs values(722,"Ghor Andhari Re",34,"Aarti Munshi","/home/akshyta/Desktop/DBMS_Project/Lyrics/G22","2010-10-28",4,188,904,102,41,"/home/akshyta/Desktop/DBMS_Project/Songs/G22","/home/akshyta/Desktop/DBMS_Project/Images/G22");
Insert into Gujrati_Songs values(723,"Jai Devi Jai Jai Om",34,"Aarti Munshi","/home/akshyta/Desktop/DBMS_Project/Lyrics/G23","2010-10-28",4,120,905,102,41,"/home/akshyta/Desktop/DBMS_Project/Songs/G23","/home/akshyta/Desktop/DBMS_Project/Images/G23");
Insert into Gujrati_Songs values(724,"Daru Pidho",35,"Vatsala Patil","/home/akshyta/Desktop/DBMS_Project/Lyrics/G24","2011-11-18",5,134,906,102,41,"/home/akshyta/Desktop/DBMS_Project/Songs/G24","/home/akshyta/Desktop/DBMS_Project/Images/G24");
Insert into Gujrati_Songs values(725,"Ke Bole Koyaldi",35,"Vatsala Patil","/home/akshyta/Desktop/DBMS_Project/Lyrics/G25","2012-12-19",3,160,907,103,41,"/home/akshyta/Desktop/DBMS_Project/Songs/G25","/home/akshyta/Desktop/DBMS_Project/Images/G25");
Insert into Gujrati_Songs values(726,"Ram Chahe Leela",36,"Bhoomi Trivedi","/home/akshyta/Desktop/DBMS_Project/Lyrics/G26","2001-01-20",3,156,908,104,41,"/home/akshyta/Desktop/DBMS_Project/Songs/G26","/home/akshyta/Desktop/DBMS_Project/Images/G26");
Insert into Gujrati_Songs values(727,"Haiye Rakhi Hom",37,"Atul Purohit","/home/akshyta/Desktop/DBMS_Project/Lyrics/G27","2003-03-22",4,140,909,101,41,"/home/akshyta/Desktop/DBMS_Project/Songs/G27","/home/akshyta/Desktop/DBMS_Project/Images/G27");
Insert into Gujrati_Songs values(728,"Jay Jay ho ganpati bapa",38,"Paritosh Goswami","/home/akshyta/Desktop/DBMS_Project/Lyrics/G28","2004-04-23",3,175,901,102,41,"/home/akshyta/Desktop/DBMS_Project/Songs/G28","/home/akshyta/Desktop/DBMS_Project/Images/G28");
Insert into Gujrati_Songs values(729,"Hari Om Namah Shivah",39,"Sachin Limaye","/home/akshyta/Desktop/DBMS_Project/Lyrics/G29","2005-05-29",4,185,902,103,41,"/home/akshyta/Desktop/DBMS_Project/Songs/G29","/home/akshyta/Desktop/DBMS_Project/Images/G29");
Insert into Gujrati_Songs values(730,"Jamuna Ne Kanthe",40,"Achal Mehta","/home/akshyta/Desktop/DBMS_Project/Lyrics/G30","2006-06-30",5,180,903,104,41,"/home/akshyta/Desktop/DBMS_Project/Songs/G30","/home/akshyta/Desktop/DBMS_Project/Images/G30");
