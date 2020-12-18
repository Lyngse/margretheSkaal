import 'package:flutter/material.dart';

import '../models/category.dart';
import '../models/category_item.dart';

var STANDARD_CATEGORIES = [
    Category(
    id: 4,
    title: 'Disney',
    imageUrl: 'assets/images/Disney.jpg',
    isStandard: true,
    items: [
      CategoryItem(text: 'Aladdin', id: 1,),
      CategoryItem(text: 'Den lille havfrue', id: 2,),
      CategoryItem(text: 'Bambi', id: 3,),
      CategoryItem(text: 'Dumbo', id: 4,),
      CategoryItem(text: 'Peter Pan', id: 5,),
      CategoryItem(text: 'Pinocchio', id: 6,),
      CategoryItem(text: 'Mulan', id: 7,),
      CategoryItem(text: '101 Dalmatiner', id: 8,),
      CategoryItem(text: 'Tarzan', id: 9,),
      CategoryItem(text: 'Robin Hood', id: 10,),
      CategoryItem(text: 'Find Nemo', id: 11,),
      CategoryItem(text: 'Løvernes Konge', id: 12,),
      CategoryItem(text: 'Bjørnebrødre', id: 13,),
      CategoryItem(text: 'Skønheden og Udyret', id: 14,),
      CategoryItem(text: 'Askepot', id: 15,),
      CategoryItem(text: 'Snehvide', id: 16,),
      CategoryItem(text: 'Frozen', id: 17,),
      CategoryItem(text: 'Moana (Vaiana)', id: 18,),
      CategoryItem(text: 'De Utrolige', id: 19,),
      CategoryItem(text: 'Vilde Rolf', id: 20,),
      CategoryItem(text: 'Big Hero 6', id: 21,),
      CategoryItem(text: 'Monsters Inc.', id: 22,),
      CategoryItem(text: 'Toy Story', id: 23,),
      CategoryItem(text: 'Frikvarter', id: 24,),
      CategoryItem(text: 'Hannah Montana', id: 25,),
      CategoryItem(text: 'Kejserens nye flip', id: 26,),
      CategoryItem(text: 'Herkules', id: 27,),
      CategoryItem(text: 'Klokkeren fra Notre Dame', id: 28,),
      CategoryItem(text: 'Pocahontas', id: 29,),
      CategoryItem(text: 'Junglebogen', id: 30,),
      CategoryItem(text: 'Aristocats', id: 31,),
      CategoryItem(text: 'Lady og Vagabonden', id: 32,),
      CategoryItem(text: 'Tornerose', id: 33,),
      CategoryItem(text: 'Sværdet i stenen', id: 34,),
      CategoryItem(text: 'Basil mus', id: 35,),
      CategoryItem(text: 'Lilo og Stitch', id: 36,),
      CategoryItem(text: 'Biler', id: 37,),
      CategoryItem(text: 'Ratatouille', id: 38,),
      CategoryItem(text: 'Wall-E', id: 39,),
      CategoryItem(text: 'Op', id: 40,),
      CategoryItem(text: 'Inderst inde', id: 41,),
      CategoryItem(text: 'Zootopia', id: 42,),
      CategoryItem(text: 'Mads og Mikkel', id: 43,),
    ],
  ),
    Category(
    id: 3, 
    title: 'Marvel', 
    imageUrl: 'assets/images/Marvel.jpg',
    isStandard: true,
    items: [
      CategoryItem(text: 'Iron Man', id: 1,),
      CategoryItem(text: 'Hulk', id: 2,),
      CategoryItem(text: 'Thor', id: 3,),
      CategoryItem(text: 'Ultron', id: 4,),
      CategoryItem(text: 'Ant-Man', id: 5,),
      CategoryItem(text: 'Captain America', id: 6,),
      CategoryItem(text: 'Doctor Strange', id: 7,),
      CategoryItem(text: 'Spider-Man', id: 8,),
      CategoryItem(text: 'Black Panther', id: 9,),
      CategoryItem(text: 'Daredevil', id: 10,),
      CategoryItem(text: 'Punisher', id: 11,),
      CategoryItem(text: 'Deadpool', id: 12,),
      CategoryItem(text: 'Nick Fury', id: 13,),
      CategoryItem(text: 'Colossus', id: 14,),
      CategoryItem(text: 'Bucky Barnes', id: 15,),
      CategoryItem(text: 'Hawkeye', id: 16,),
      CategoryItem(text: 'Luke Cage', id: 17,),
      CategoryItem(text: 'Iron Fist', id: 18,),
      CategoryItem(text: 'Scarlet Witch', id: 19,),
      CategoryItem(text: 'War Machine', id: 20,),
      CategoryItem(text: 'Captain Marvel', id: 21,),
      CategoryItem(text: 'Quicksilver', id: 22,),
      CategoryItem(text: 'Vision', id: 23,),
      CategoryItem(text: 'Black Widow', id: 24,),
      CategoryItem(text: 'Wasp', id: 25,),
      CategoryItem(text: 'Falcon', id: 26,),
      CategoryItem(text: 'Jessica Jones', id: 27,),
      CategoryItem(text: 'Rocket Raccoon', id: 28,),
      CategoryItem(text: 'Groot', id: 29,),
      CategoryItem(text: 'Drax', id: 30,),
      CategoryItem(text: 'Star-Lord', id: 31,),
      CategoryItem(text: 'Mantis', id: 32,),
      CategoryItem(text: 'Thanos', id: 33,),
      CategoryItem(text: 'Venom', id: 34,),
      CategoryItem(text: 'Loki', id: 35,),
      CategoryItem(text: 'Gamora', id: 36,),
      CategoryItem(text: 'Yondu', id: 37,),
    ],
  ),
    Category(
    id: 6, 
    title: 'Film', 
    imageUrl: 'assets/images/Movies.jpg',
    isStandard: true,
    items: [
      CategoryItem(text: 'Godfather', id: 1,),
      CategoryItem(text: 'The Dark Knight', id: 2,),
      CategoryItem(text: 'Ringenes herre', id: 3,),
      CategoryItem(text: 'Pulp Fiction', id: 4,),
      CategoryItem(text: 'Fight Club', id: 5,),
      CategoryItem(text: 'Forrest Gump', id: 6,),
      CategoryItem(text: 'The Matrix', id: 7,),
      CategoryItem(text: 'Saving Private Ryan', id: 8,),
      CategoryItem(text: 'The Green Mile', id: 9,),
      CategoryItem(text: 'Titanic', id: 10,),
      CategoryItem(text: 'Whiplash', id: 11,),
      CategoryItem(text: 'Terminator', id: 12,),
      CategoryItem(text: 'Gladiator', id: 13,),
      CategoryItem(text: 'The Avengers', id: 14,),
      CategoryItem(text: 'Django Unchained', id: 15,),
      CategoryItem(text: 'Braveheart', id: 16,),
      CategoryItem(text: 'Harry Potter', id: 17,),
      CategoryItem(text: 'Der Untergang', id: 18,),
      CategoryItem(text: 'The Wolf of Wall Street', id: 19,),
      CategoryItem(text: 'Blade Runner', id: 20,),
      CategoryItem(text: 'The Notebook', id: 21,),
      CategoryItem(text: 'Hacksaw Ridge', id: 22,),
      CategoryItem(text: 'Jurassic Park', id: 23,),
      CategoryItem(text: 'Transformers', id: 24,),
      CategoryItem(text: 'Robin Hood', id: 25,),
      CategoryItem(text: 'Deadpool', id: 26,),
      CategoryItem(text: 'Avatar', id: 27,),
      CategoryItem(text: 'Black Panther', id: 28,),
      CategoryItem(text: 'The Hunger Games', id: 29,),
      CategoryItem(text: 'Frozen', id: 30,),
      CategoryItem(text: 'American Sniper', id: 31,),
      CategoryItem(text: 'Guardians of the Galaxy', id: 32,),
      CategoryItem(text: 'Skyfall', id: 33,),
      CategoryItem(text: 'Twilight', id: 34,),
      CategoryItem(text: 'Narnia', id: 35,),
      CategoryItem(text: 'Home Alone', id: 36,),
      CategoryItem(text: 'Shrek', id: 37,),
      CategoryItem(text: 'Jaws', id: 38,),
      CategoryItem(text: 'Ghostbusters', id: 39,),
      CategoryItem(text: 'Men in Black', id: 40,),
      CategoryItem(text: 'The Fast and the Furious', id: 41,),
      CategoryItem(text: 'Pirates of the Caribbean', id: 42,),
      CategoryItem(text: 'The Hobbit', id: 43,),
      CategoryItem(text: 'Ice Age', id: 44,),
      CategoryItem(text: 'The Wolverine', id: 45,),
      CategoryItem(text: 'Indiana Jones', id: 46,),
      CategoryItem(text: 'The Da Vinci Code', id: 47,),
      CategoryItem(text: 'Suicide Squad ', id: 48,),
      CategoryItem(text: 'Intouchables', id: 49,),
      CategoryItem(text: 'Elf', id: 50,),
      CategoryItem(text: 'Far til Fire', id: 51,),
      CategoryItem(text: 'Min Søsters Børn', id: 52,),
      CategoryItem(text: 'Yes Man', id: 53,),
      CategoryItem(text: 'The Hangover', id: 54,),
      CategoryItem(text: 'Ted', id: 55,),
      CategoryItem(text: 'Kung Fu Panda', id: 56,),
      CategoryItem(text: 'E.T.', id: 57,),
      CategoryItem(text: 'The Breakfast Club', id: 58,),
      CategoryItem(text: 'King Kong', id: 59,),
      CategoryItem(text: 'Godzilla', id: 60,),
      CategoryItem(text: 'Step Up', id: 61,),
      CategoryItem(text: 'Spider-Man', id: 62,),
      CategoryItem(text: 'High School Musical', id: 63,),
      CategoryItem(text: 'Borat', id: 64,),
      CategoryItem(text: 'Karate Kid', id: 65,),
      CategoryItem(text: 'Back to the Future', id: 66,),
      CategoryItem(text: 'Scarface', id: 67,),
      CategoryItem(text: 'Mission: Impossible', id: 68,),
      CategoryItem(text: 'Die Hard', id: 69,),
      CategoryItem(text: 'Dirty Dancing', id: 70,),
      CategoryItem(text: 'Grease', id: 71,),
      CategoryItem(text: 'Top Gun', id: 72,),
      CategoryItem(text: 'Superman', id: 73,),
      CategoryItem(text: 'Scream', id: 74,),
      CategoryItem(text: 'Olsen Banden', id: 75,),
      CategoryItem(text: 'Mean Girls', id: 76,),
      CategoryItem(text: 'Politiskolen', id: 77,),
      CategoryItem(text: 'Saw', id: 78,),
      CategoryItem(text: 'Adams Æbler', id: 79,),
      CategoryItem(text: 'De Grønne Slagtere', id: 80,),
      CategoryItem(text: 'Kvinden i Buret', id: 81,),
      CategoryItem(text: 'Blinkende Lygter', id: 82,),
      CategoryItem(text: 'Klovn', id: 83,),
      CategoryItem(text: 'Flammen og Citronen', id: 84,),
      CategoryItem(text: 'De tre Musketerer', id: 85,),
      CategoryItem(text: 'Klassefesten', id: 86,),
    ],
  ),
  Category(
    id: 2, 
    title: 'Sportsatleter', 
    imageUrl: 'assets/images/Sport.jpg',
    isStandard: true,
    items: [
      CategoryItem(text: 'Christiano Ronaldo', id: 1,),
      CategoryItem(text: 'LeBron James', id: 2,),
      CategoryItem(text: 'Lionel Messi', id: 3,),
      CategoryItem(text: 'Roger Federer', id: 4,),
      CategoryItem(text: 'Neymar', id: 5,),
      CategoryItem(text: 'Usain Bolt', id: 6,),
      CategoryItem(text: 'Tiger Woods', id: 7,),
      CategoryItem(text: 'Mikkel Hansen', id: 8,),
      CategoryItem(text: 'Niklas Landin', id: 9,),
      CategoryItem(text: 'Tom Brady', id: 10,),
      CategoryItem(text: 'Serena Williams', id: 11,),
      CategoryItem(text: 'Caroline Wozniacki', id: 12,),
      CategoryItem(text: 'Zlatan Ibrahimovix', id: 13,),
      CategoryItem(text: 'Mike Tyson', id: 14,),
      CategoryItem(text: 'Gareth Bale', id: 15,),
      CategoryItem(text: 'Ronaldinho', id: 16,),
      CategoryItem(text: 'Luis Suárez', id: 17,),
      CategoryItem(text: 'Michael Laudrup', id: 18,),
      CategoryItem(text: 'Peter Schmeichel', id: 19,),
      CategoryItem(text: 'Eli Manning', id: 20,),
      CategoryItem(text: 'David Beckham', id: 21,),
      CategoryItem(text: 'Manuel Neuer', id: 22,),
      CategoryItem(text: 'Lewis Hamilton', id: 23,),
      CategoryItem(text: 'Michael Schumacher', id: 24,),
      CategoryItem(text: 'Michael Phelps', id: 25,),
      CategoryItem(text: 'Jeanette Ottesen', id: 26,),
      CategoryItem(text: 'Nicklas Bendtner', id: 27,),
      CategoryItem(text: 'Christian Eriksen', id: 28,),
      CategoryItem(text: 'Harry Kane', id: 29,),
      CategoryItem(text: 'Viktor Axelsen', id: 30,),
      CategoryItem(text: 'Zinedine Zidane', id: 31,),
      CategoryItem(text: 'Roberto Carlos', id: 32,),
      CategoryItem(text: 'Ronaldo Nazario', id: 33,),
      CategoryItem(text: 'Kylian Mbappé', id: 34,),
    ],
  ),
  Category(
    id: 5, 
    title: 'Game of Thrones', 
    imageUrl: 'assets/images/GoT.jpg',
    isStandard: true,
    items: [
      CategoryItem(text: 'Eddard \'Ned\' Stark', id: 1,),
      CategoryItem(text: 'Robert Baratheon', id: 2,),
      CategoryItem(text: 'Jaime Lannister', id: 3,),
      CategoryItem(text: 'Catelyn Stark', id: 4,),
      CategoryItem(text: 'Cersei Lannister', id: 5,),
      CategoryItem(text: 'Daenerys Targaryen', id: 6,),
      CategoryItem(text: 'Jorah Mormont', id: 7,),
      CategoryItem(text: 'Viserys Targaryen', id: 8,),
      CategoryItem(text: 'Jon Snow', id: 9,),
      CategoryItem(text: 'Sansa Stark', id: 10,),
      CategoryItem(text: 'Arya Stark', id: 11,),
      CategoryItem(text: 'Robb Stark', id: 12,),
      CategoryItem(text: 'Theon Greyjoy', id: 13,),
      CategoryItem(text: 'Bran Stark', id: 14,),
      CategoryItem(text: 'Joffrey Baratheon', id: 15,),
      CategoryItem(text: 'Sandor \'The Hound\' Clegane', id: 16,),
      CategoryItem(text: 'Tyrion Lannister', id: 17,),
      CategoryItem(text: 'Khal Drogo', id: 18,),
      CategoryItem(text: 'Petyr \'Littlefinger\' Baelish', id: 19,),
      CategoryItem(text: 'Samwell Tarly', id: 20,),
      CategoryItem(text: 'Melisandre', id: 21,),
      CategoryItem(text: 'Varys', id: 22,),
      CategoryItem(text: 'Ygritte', id: 23,),
      CategoryItem(text: 'Ramsay Bolton', id: 24,),
      CategoryItem(text: 'Brienne of Tarth', id: 25,),
      CategoryItem(text: 'Tommen Baratheon', id: 26,),
      CategoryItem(text: 'Rickon Stark', id: 27,),
      CategoryItem(text: 'Gregor Clegane', id: 28,),
      CategoryItem(text: 'Hodor', id: 29,),
      CategoryItem(text: 'Jaqen H\'ghar', id: 30,),
      CategoryItem(text: 'Ghost', id: 31,),
      CategoryItem(text: 'Unsullied', id: 32,),
      CategoryItem(text: 'Night\'s Watch', id: 33,),
      CategoryItem(text: 'Iron Throne', id: 34,),
      CategoryItem(text: 'The High Sparrow', id: 35,),
      CategoryItem(text: 'White Walkers', id: 36,),
      CategoryItem(text: 'Hand of the King', id: 37,),
      CategoryItem(text: 'The Mad King', id: 38,),
      CategoryItem(text: 'Wildlings', id: 39,),
      CategoryItem(text: 'Westeros', id: 40,),
      CategoryItem(text: 'Castle Black', id: 41,),
      CategoryItem(text: 'Winterfell', id: 42,),
      CategoryItem(text: 'Kings Landing', id: 43,),
    ],
  ),
    Category(
    id: 1, 
    title: 'League of Legends', 
    imageUrl: 'assets/images/LeagueOfLegends.png',
    isStandard: true,
    items: [
      CategoryItem(text: 'Aatrox', id: 1),
      CategoryItem(text: 'Ahri', id: 2),
      CategoryItem(text: 'Akali', id: 3),
      CategoryItem(text: 'Alistar', id: 4),
      CategoryItem(text: 'Amumu', id: 5),
      CategoryItem(text: 'Anivia', id: 6),
      CategoryItem(text: 'Annie', id: 7),
      CategoryItem(text: 'Ashe', id: 8),
      CategoryItem(text: 'Aurelion Sol', id: 9),
      CategoryItem(text: 'Azir', id: 10),
      CategoryItem(text: 'Bard', id: 11),
      CategoryItem(text: 'Blitzcrank', id: 12),
      CategoryItem(text: 'Brand', id: 13),
      CategoryItem(text: 'Braum', id: 14),
      CategoryItem(text: 'Caitlyn', id: 15),
      CategoryItem(text: 'Camille', id: 16),
      CategoryItem(text: 'Cassiopeia', id: 17),
      CategoryItem(text: 'Cho\'Gath', id: 18),
      CategoryItem(text: 'Corki', id: 19),
      CategoryItem(text: 'Darius', id: 20),
      CategoryItem(text: 'Diana', id: 21),
      CategoryItem(text: 'Dr. Mundo', id: 22),
      CategoryItem(text: 'Draven', id: 23),
      CategoryItem(text: 'Ekko', id: 24),
      CategoryItem(text: 'Elise', id: 25),
      CategoryItem(text: 'Evelynn', id: 26),
      CategoryItem(text: 'Ezreal', id: 27),
      CategoryItem(text: 'Fiddlesticks', id: 28),
      CategoryItem(text: 'Fiora', id: 29),
      CategoryItem(text: 'Fizz', id: 30),
      CategoryItem(text: 'Galio', id: 31),
      CategoryItem(text: 'Gangplank', id: 32),
      CategoryItem(text: 'Garen', id: 33),
      CategoryItem(text: 'Gnar', id: 34),
      CategoryItem(text: 'Gragas', id: 35),
      CategoryItem(text: 'Graves', id: 36),
      CategoryItem(text: 'Hecarim', id: 37),
      CategoryItem(text: 'Heimerdinger', id: 38),
      CategoryItem(text: 'Illaoi', id: 39),
      CategoryItem(text: 'Irelia', id: 40),
      CategoryItem(text: 'Ivern', id: 41),
      CategoryItem(text: 'Janna', id: 42),
      CategoryItem(text: 'Jarvan IV', id: 43),
      CategoryItem(text: 'Jax', id: 44),
      CategoryItem(text: 'Jayce', id: 45),
      CategoryItem(text: 'Jhin', id: 46),
      CategoryItem(text: 'Jinx', id: 47),
      CategoryItem(text: 'Kai\'Sa', id: 48),
      CategoryItem(text: 'Kalista', id: 49),
      CategoryItem(text: 'Karma', id: 50),
      CategoryItem(text: 'Karthus', id: 51),
      CategoryItem(text: 'Kassadin', id: 52),
      CategoryItem(text: 'Katarina', id: 53),
      CategoryItem(text: 'Kayle', id: 54),
      CategoryItem(text: 'Kayn', id: 55),
      CategoryItem(text: 'Kennen', id: 56),
      CategoryItem(text: 'Kha\'Zix', id: 57),
      CategoryItem(text: 'Kindred', id: 58),
      CategoryItem(text: 'Kled', id: 59),
      CategoryItem(text: 'Kog\'Maw', id: 60),
      CategoryItem(text: 'LeBlanc', id: 61),
      CategoryItem(text: 'Lee Sin', id: 62),
      CategoryItem(text: 'Leona', id: 63),
      CategoryItem(text: 'Lissandra', id: 64),
      CategoryItem(text: 'Lucian', id: 65),
      CategoryItem(text: 'Lulu', id: 66),
      CategoryItem(text: 'Lux', id: 67),
      CategoryItem(text: 'Malphite', id: 68),
      CategoryItem(text: 'Malzahar', id: 69),
      CategoryItem(text: 'Maokai', id: 70),
      CategoryItem(text: 'Master Yi', id: 71),
      CategoryItem(text: 'Miss Fortune', id: 72),
      CategoryItem(text: 'Mordekaiser', id: 73),
      CategoryItem(text: 'Morgana', id: 74),
      CategoryItem(text: 'Nami', id: 75),
      CategoryItem(text: 'Nasus', id: 76),
      CategoryItem(text: 'Nautilus', id: 77),
      CategoryItem(text: 'Neeko', id: 78),
      CategoryItem(text: 'Nidalee', id: 79),
      CategoryItem(text: 'Nocturne', id: 80),
      CategoryItem(text: 'Nunu & Willump', id: 81),
      CategoryItem(text: 'Olaf', id: 82),
      CategoryItem(text: 'Orianna', id: 83),
      CategoryItem(text: 'Ornn', id: 84),
      CategoryItem(text: 'Pantheon', id: 85),
      CategoryItem(text: 'Poppy', id: 86),
      CategoryItem(text: 'Pyke', id: 87),
      CategoryItem(text: 'Quinn', id: 88),
      CategoryItem(text: 'Rakan', id: 89),
      CategoryItem(text: 'Rammus', id: 90),
      CategoryItem(text: 'Rek\'Sai', id: 91),
      CategoryItem(text: 'Renekton', id: 92),
      CategoryItem(text: 'Rengar', id: 93),
      CategoryItem(text: 'Riven', id: 94),
      CategoryItem(text: 'Rumble', id: 95),
      CategoryItem(text: 'Ryze', id: 96),
      CategoryItem(text: 'Sejuani', id: 97),
      CategoryItem(text: 'Shaco', id: 98),
      CategoryItem(text: 'Shen', id: 99),
      CategoryItem(text: 'Shyvana', id: 100),
      CategoryItem(text: 'Singed', id: 101),
      CategoryItem(text: 'Sion', id: 102),
      CategoryItem(text: 'Sivir', id: 103),
      CategoryItem(text: 'Skarner', id: 104),
      CategoryItem(text: 'Sona', id: 105),
      CategoryItem(text: 'Soraka', id: 106),
      CategoryItem(text: 'Swain', id: 107),
      CategoryItem(text: 'Syndra', id: 108),
      CategoryItem(text: 'Tahm Kench', id: 109),
      CategoryItem(text: 'Taliyah', id: 110),
      CategoryItem(text: 'Talon', id: 111),
      CategoryItem(text: 'Taric', id: 112),
      CategoryItem(text: 'Teemo', id: 113),
      CategoryItem(text: 'Thresh', id: 114),
      CategoryItem(text: 'Tristana', id: 115),
      CategoryItem(text: 'Trundle', id: 116),
      CategoryItem(text: 'Tryndamere', id: 117),
      CategoryItem(text: 'Twisted Fate', id: 118),
      CategoryItem(text: 'Twitch', id: 119),
      CategoryItem(text: 'Udyr', id: 120),
      CategoryItem(text: 'Urgot', id: 121),
      CategoryItem(text: 'Varus', id: 122),
      CategoryItem(text: 'Vayne', id: 123),
      CategoryItem(text: 'Veigar', id: 124),
      CategoryItem(text: 'Vel\'Koz', id: 125),
      CategoryItem(text: 'Vi', id: 126),
      CategoryItem(text: 'Viktor', id: 127),
      CategoryItem(text: 'Vladimir', id: 128),
      CategoryItem(text: 'Volibear', id: 129),
      CategoryItem(text: 'Warwick', id: 130),
      CategoryItem(text: 'Wukong', id: 131),
      CategoryItem(text: 'Xayah', id: 132),
      CategoryItem(text: 'Xerath', id: 133),
      CategoryItem(text: 'Xin Zhao', id: 134),
      CategoryItem(text: 'Yasuo', id: 135),
      CategoryItem(text: 'Yorick', id: 136),
      CategoryItem(text: 'Zac', id: 137),
      CategoryItem(text: 'Zed', id: 138),
      CategoryItem(text: 'Ziggs', id: 139),
      CategoryItem(text: 'Zilean', id: 140),
      CategoryItem(text: 'Zoe', id: 141),
      CategoryItem(text: 'Sylas', id: 142),
      CategoryItem(text: 'Yuumi', id: 143),
      CategoryItem(text: 'Qiyana', id: 144),
      CategoryItem(text: 'Senna', id: 145),
      CategoryItem(text: 'Aphelios', id: 146),
      CategoryItem(text: 'Sett', id: 147),
      CategoryItem(text: 'Lillia', id: 148),
    ],
  ),
  Category(
    id: 7, 
    title: 'Star Wars', 
    imageUrl: 'assets/images/Yoda.png',
    isStandard: true,
    items: [
      CategoryItem(text: 'BB-8', id: 1,),
      CategoryItem(text: 'Jar Jar Binks', id: 2,),
      CategoryItem(text: 'C-3PO', id: 3,),
      CategoryItem(text: 'Chewbacca', id: 4,),
      CategoryItem(text: 'R2D2', id: 5,),
      CategoryItem(text: 'Boba Fett', id: 6,),
      CategoryItem(text: 'Finn', id: 7,),
      CategoryItem(text: 'Jabba the Hutt', id: 8,),
      CategoryItem(text: 'Qui-Gon Jinn', id: 9,),
      CategoryItem(text: 'Obi-Wan Kenobi', id: 10,),
      CategoryItem(text: 'Darth Maul', id: 11,),
      CategoryItem(text: 'Sheev Palpatine (Darth Sidious)', id: 12,),
      CategoryItem(text: 'Kylo Ren', id: 13,),
      CategoryItem(text: 'Anakin Skywalker', id: 14,),
      CategoryItem(text: 'Darth Vader', id: 15,),
      CategoryItem(text: 'Luke Skywalker', id: 16,),
      CategoryItem(text: 'Han Solo', id: 17,),
      CategoryItem(text: 'Rae Sloane', id: 18,),
      CategoryItem(text: 'Supreme Leader Snoke', id: 19,),
      CategoryItem(text: 'Yoda', id: 20,),
      CategoryItem(text: 'Princess Leia', id: 21,),
      CategoryItem(text: 'Padawan', id: 22,),
      CategoryItem(text: 'Jedi', id: 23,),
      CategoryItem(text: 'Clone Trooper', id: 24,),
      CategoryItem(text: 'Lightsaber', id: 25,),
      CategoryItem(text: 'Millenium Falcon', id: 26,),
      CategoryItem(text: 'Droid', id: 27,),
      CategoryItem(text: 'AT-AT Walker', id: 28,),
      CategoryItem(text: 'Sith', id: 29,),
      CategoryItem(text: 'The Force', id: 30,),
      CategoryItem(text: 'Death Star', id: 31,),
      CategoryItem(text: 'Ewok', id: 32,),
    ],
  ),
  Category(
    id: 8, 
    title: 'Jobs', 
    imageUrl: 'assets/images/professions.jpg',
    isStandard: true,
    items: [
      CategoryItem(text: 'Advokat', id: 1,),
      CategoryItem(text: 'Murer', id: 2,),
      CategoryItem(text: 'Tømrer', id: 3,),
      CategoryItem(text: 'Akupuntør', id: 4,),
      CategoryItem(text: 'Arkitekt', id: 5,),
      CategoryItem(text: 'Arkæolog', id: 6,),
      CategoryItem(text: 'Astronaut', id: 7,),
      CategoryItem(text: 'Mekaniker', id: 8,),
      CategoryItem(text: 'Bager', id: 9,),
      CategoryItem(text: 'Bedemand', id: 10,),
      CategoryItem(text: 'Politibetjent', id: 11,),
      CategoryItem(text: 'Brandmand', id: 12,),
      CategoryItem(text: 'Bibliotekar', id: 13,),
      CategoryItem(text: 'Lærer', id: 14,),
      CategoryItem(text: 'Brolægger', id: 15,),
      CategoryItem(text: 'Buschauffør', id: 16,),
      CategoryItem(text: 'Graver', id: 17,),
      CategoryItem(text: 'Maler', id: 18,),
      CategoryItem(text: 'Danser', id: 19,),
      CategoryItem(text: 'Slagter', id: 20,),
      CategoryItem(text: 'Dommer', id: 21,),
      CategoryItem(text: 'Fodbolddommer', id: 22,),
      CategoryItem(text: 'Læge', id: 23,),
      CategoryItem(text: 'Sygeplejerske', id: 24,),
      CategoryItem(text: 'Elektriker', id: 25,),
      CategoryItem(text: 'Fysioterapeut', id: 26,),
      CategoryItem(text: 'Fotograf', id: 27,),
      CategoryItem(text: 'Fisker', id: 28,),
      CategoryItem(text: 'Fitnessinstruktør', id: 29,),
      CategoryItem(text: 'Pilot', id: 30,),
      CategoryItem(text: 'Stewardesse', id: 31,),
      CategoryItem(text: 'Frisør', id: 32,),
      CategoryItem(text: 'It-medarbejder', id: 33,),
      CategoryItem(text: 'Togfører', id: 34,),
      CategoryItem(text: 'Journalist', id: 35,),
      CategoryItem(text: 'Præst', id: 36,),
      CategoryItem(text: 'Sanger', id: 37,),
      CategoryItem(text: 'Kok', id: 38,),
      CategoryItem(text: 'Politiker', id: 39,),
      CategoryItem(text: 'Massør', id: 40,),
      CategoryItem(text: 'Landmand', id: 41,),
      CategoryItem(text: 'Bankmand', id: 42,),
      CategoryItem(text: 'Metrolog', id: 43,),
      CategoryItem(text: 'Soldat', id: 44,),
      CategoryItem(text: 'Akrobat', id: 45,),
      CategoryItem(text: 'Klovn', id: 46,),
      CategoryItem(text: 'Pedel', id: 47,),
      CategoryItem(text: 'Postbud', id: 48,),
      CategoryItem(text: 'Pædagog', id: 49,),
      CategoryItem(text: 'Jordemoder', id: 50,),
      CategoryItem(text: 'Turistguide', id: 51,),
      CategoryItem(text: 'Skuespiller', id: 52,),
      CategoryItem(text: 'Smed', id: 53,),
      CategoryItem(text: 'Fodboldspiller', id: 54,),
      CategoryItem(text: 'Tandlæge', id: 55,),
      CategoryItem(text: 'Tjener', id: 56,),
      CategoryItem(text: 'Urmager', id: 57,),
    ],
  ),
  Category(
    id: 9, 
    title: 'Brands', 
    imageUrl: 'assets/images/brands.jpeg',
    isStandard: true,
    items: [
      CategoryItem(text: 'Apple', id: 1,),
      CategoryItem(text: 'Google', id: 2,),
      CategoryItem(text: 'Microsoft', id: 3,),
      CategoryItem(text: 'Facebook', id: 4,),
      CategoryItem(text: 'Amazon', id: 5,),
      CategoryItem(text: 'Coca-Cola', id: 6,),
      CategoryItem(text: 'Disney', id: 7,),
      CategoryItem(text: 'Burger King', id: 8,),
      CategoryItem(text: 'McDonald\'s', id: 9,),
      CategoryItem(text: 'Redbull', id: 10,),
      CategoryItem(text: 'Nike', id: 11,),
      CategoryItem(text: 'BMW', id: 12,),
      CategoryItem(text: 'Tuborg', id: 13,),
      CategoryItem(text: 'Nescafe', id: 14,),
      CategoryItem(text: 'Starbucks', id: 15,),
      CategoryItem(text: 'Gucci', id: 16,),
      CategoryItem(text: 'IKEA', id: 17,),
      CategoryItem(text: 'Vestas', id: 18,),
      CategoryItem(text: 'Lego', id: 19,),
      CategoryItem(text: 'Netflix', id: 20,),
      CategoryItem(text: 'Colgate', id: 21,),
      CategoryItem(text: 'Rolex', id: 22,),
      CategoryItem(text: 'Corona', id: 23,),
      CategoryItem(text: 'Kellogg\'s', id: 24,),
      CategoryItem(text: 'Nivea', id: 25,),
      CategoryItem(text: 'Pampers', id: 26,),
      CategoryItem(text: 'Visa', id: 27,),
      CategoryItem(text: 'Shell', id: 28,),
      CategoryItem(text: 'PlayStation', id: 29,),
      CategoryItem(text: 'Tesla', id: 30,),
      CategoryItem(text: 'Harley Davidson', id: 31,),
      CategoryItem(text: 'Audi', id: 32,),
      CategoryItem(text: 'Gilette', id: 33,),
      CategoryItem(text: 'Samsung', id: 34,),
      CategoryItem(text: 'Nordea', id: 35,),
      CategoryItem(text: 'Prince', id: 36,),
      CategoryItem(text: 'Uber', id: 37,),
      CategoryItem(text: 'Bilka', id: 38,),
      CategoryItem(text: 'Pandora', id: 39,),
      CategoryItem(text: 'Mærsk', id: 40,),
      CategoryItem(text: 'TDC', id: 41,),
      CategoryItem(text: 'Carlsberg', id: 42,),
      CategoryItem(text: 'Danish Crown', id: 43,),
      CategoryItem(text: 'Lurpak', id: 44,),
      CategoryItem(text: 'Arla', id: 45,),
      CategoryItem(text: 'Tryg', id: 46,),
    ],
  ),
  Category(
    id: 10, 
    title: 'Harry Potter', 
    imageUrl: 'assets/images/harry_potter.jpg',
    isStandard: true,
    items: [
      CategoryItem(text: 'Harry Potter', id: 1,),
      CategoryItem(text: 'Sirius Black', id: 2,),
      CategoryItem(text: 'Fleur Delacour', id: 3,),
      CategoryItem(text: 'Cedric Diggory', id: 4,),
      CategoryItem(text: 'Albus Dumbledore', id: 5,),
      CategoryItem(text: 'Dudley Dursley', id: 6,),
      CategoryItem(text: 'Vernon Dursley', id: 7,),
      CategoryItem(text: 'Argus Filch', id: 8,),
      CategoryItem(text: 'Seamus Finnigan', id: 9,),
      CategoryItem(text: 'Professor Flitwick', id: 10,),
      CategoryItem(text: 'Hermione Granger', id: 11,),
      CategoryItem(text: 'Crabbe and Goyle', id: 12,),
      CategoryItem(text: 'Godric Gryffindor', id: 13,),
      CategoryItem(text: 'Madam Hooch', id: 14,),
      CategoryItem(text: 'Rubeus Hagrid', id: 15,),
      CategoryItem(text: 'Igor Karkaroff', id: 16,),
      CategoryItem(text: 'Viktor Krum', id: 17,),
      CategoryItem(text: 'Bellatrix Lestrange', id: 18,),
      CategoryItem(text: 'Neville Longbottom', id: 19,),
      CategoryItem(text: 'Luna Lovegood', id: 20,),
      CategoryItem(text: 'Remus Lupin', id: 21,),
      CategoryItem(text: 'Draco Malfoy', id: 22,),
      CategoryItem(text: 'Lucius Malfoy', id: 23,),
      CategoryItem(text: 'Alastor (Mad-Eye) Moody', id: 24,),
      CategoryItem(text: 'Garrick Ollivander', id: 25,),
      CategoryItem(text: 'Madam Pomfrey', id: 26,),
      CategoryItem(text: 'James Potter', id: 27,),
      CategoryItem(text: 'Lily Potter', id: 28,),
      CategoryItem(text: 'Rowena Ravenclaw', id: 29,),
      CategoryItem(text: 'Newt Scamander', id: 30,),
      CategoryItem(text: 'Salazar Slytherin', id: 31,),
      CategoryItem(text: 'Severus Snape', id: 32,),
      CategoryItem(text: 'Professor Sprout', id: 33,),
      CategoryItem(text: 'Dean Thomas', id: 34,),
      CategoryItem(text: 'Lord Voldemort ', id: 35,),
      CategoryItem(text: 'Ginny Weasley', id: 36,),
      CategoryItem(text: 'Ron Weasley', id: 37,),
      CategoryItem(text: 'Fred and George Weasley', id: 38,),
      CategoryItem(text: 'Dobby', id: 39,),
      CategoryItem(text: 'Fluffy', id: 40,),
      CategoryItem(text: 'Fawkes - Phoenix', id: 41,),
      CategoryItem(text: 'Hedwig', id: 42,),
      CategoryItem(text: 'Nagini', id: 43,),
      CategoryItem(text: 'Scrabbers', id: 44,),
      CategoryItem(text: 'Trevor', id: 45,),
      CategoryItem(text: 'Professor McGonagall', id: 46,),
      CategoryItem(text: 'Arthur Weasley', id: 47,),
      CategoryItem(text: 'Molly Weasley', id: 48,),
      CategoryItem(text: 'Moaning Myrtle', id: 49,),
      CategoryItem(text: 'Aragog', id: 50,),
      CategoryItem(text: 'The Fat Lady', id: 51,),
      CategoryItem(text: 'Nearly Headless Nick', id: 52,),
      CategoryItem(text: 'Sorting Hat', id: 53,),
      CategoryItem(text: 'Hogwarts', id: 54,),
      CategoryItem(text: 'Whomping Willow', id: 55,),
      CategoryItem(text: 'Mrs Norris', id: 56,),
      CategoryItem(text: 'Muggle', id: 57,),
      CategoryItem(text: 'Elder Wand', id: 58,),
      CategoryItem(text: 'Cloak of Invisibility', id: 59,),
      CategoryItem(text: 'Nicolas Flamel', id: 60,),
      CategoryItem(text: 'Azkaban', id: 61,),
      CategoryItem(text: 'Resurrection Stone', id: 62,),
      CategoryItem(text: 'Gringotts', id: 63,),
      CategoryItem(text: 'Forbidden Forrest', id: 64),
      CategoryItem(text: 'Hogwarts Express', id: 65)
    ],
  ),
  Category(
    id: 11, 
    title: 'Ting du kan gøre eller lave', 
    imageUrl: 'assets/images/ThingsYouCanDo.jpg',
    isStandard: true,
    items: [
      CategoryItem(text: 'Putte makeup på', id: 1,),
      CategoryItem(text: 'Tage tøj på', id: 2,),
      CategoryItem(text: 'Vaske hår', id: 3,),
      CategoryItem(text: 'Få et baby til at bøvse', id: 4,),
      CategoryItem(text: 'Snitte løg', id: 5,),
      CategoryItem(text: 'Vaske gulv', id: 6,),
      CategoryItem(text: 'Støvsuge', id: 7,),
      CategoryItem(text: 'Rede en seng', id: 8,),
      CategoryItem(text: 'Åbne et brev', id: 9,),
      CategoryItem(text: 'Slå græsplænen', id: 10,),
      CategoryItem(text: 'Binde sin sko', id: 11,),
      CategoryItem(text: 'Spidse en blyant', id: 12,),
      CategoryItem(text: 'Åbne en gave', id: 13,),
      CategoryItem(text: 'Gå i kirke', id: 14,),
      CategoryItem(text: 'Gå i fitness', id: 15,),
      CategoryItem(text: 'Lave yoga', id: 16,),
      CategoryItem(text: 'Danse salsa', id: 17,),
      CategoryItem(text: 'Stepdanse', id: 18,),
      CategoryItem(text: 'Danse ballet', id: 19,),
      CategoryItem(text: 'Stå på snowboard', id: 20,),
      CategoryItem(text: 'Stå på ski', id: 21,),
      CategoryItem(text: 'Køre på mountainbike', id: 22,),
      CategoryItem(text: 'Køre på rulleskøjter', id: 23,),
      CategoryItem(text: 'Spille bowling', id: 24,),
      CategoryItem(text: 'Være på jagt', id: 25,),
      CategoryItem(text: 'Undervise', id: 26,),
      CategoryItem(text: 'Klippe en andens hår', id: 27,),
      CategoryItem(text: 'Blive anholdt', id: 28,),
      CategoryItem(text: 'Spille badminton', id: 29,),
      CategoryItem(text: 'Ridde på en hest', id: 30,),
      CategoryItem(text: 'Lave pandekager', id: 31,),
      CategoryItem(text: 'Spejle et æg', id: 32,),
      CategoryItem(text: 'Gøre rent', id: 33,),
      CategoryItem(text: 'Gå ud med skraldet', id: 34,),
      CategoryItem(text: 'Komme for sent', id: 35,),
      CategoryItem(text: 'Køre hurtigt', id: 36,),
      CategoryItem(text: 'Gymnastik', id: 37,),
      CategoryItem(text: 'Være en cirkusartist', id: 38,),
      CategoryItem(text: 'Malke en ko', id: 39,),
      CategoryItem(text: 'Se TV', id: 40,),
      CategoryItem(text: 'Skovle sne', id: 41,),
      CategoryItem(text: 'Gå tur med hunden', id: 42,),
      CategoryItem(text: 'Klatre', id: 43,),
      CategoryItem(text: 'Spise en banan', id: 44,),
      CategoryItem(text: 'Lave en pizza', id: 45,),
      CategoryItem(text: 'Få hjernefrys', id: 46,),
      CategoryItem(text: 'Lege Spiderman', id: 47,),
      CategoryItem(text: 'Karate', id: 48,),
      CategoryItem(text: 'Imitere Michael Jackson', id: 49,),
      CategoryItem(text: 'Sjippe', id: 50,),
      CategoryItem(text: 'Være en T-rex', id: 51,),
      CategoryItem(text: 'Være sur', id: 52,),
      CategoryItem(text: 'Være overrasket', id: 53,),
      CategoryItem(text: 'Være fuglekigger', id: 54,),
      CategoryItem(text: 'Fælde et træ', id: 55,),
      CategoryItem(text: 'Spille petanque', id: 56,),
      CategoryItem(text: 'Hoppe på kængurustylte', id: 57,),
      CategoryItem(text: 'Spille violin', id: 58,),
      CategoryItem(text: 'Spille trækbasun', id: 59,),
      CategoryItem(text: 'Skifte en ble', id: 60,),
      CategoryItem(text: 'Spille pool', id: 61,),
      CategoryItem(text: 'Faldskærmsudspring', id: 62,),
      CategoryItem(text: 'Flyve i helikopter', id: 63,),
      CategoryItem(text: 'Køre motorcross', id: 64,),
      CategoryItem(text: 'Drikke vin', id: 65,),
    ],
  ),
];