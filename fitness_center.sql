USE ecom;
CREATE TABLE Members (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT
    );
SELECT*FROM Members;

INSERT INTO Members (id,name,age)
VALUES 
(1, 'Abigail', 25),
(2, 'Bertram', 18),
(3, 'Catherine', 23),
(4, 'Denali', 21);

CREATE TABLE WorkoutSessions (
    session_id INT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

INSERT INTO WorkoutSessions(session_id,member_id,session_date,session_time,activity)
VALUES
(1, 1, '2024-05-28', '0800', 'swimming');
INSERT INTO WorkoutSessions(session_id,member_id,session_date,session_time,activity)
VALUES
(2, 1, '2024-05-28', '1900', 'weightlifting');
INSERT INTO WorkoutSessions(session_id,member_id,session_date,session_time,activity)
VALUES
(3, 3, '2024-05-29', '0600', 'track'),
(4, 3, '2024-05-30', '1100', 'weightlifting');

SELECT * FROM WorkoutSessions;


UPDATE WorkoutSessions
SET session_time='1700'
WHERE session_id = 1;

DELETE FROM Members
WHERE id = 4;
