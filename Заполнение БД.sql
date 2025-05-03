INSERT INTO albums(id, name, year_of_release) VALUES
(1, 'Unchain My Heart', 1987),
(2, 'D.I.S.C.O.', 1980),
(3, 'Rockin’ at the Hops', 1960),
(4, 'I Love You', 2013),
(5, 'Strangers in the Night', 1966),
(6, 'Norman Fucking Rockwell!', 2019);
INSERT INTO genre(name) VALUES
('Blues'),
('Disco'),
('Rock and roll'),
('Аlternative rock '),
('Indie rock'),
('Vocal jazz'),
('Pop');
INSERT INTO executor(name) VALUES
('Joe Cocker'),
('Ottawan'),
('Chuck Berry'),
('The Neighbourhood'),
('Frank Sinatra'),
('Lana Del Rey');
INSERT INTO genreexecutor(genre_id, executor_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 4),
(6, 5),
(7, 5),
(7, 6);
INSERT INTO executoralbums(executor_id, albums_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6);
INSERT INTO tracks(id, name, albums_id, duration) VALUES
(1, 'Unchain My Heart', 1, '00:05:04'),
(2, 'Trust in Meс', 1, '00:04:14'),
(3, 'Hello Rio!', 2, '00:04:27'),
(4, 'Help, Get Me Some Help!', 2, '00:04:27'),
(5, 'Comme Aux U.S.A.', 2, '00:04:50'),
(6, 'I Got to Find My Baby', 3, '00:02:12'),
(7, 'Bye Bye Johnny', 3, '00:02:02'),
(8, 'Sweater Weather', 4, '00:04:00'),
(9, 'Afraid', 4, '00:04:11'),
(10, 'Female Robbery', 4, '00:03:29'),
(11, 'Strangers in the Night', 5, '00:02:25'),
(12, 'My Baby Just Cares for Me', 5, '00:02:30'),
(13, 'You"re Driving Me Crazy', 5, '00:02:15'),
(14, 'California', 6, '00:05:06'), 
(15, 'The Next Best American Record', 6, '00:05:49');  
INSERT INTO collection(id, name, year_of_release) VALUES
(1, 'The Ultimate Collection ', 2003),
(2, 'Alle Hits auf einer CD Ottawan ', 2009),
(3, 'Rhythm & Blues Rendez-Vous Plus Rockin` At The Hops (Remastered)', 2019),
(4, 'I Love You. (10th Anniversary Edition)', 2023),
(5, 'The Best Late Night Moods Album In The World...Ever!', 2021); 
INSERT INTO trackscollictions(collection_id, tracks_id) VALUES
(1, 1),
(2, 5),
(3, 7),
(4, 9),
(5, 11);
