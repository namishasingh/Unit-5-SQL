--Videos Table:

CREATE TABLE Videos (
    Id INT PRIMARY KEY,
    Title VARCHAR(50) NOT NULL,
    Length INT NULL,
    Url VARCHAR(100) NOT NULL);
	
INSERT INTO Videos ( Id, Title, Length, Url ) VALUES ( 1, 'Schrute Bucks - The Office US',186, 'https://www.youtube.com/watch?v=vPeRElll3Hw&ab_channel=TheOffice');
INSERT INTO Videos ( Id, Title, Length, Url ) VALUES ( 2, 'TOP 10 Pranks - The Office US', 605, 'https://www.youtube.com/watch?v=23UxXHvKeS4&ab_channel=TheOffice');
INSERT INTO Videos ( Id, Title, Length, Url ) VALUES ( 3, 'How to Prevent the Spread of Germs - The Office US', 123, 'https://www.youtube.com/watch?v=L-NSPhLHIBA&ab_channel=TheOffice');

Select * from Videos

--Reviewers Table:

CREATE TABLE Reviewers (
    Name VARCHAR(50) NOT NULL,
    Rating INT NULL,
    Review VARCHAR(100),
    vidId INT REFERENCES Videos);
	
INSERT INTO Reviewers ( Name, Rating, Review, vidId) VALUES ( 'Steve Carell', 5, 'Loved it, this deserves a Dundie!', 2);
INSERT INTO Reviewers ( Name, Rating, Review, vidId) VALUES ( 'Jenna Fischer', 5, 'Great!', 2);
INSERT INTO Reviewers ( Name, Rating, Review, vidId) VALUES ( 'Rainn Wilson', 4, 'Hilarious, but do not take Dwight and his advice seriously!', 3);
INSERT INTO Reviewers ( Name, Rating, Review, vidId) VALUES ( 'John Krasinski', 5, 'Make sure to do the vampire cough like Pam suggested!', 3);
	
Select * from Reviewers

--Report on video reviews:
SELECT * FROM Videos
INNER JOIN Reviewers 
  ON   videos.Id = reviewers.vidId;
