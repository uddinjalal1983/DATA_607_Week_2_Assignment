drop schema if exists MovieRating;
create schema MovieRating;
use MovieRating;

drop table if exists Person_Rating;

CREATE TABLE Person_Rating
(
  Person_id int PRIMARY KEY,
	Person_Name varchar(50) NOT NULL,
		Relationship varchar (20),
			Rating_Movie_Titanic int NOT NULL,
				Rating_Movie_Shawshank_Redemption int NOT NULL,
					Rating_Movie_Avatar int NOT NULL,
						Rating_Movie_Terminator2 int NOT NULL,
							Rating_Movie_Spiderman int NOT NULL,
								Rating_Movie_Ironman int NOT NULL
                );

INSERT INTO Person_Rating (Person_id, Person_Name, Relationship, Rating_Movie_Titanic, 
Rating_Movie_Shawshank_Redemption, Rating_Movie_Avatar, Rating_Movie_Terminator2, Rating_Movie_Spiderman, Rating_Movie_Ironman)
 
VALUES 
(101, 'David R Luke', 'Friend', 5, 4, 4, 5, 5, 6),
(102, 'Rajib Chowdhury', 'Friend', 3, 5, 5, 6, 6, 4),
(103, 'Saiful Islam', 'Roommate', 5, 4, 5, 6, 4, 5),
(104, 'Kabir Hossain', 'Uncle', 4, 3, 6, 4, 4, 5),
(105, 'Randy Persad', 'Friend', 5, 4, 3, 5, 5, 4),
(106, 'Shanto Islam', 'Brother', 6, 6, 4, 3, 5, 5),
(107, 'Istiak Chowdhury', 'Nephew', 5, 4, 5, 6, 5,5);

select * from Person_Rating;

select  Person_id, Person_Name , Relationship, Rating_Movie_Titanic,
	    Rating_Movie_Shawshank_Redemption , Rating_Movie_Avatar,
	    Rating_Movie_Terminator2 , Rating_Movie_Spiderman, Rating_Movie_Ironman 
        
from Person_Rating into outfile 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/Movie_Rating4.csv'
    FIELDS TERMINATED BY '"'
    terminated by ';'
    escaped by '"'
    LINES TERMINATED BY '\r\n'
