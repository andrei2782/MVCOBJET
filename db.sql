-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 04, 2020 at 12:25 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `cinesite`
--

-- --------------------------------------------------------

--
-- Table structure for table `actor`
--

CREATE TABLE `actor` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `actor`
--

INSERT INTO `actor` (`id`, `first_name`, `last_name`) VALUES
(1, 'Tom', 'Hanks'),
(2, 'Morgan', 'Freeman'),
(3, 'Keanu', 'Reeves'),
(4, 'Laurence', 'Fishburne'),
(5, 'Brad', 'Pitt'),
(6, 'Kevin', 'Spacey'),
(7, 'Tim', 'Robbins');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `author` varchar(255) NOT NULL,
  `mark` int(11) NOT NULL,
  `content` text NOT NULL,
  `movie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `author`, `mark`, `content`, `movie_id`) VALUES
(1, 'lacey_joeskip7', 8, 'When I first saw this movie I didn\'t appreciate it like I do now. I think it may have been because I was so young when I first saw it. Just recently I saw the movie again. What an amazing story and moving meaning. That movie teaches you so much about life and the meaning of it. That life isn\'t as bad as most people make it seem. That an innocent man can impact so many lives with his innocence. The meaning of the movie to me is that everyone needs to have a better outlook on life. That we need to appreciate more of the little things and not let the big things hold us back. That truly although life may throw us trials and tribulations like a box of chocolates but that we have to just bite into it and get through it even if we don\'t like it. That we all need to hold true to our values and not sink into a place that feels like there\'s no hope... I just love this movie. And anyone who hasn\'t seen it or who thinks that don\'t like it I seriously suggest seeing it or seeing it again. It truly is amazing...', 1),
(2, 'Zonieboy', 9, 'I believe everyone has a right to their opinion about films or other topics. However from a lot of the comments I have read about this film, I do not think many got the gist of the message from the author and the film maker. This film is a great modern fable, a fable in the dictionary is defined as a brief fictitious story that teaches a moral. There are many morals defined in this film but foremost is integrity and a simple goodness.\r\n\r\nI have a half brother who grew up in the Southern U.S. and on one occasion we were discussing this film and he said he felt it portrayed Southerners as dimwitted. I disagreed with him and informed him that the author himself was a native Southerner. The setting is central to this story in that it lets the tale unfold tying in factual events with the fable before us.\r\n\r\nThe film is wonderfully directed by Robert Zemeckis, the film is his opus and is acted by a great cast on all levels. From the children who were Forrest Gump and Gump Jr. by Haley Joel Osment. Say what you want but I feel Tom Hanks deserved the Oscar award. Gary Sinise is synonymous with Lt.Dan whenever you hear those words. Sally Fields is the loving dutiful mother in her challenging situation. Mykelti Williamson as Bubba gives you a real sense in the story that Gump had a genuine friend, he moves you with his character. Words don\'t grasp the full performance of Robin Wright Penn as Jenny. Jennys\' tenderness and pain are palpable as exhibited by Wright.\r\n\r\nI feel that much of Gumps\' appeal is his downright sense of doing the right thing regardless of the people and situations around him and we see that in this film. That being the case maybe we all wish we could be just a little more like that, trying to maintain innate goodness and not the trade-offs we often make as we go down lifes highways.\r\n\r\nThe movie has it all too,drama,comedy and it challenges societal norms as well. Then there are the almost endless quotes from the movie that have slipped into everyday speech. They are too numerous to say at this point.One of the toppers for me in the movie is when Forrest is in a quandary about life and wondering as Lt.Dan said we all have a destiny and his Mom says it is where we are all just floating around like a feather in the wind. Forrest\'s character terms it very well with this quote,\"I think it is a little bit of both.\" From my experiences in life it does appear to be that way. So if you have not seen the movie,see it soon you are in for a real treat. If you did not like it, give it a try again and hopefully you will see it for the great story it is!\r\n', 1),
(3, 'chvylvr80', 6, 'Seven\'s quality puts it so far beyond most of the \"cops on trail of deranged killer\" genre that it comes out as a true jewel of cinema. Everything about seven is perfect. It is art captured on film. This movie is a bright spot for all of the stars who worked on it.\r\n\r\nBrad Pitt never gets the credit he deserves for his acting because he\'s a pretty boy and the press is a lot more interested about how he and Jennifer are doing. That\'s a shame because he is a talented actor that isn\'t afraid to take chances with both the roles that he picks and the characters that he plays. That is quite rare in the A-list world. Morgan Freeman is a great actor. You can always count on him to do what he does best which is play a wise veteran that has seen it all. Kevin Spacey is another great actor that has great range and really puts life and personality into his characters.\r\n\r\nThe real talent of this movie, excluding the actors that brought it to life, is the director David Fincher and the writer Andrew Kevin Walker. Fincher\'s talents for making a visually stunning film are now well known and he often brings a dark patina to his work. Andrew Kevin Walker must have some incredible demons living inside him. Either that or one hell of an imagination for bringing the intricate story of Seven and the plan of John Doe to life.\r\n\r\nJohn Doe\'s plan really is twisted and I won\'t be spoiling it here. Suffice to say I have never seen so evil and complicated a plan in a movie before or since. The cinematography of the film is dark but beautiful and throughout the film it is either night or raining or both except for two very brief moments. It is such an emotional movie that you can\'t keep from being caught up in what is happening. Do you understand and sympathize with what John Doe is doing or do you think him a mad killer that must be stopped.\r\n\r\nBottom Line: If you haven\'t had the opportunity to see Seven yet then you must at least rent it. It is so damn good that I know you will like it. The only reason you wouldn\'t is because you\'re just too damn fragile to take something this hardcore.\r\n', 2),
(4, 'pooc-8', 8, 'David Fincher\'s bleak, relentless, and ultimately terrifying crime thriller Seven transcends other films of the genre with incredible plotting (the sort Hitchcock might employ were he alive and making films in the 1990s) and scalding intelligence. With only a small handful of minor flaws -- the overly familiar retiring cop/young cop pairing; the awful \"I\'m taking you off the case!\" cliche seemingly required by the genre; one giant lapse in logic in the downward spiral toward the conclusion that cannot be revealed without ruining the script\'s gruesome surprise -- Seven typically keeps its viewers imprisoned in their seats with a combination of morbid fascination and abject fear. Despite attempts by studio executives to alter Andrew Kevin Walker\'s ending, the filmmaking team prevailed and audiences experienced that rare treat of mainstream cinema: an uncompromising vision.', 2),
(5, 'mambubukid', 7, 'The story of a reluctant Christ-like protagonist set against a baroque, MTV backdrop, The Matrix is the definitive hybrid of technical wizardry and contextual excellence that should be the benchmark for all sci-fi films to come.\r\n\r\nHollywood has had some problems combining form and matter in the sci-fi genre. There have been a lot of visually stunning works but nobody cared about the hero. (Or nobody simply cared about anything.) There a few, though, which aroused interest and intellect but nobody \'ooh\'-ed or \'aah\'-ed at the special effects. With The Matrix, both elements are perfectly en sync. Not only did we want to cheer on the heroes to victory, we wanted them to bludgeon the opposition. Not only did we sit in awe as Neo evaded those bullets in limbo-rock fashion, we salivated.\r\n\r\nBut what makes The Matrix several cuts above the rest of the films in its genre is that there are simply no loopholes. The script, written by the Wachowski brothers is intelligent but carefully not geeky. The kung-fu sequences were deftly shot -- something even Bruce Lee would\'ve been proud of. The photography was breathtaking. (I bet if you had to cut every frame on the reel and had it developed and printed, every single frame would stand on its own.) And the acting? Maybe not the best Keanu Reeves but name me an actor who has box-office appeal but could portray the uneasy and vulnerable protagonist, Neo, to a T the way Reeves did. But, come to think of it, if you pit any actor beside Laurence Fishburne, you\'re bound to confuse that actor for bad acting. As Morpheus, Mr. Fishburne is simply wicked! Shades of his mentor-role in Higher Learning, nobody exudes that aura of quiet intensity than Mr. Fishburne. His character, battle-scarred but always composed Morpheus, is given an extra dose of mortality (He loves Neo to a fault.) only Mr. Fishburne can flesh out.\r\n\r\nPeople will say what they want to say about how good The Matrix is but the bottomline is this: finally there\'s a philosophical film that has cut through this generation. My generation. The Wachowski brothers probably scribbled a little P.S. note when they finished the script saying: THINK FOR A MOMENT ABOUT YOUR EXISTENCE. What is the Matrix, you ask? Something that\'s closer to reality than you think.\r\n\r\nEither that or it\'s my personal choice for best film of all-time.\r\n', 4),
(6, 'bencoops', 8, 'The first time i watched this, i was absolutely amazed with the concept of it. The action is just so amazing to watch. I\'ve seen this film 3 times and each time it just gets better. If you like sci fi action films then this is the film for you.', 4),
(7, 'KORN-6', 10, 'The Shawshank Redemption has great performances, extremely well written script and story all leading to a deeply emotional climax! One of the best dramas of all time!', 3),
(8, 'reismark', 9, 'Three words: Oh. My. God.\r\n\r\nHow am i supposed to describe this absolutely fantastic and unbelievable film in words? I don\'t know. But I\'ll give it a shot. Here goes.\r\n\r\nThis movie is just bloody excellent, brilliant, fantastic, unbelievable, not a thing wrong with it, shocking (in a good way), heck, pretty much every single good comment word you can think of.', 3);

-- --------------------------------------------------------

--
-- Table structure for table `director`
--

CREATE TABLE `director` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `director`
--

INSERT INTO `director` (`id`, `first_name`, `last_name`) VALUES
(1, 'David', 'Fincher'),
(2, 'Robert', 'Zemeckis'),
(3, 'Frank', 'Darabont'),
(4, 'Lana ', 'Wachowski');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`id`, `name`) VALUES
(1, 'Drame'),
(4, 'Science Fiction');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `duration` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `cover_image` varchar(255) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `director_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`id`, `title`, `description`, `duration`, `date`, `cover_image`, `genre_id`, `director_id`) VALUES
(1, 'Forest Gump', 'The presidencies of Kennedy and Johnson, the events of Vietnam, Watergate, and other historical events unfold through the perspective of an Alabama man with an IQ of 75, whose only desire is to be reunited with his childhood sweetheart.', '2h22', '1994-10-05', 'https://i.imgur.com/6vy8xeA.png', 1, 2),
(2, 'Seven', 'Two detectives, a rookie and a veteran, hunt a serial killer who uses the seven deadly sins as his motives.', '2h07', '1996-01-31', 'https://imgur.com/sYcU5cR.png', 1, 1),
(3, 'Les évadés', 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.', '2h22', '1995-03-01', 'https://imgur.com/4pe7hT4.png', 1, 3),
(4, 'Matrix', 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.', '2h16', '1999-06-23', 'https://imgur.com/CsSEzCE.png', 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `movies_actors`
--

CREATE TABLE `movies_actors` (
  `movie_id` int(11) NOT NULL,
  `actor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movies_actors`
--

INSERT INTO `movies_actors` (`movie_id`, `actor_id`) VALUES
(1, 1),
(2, 2),
(3, 2),
(4, 3),
(4, 4),
(2, 5),
(2, 6),
(3, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Indexes for table `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genre_id` (`genre_id`),
  ADD KEY `director_id` (`director_id`);

--
-- Indexes for table `movies_actors`
--
ALTER TABLE `movies_actors`
  ADD PRIMARY KEY (`movie_id`,`actor_id`),
  ADD KEY `actor_id` (`actor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actor`
--
ALTER TABLE `actor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `director`
--
ALTER TABLE `director`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`);

--
-- Constraints for table `movie`
--
ALTER TABLE `movie`
  ADD CONSTRAINT `movie_ibfk_1` FOREIGN KEY (`genre_id`) REFERENCES `Genre` (`id`),
  ADD CONSTRAINT `movie_ibfk_2` FOREIGN KEY (`director_id`) REFERENCES `Director` (`id`);

--
-- Constraints for table `movies_actors`
--
ALTER TABLE `movies_actors`
  ADD CONSTRAINT `movies_actors_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`),
  ADD CONSTRAINT `movies_actors_ibfk_2` FOREIGN KEY (`actor_id`) REFERENCES `actor` (`id`);


--
-- Requests samples
--

/* Tous les films dans lesquels Morgan Freeman est acteur */
/*
SELECT movie.id, movie.title
FROM movie
INNER JOIN movies_actors on movies_actors.movie_id = movie.id
INNER JOIN actor ON actor.id = movies_actors.actor_id
WHERE actor.first_name = "Morgan"
AND actor.last_name = "Freeman"*/

/* Tous les films dont la note moyenne est supérieur à 8 */
/*
SELECT movie.id, movie.title, AVG(comment.mark)
FROM movie
INNER JOIN comment ON comment.movie_id = movie.id
GROUP BY movie.id
HAVING AVG(comment.mark) > 8*/
