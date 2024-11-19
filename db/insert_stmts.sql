USE language_learning_test;

INSERT INTO `user` VALUES ('bob','bob','Bob','Ross'),('jane','jane','Jane','Doe');

INSERT INTO `language` VALUES (1,'English'),(2,'Spanish'),(3,'Hindi'),(4,'German'),(5,'French');


-- Inserting flashcard decks
INSERT INTO `flashcard_deck` (`deck_id`, `name`, `description`, `language_id`) VALUES
    (1, 'Deck 1', 'Common English Words', 1),
    (2, 'Deck 2', 'Common English Words', 1),
    (3, 'Deck 3', 'Common English Words', 1),
    (4, 'Deck 4', 'Synonyms and Antonyms', 1),
    (5, 'Deck 5', 'Common Phrases and Words', 1),
    (6, 'Deck 1', 'Common Spanish Words', 2),
    (7, 'Deck 2', 'Common Spanish Words', 2),
    (8, 'Deck 3', 'Common Spanish Words', 2),
    (9, 'Deck 4', 'Synonyms and Antonyms', 2),
    (10, 'Deck 5', 'Common Phrases and Words', 2),
    (11, 'Deck 1', 'Common Hindi Words', 3),
    (12, 'Deck 2', 'Common Hindi Words', 3),
    (13, 'Deck 3', 'Common Hindi Words', 3),
    (14, 'Deck 4', 'Synonyms and Antonyms', 3),
    (15, 'Deck 5', 'Common Phrases and Words', 3),
    (16, 'Deck 1', 'Common German Words', 4),
    (17, 'Deck 2', 'Common German Words', 4),
    (18, 'Deck 3', 'Common German Words', 4),
    (19, 'Deck 4', 'Synonyms and Antonyms', 4),
    (20, 'Deck 5', 'Common Phrases and Words', 4),
    (21, 'Deck 1', 'Common French Words', 5),
    (22, 'Deck 2', 'Common French Words', 5),
    (23, 'Deck 3', 'Common French Words', 5),
    (24, 'Deck 4', 'Synonyms and Antonyms', 5),
    (25, 'Deck 5', 'Common Phrases and Words', 5);


-- Inserting flashcards for English Deck 1 (Common English Words)

INSERT INTO flashcard (front_text, back_text, deck_id) VALUES ('hello', 'an expression of greeting', 1);
INSERT INTO flashcard (front_text, back_text, deck_id) VALUES ('goodbye', 'a farewell remark', 1);
INSERT INTO flashcard (front_text, back_text, deck_id) VALUES ('yes', 'an affirmative answer', 1);
INSERT INTO flashcard (front_text, back_text, deck_id) VALUES ('no', 'a negative answer', 1);
INSERT INTO flashcard (front_text, back_text, deck_id) VALUES ('please', 'a polite request', 1);
INSERT INTO flashcard (front_text, back_text, deck_id) VALUES ('thank you', 'an expression of gratitude', 1);
INSERT INTO flashcard (front_text, back_text, deck_id) VALUES ('sorry', 'an expression of regret', 1);
INSERT INTO flashcard (front_text, back_text, deck_id) VALUES ('excuse me', 'an expression used to politely ask for someone’s attention', 1);
INSERT INTO flashcard (front_text, back_text, deck_id) VALUES ('I', 'a pronoun used to refer to oneself', 1);
INSERT INTO flashcard (front_text, back_text, deck_id) VALUES ('you', 'a pronoun used to refer to the person or people being spoken to', 1);
INSERT INTO flashcard (front_text, back_text, deck_id) VALUES ('he', 'a pronoun used to refer to a male person or animal', 1);
INSERT INTO flashcard (front_text, back_text, deck_id) VALUES ('she', 'a pronoun used to refer to a female person or animal', 1);
INSERT INTO flashcard (front_text, back_text, deck_id) VALUES ('they', 'a pronoun used to refer to more than one person or thing', 1);
INSERT INTO flashcard (front_text, back_text, deck_id) VALUES ('we', 'a pronoun used to refer to the speaker and at least one other person', 1);
INSERT INTO flashcard (front_text, back_text, deck_id) VALUES ('what', 'used to ask for information or to introduce a request', 1);
INSERT INTO flashcard (front_text, back_text, deck_id) VALUES ('where', 'used to ask about the place or location of something', 1);
INSERT INTO flashcard (front_text, back_text, deck_id) VALUES ('when', 'used to ask about the time of something', 1);
INSERT INTO flashcard (front_text, back_text, deck_id) VALUES ('Sound', 'A thing that people, animals, and machines can hear', 1);
INSERT INTO flashcard (front_text, back_text, deck_id) VALUES ('Food', 'Something that people or animals eat', 1);
INSERT INTO flashcard (front_text, back_text, deck_id) VALUES ('Water', 'A clear liquid that has no color, taste or smell, and that falls from clouds as rain', 1);

-- Inserting flashcards for English Deck 2 (Common English Words)
INSERT INTO flashcard (front_text, back_text, deck_id) VALUES
('Apple', 'a fruit with a red or green skin and a juicy white flesh', 2),
('Car', 'a road vehicle with an engine and four wheels, designed for transportation on roads', 2),
('Door', 'a movable barrier used to cover an entrance', 2),
('Elephant', 'a large herbivorous mammal with a trunk and tusks, used for grasping objects and as a weapon', 2),
('Flower', 'the seed-bearing part of a plant, consisting of reproductive organs (stamens and carpels) that are typically surrounded by brightly colored petals and a green calyx', 2),
('Green', 'a color that is a mixture of blue and yellow', 2),
('House', 'a building for human habitation, especially one that is lived in by a family or small group of people', 2),
('Island', 'a piece of land surrounded by water', 2),
('Jacket', 'a short coat, typically extending to the hips', 2),
('Keys', 'a small piece of metal or plastic that is used to unlock a lock or start an engine', 2),
('Lemon', 'a yellow citrus fruit with acidic juice', 2),
('Mother', 'a woman who has given birth to a child', 2),
('Night', 'the period of darkness between sunset and sunrise', 2),
('Orange', 'a round fruit with a tough bright reddish-yellow rind and a juicy, sweet pulp', 2),
('Queen', 'a female monarch or ruler of a kingdom', 2),
('Fish', 'a cold-blooded aquatic vertebrate with gills and fins', 2),
('Glasses', 'a pair of lenses set in a frame worn on the nose and ears in order to correct or improve vision', 2),
('Hat', 'a covering for the head, typically made of cloth and having a brim and a shaped crown', 2),
('Ice', 'frozen water, a brittle, transparent crystalline solid', 2),
('Juice', 'a liquid that is naturally contained in fruit and vegetables', 2);

-- Inserting flashcards for English Deck 3 (Common English Words)


INSERT INTO flashcard (front_text, back_text, deck_id) VALUES ('happy', 'feeling or showing pleasure or contentment', 3);
INSERT INTO flashcard (front_text, back_text, deck_id) VALUES ('friend', 'a person whom one knows and with whom one has a bond of mutual affection', 3);
INSERT INTO flashcard (front_text, back_text, deck_id) VALUES ('believe', 'accept that (something) is true, especially without proof', 3);
INSERT INTO flashcard (front_text, back_text, deck_id) VALUES ('family', 'a group consisting of parents and children living together in a household', 3);
INSERT INTO flashcard (front_text, back_text, deck_id) VALUES ('important', 'of great significance or value, likely to have a profound effect on success, survival, or well-being', 3);
INSERT INTO flashcard (front_text, back_text, deck_id) VALUES ('music', 'vocal or instrumental sounds (or both) combined in such a way as to produce beauty of form, harmony, and expression of emotion', 3);
INSERT INTO flashcard (front_text, back_text, deck_id) VALUES ('early', 'happening or done before the usual or expected time', 3);
INSERT INTO flashcard (front_text, back_text, deck_id) VALUES ('difficult', 'needing much effort or skill to accomplish, deal with, or understand', 3);
INSERT INTO flashcard (front_text, back_text, deck_id) VALUES ('year', 'the time taken by a planet to make one revolution around the sun', 3);
INSERT INTO flashcard (front_text, back_text, deck_id) VALUES ('kind', 'having or showing a friendly, generous, and considerate nature', 3);
INSERT INTO flashcard (front_text, back_text, deck_id) VALUES ('time', 'the indefinite continued progress of existence and events in the past, present, and future regarded as a whole', 3);
INSERT INTO flashcard (front_text, back_text, deck_id) VALUES ('easy', 'achieved without great effort, presenting few difficulties', 3);
INSERT INTO flashcard (front_text, back_text, deck_id) VALUES ('future', 'the time or a period of time following the moment of speaking or writing, time regarded as still to come', 3);
INSERT INTO flashcard (front_text, back_text, deck_id) VALUES ('work', 'activity involving mental or physical effort done in order to achieve a purpose or result', 3);
INSERT INTO flashcard (front_text, back_text, deck_id) VALUES ('beautiful', 'pleasing the senses or mind aesthetically', 3);
INSERT INTO flashcard (front_text, back_text, deck_id) VALUES ('Rain', 'Precipitation in the form of water droplets', 3);
INSERT INTO flashcard (front_text, back_text, deck_id) VALUES ('Shoe', 'A covering for the foot, typically made of leather', 3);
INSERT INTO flashcard (front_text, back_text, deck_id) VALUES ('Television', 'A device that receives television signals and displays them on a screen', 3);
INSERT INTO flashcard (front_text, back_text, deck_id) VALUES ('Umbrella', 'A device consisting of a circular canopy of cloth on a folding metal frame supported by a central rod, used as protection against rain or sometimes sun', 3);
INSERT INTO flashcard (front_text, back_text, deck_id) VALUES ('Vegetable', 'A plant or part of a plant used as food, typically as accompaniment to meat or fish', 3);



-- Inserting flashcards for English Deck 4 (Antonyms and Synonyms)

INSERT INTO `flashcard` (`front_text`, `back_text`, `deck_id`) VALUES 
('Abundance', 'Synonym: Plenty. Antonym: Scarcity', 4),
('Benevolent', 'Synonym: Kind. Antonym: Malevolent', 4),
('Candid', 'Synonym: Honest. Antonym: Dishonest', 4),
('Discreet', 'Synonym: Careful. Antonym: Careless', 4),
('Eccentric', 'Synonym: Unconventional. Antonym: Conventional', 4),
('Facilitate', 'Synonym: Assist. Antonym: Hinder', 4),
('Gregarious', 'Synonym: Sociable. Antonym: Unsociable', 4),
('Haphazard', 'Synonym: Random. Antonym: Systematic', 4),
('Immaculate', 'Synonym: Clean. Antonym: Dirty', 4),
('Jubilant', 'Synonym: Joyful. Antonym: Miserable', 4),
('Knotty', 'Synonym: Complicated. Antonym: Simple', 4),
('Luminous', 'Synonym: Bright. Antonym: Dark', 4),
('Mundane', 'Synonym: Boring. Antonym: Interesting', 4),
('Nefarious', 'Synonym: Wicked. Antonym: Virtuous', 4),
('Obsolete', 'Synonym: Outdated. Antonym: Current', 4),
('Perplexed', 'Synonym: Confused. Antonym: Clear', 4),
('Quaint', 'Synonym: Charming. Antonym: Ugly', 4),
('Ravenous', 'Synonym: Hungry. Antonym: Full', 4),
('Sporadic', 'Synonym: Occasional. Antonym: Frequent', 4),
('Tedious', 'Synonym: Boring. Antonym: Exciting', 4);

-- Inserting flashcards for English Deck 5 (Phrases)

INSERT INTO flashcard (front_text, back_text, deck_id) VALUES
('Break a leg', 'Good luck!', 5),
('Bite the bullet', 'To endure a painful or difficult situation', 5),
('Cutting corners', 'To do something in a quick or easy way instead of doing it properly', 5),
('Driving me nuts', 'Making me crazy or annoyed', 5),
('Easier said than done', 'Something that is easy to suggest, but difficult to do', 5),
('Face the music', 'To accept the consequences of your actions', 5),
('Get out of hand', 'To get out of control',5),
('Hit the books', 'To study or read intensively', 5),
('In a nutshell', 'To explain something in a concise way', 5),
('Jump on the bandwagon', 'To join a popular trend or activity', 5),
('Keep your chin up', 'To stay positive or optimistic', 5),
('Let the cat out of the bag', 'To reveal a secret', 5),
('Make ends meet', 'To have enough money to cover your expenses', 5),
('No pain, no gain', 'You have to work hard to achieve your goals', 5),
('On the same page', 'To be in agreement with someone else', 5),
('Piece of cake', 'Something that is very easy to do', 5),
('Quit cold turkey', 'To stop doing something suddenly and completely', 5),
('Rain cats and dogs', 'To rain heavily', 5),
('Spill the beans', 'To reveal a secret', 5),
('Under the weather', 'Feeling unwell', 5);

-- Inserting flashcards for Spanish Deck 1 (Common Words)

INSERT INTO flashcard (front_text, back_text, deck_id) VALUES
('Hola', 'Hello', 6),
('Adiós', 'Goodbye', 6),
('Buenos días', 'Good morning', 6),
('Buenas tardes', 'Good afternoon', 6),
('Buenas noches', 'Good evening', 6),
('Sí', 'Yes', 6),
('No', 'No', 6),
('Por favor', 'Please', 6),
('Gracias', 'Thank you', 6),
('De nada', 'You are welcome', 6),
('Lo siento', 'I am sorry', 6),
('Hasta luego', 'See you later', 6),
('Hasta pronto', 'See you soon', 6),
('Hasta mañana', 'See you tomorrow', 6),
('Cómo estás?', 'How are you?', 6),
('Estoy bien', 'I am fine', 6),
('Me llamo', 'My name is', 6),
('Mucho gusto', 'Nice to meet you', 6),
('No entiendo', 'I dont understand', 6),
('Adiós amigos', 'Goodbye friends', 6);


-- Inserting flashcards for Spanish Deck 2 (Common Words)

INSERT INTO `flashcard` (`front_text`, `back_text`, `deck_id`) VALUES
('Perro', 'Dog', 7),
('Gato', 'Cat', 7),
('Caballo', 'Horse', 7),
('Vaca', 'Cow', 7),
('Pollo', 'Chicken', 7),
('Pato', 'Duck', 7),
('Conejo', 'Rabbit', 7),
('Ratón', 'Mouse', 7),
('Tigre', 'Tiger', 7),
('León', 'Lion', 7),
('Elefante', 'Elephant', 7),
('Jirafa', 'Giraffe', 7),
('Mono', 'Monkey', 7),
('Oso', 'Bear', 7),
('Cebra', 'Zebra', 7),
('Serpiente', 'Snake', 7),
('Abeja', 'Bee', 7),
('Mariposa', 'Butterfly', 7),
('Flor', 'Flower', 7),
('Árbol', 'Tree', 7);



-- Inserting flashcards for Spanish Deck 3 (Common Words)

INSERT INTO `flashcard` (`front_text`, `back_text`, `deck_id`) VALUES
('Abogado', 'Lawyer', 8),
('Casa', 'House', 8),
('Perro', 'Dog', 8),
('Gato', 'Cat', 8),
('Comida', 'Food', 8),
('Agua', 'Water', 8),
('Lápiz', 'Pencil', 8),
('Bolígrafo', 'Pen', 8),
('Libro', 'Book', 8),
('Cama', 'Bed', 8),
('Tren', 'Train', 8),
('Autobús', 'Bus', 8),
('Bicicleta', 'Bicycle', 8),
('Cine', 'Cinema', 8),
('Montaña', 'Mountain', 8),
('Río', 'River', 8),
('Mar', 'Sea', 8),
('Cielo', 'Sky', 8),
('Sol', 'Sun', 8),
('Luna', 'Moon', 8);

-- Inserting flashcards for Spanish Deck 4 (Synonyms and Antonyms)

INSERT INTO `flashcard` (`front_text`, `back_text`, `deck_id`) VALUES
('Abundancia', 'Sinónimo: Plenitud, Antónimo: Escasez', 9),
('Bello', 'Sinónimo: Hermoso, Antónimo: Feo', 9),
('Cobarde', 'Sinónimo: Miedoso, Antónimo: Valiente', 9),
('Difícil', 'Sinónimo: Complicado, Antónimo: Fácil', 9),
('Egoísta', 'Sinónimo: Avaricioso, Antónimo: Generoso', 9),
('Flaco', 'Sinónimo: Delgado, Antónimo: Gordo', 9),
('Ganar', 'Sinónimo: Triunfar, Antónimo: Perder', 9),
('Honesto', 'Sinónimo: Sincero, Antónimo: Mentiroso', 9),
('Inocente', 'Sinónimo: Ingenuo, Antónimo: Culpable', 9),
('Joven', 'Sinónimo: Adolescente, Antónimo: Viejo', 9),
('Lento', 'Sinónimo: Despacio, Antónimo: Rápido', 9),
('Malo', 'Sinónimo: Perverso, Antónimo: Bueno', 9),
('Nacer', 'Sinónimo: Provenir, Antónimo: Morir', 9),
('Oscuro', 'Sinónimo: Tenebroso, Antónimo: Claro', 9),
('Poderoso', 'Sinónimo: Fuerte, Antónimo: Débil', 9),
('Quitar', 'Sinónimo: Sustraer, Antónimo: Añadir', 9),
('Rico', 'Sinónimo: Adinerado, Antónimo: Pobre', 9),
('Sano', 'Sinónimo: Saludable, Antónimo: Enfermo', 9),
('Tímido', 'Sinónimo: Vergonzoso, Antónimo: Atrevido', 9),
('Útil', 'Sinónimo: Práctico, Antónimo: Inútil', 9);


-- Inserting flashcards for Spanish Deck 5 (Phrases)

INSERT INTO `flashcard` (`front_text`, `back_text`, `deck_id`) VALUES
('¿Cómo te llamas?', 'What is your name?', 10),
('Me llamo...', 'My name is...', 10),
('Encantado de conocerte', 'Nice to meet you', 10),
('¿De dónde eres?', 'Where are you from?', 10),
('Soy de...', 'I am from...', 10),
('¿Hablas inglés?', 'Do you speak English?', 10),
('Sí, hablo inglés', 'Yes, I speak English', 10),
('No, no hablo inglés', 'No, I don\'t speak English', 10),
('¿Podría ayudarme, por favor?', 'Could you help me, please?', 10),
('Por supuesto', 'Of course', 10),
('Lo siento, no puedo', 'I\'m sorry, I can\'t', 10),
('No entiendo', 'I don\'t understand', 10),
('¿Cuánto cuesta?', 'How much does it cost?', 10),
('Es demasiado caro', 'It\'s too expensive', 10),
('¿Dónde está el baño?', 'Where is the bathroom?', 10),
('Está a la derecha', 'It\'s on the right', 10),
('Está a la izquierda', 'It\'s on the left', 10),
('Adiós', 'Goodbye', 10),
('Hasta luego', 'See you later', 10),
('Hasta pronto', 'See you soon', 10),
('Gracias por todo', 'Thank you for everything', 10);


-- Inserting flashcards for Hindi Deck 1 (Common words)

INSERT INTO `flashcard` (`front_text`, `back_text`, `deck_id`) VALUES
('Namaste', 'Hello', 11),
('Shukriya', 'Thank you', 11),
('Haan', 'Yes', 11),
('Nahin', 'No', 11),
('Aapka naam kya hai?', 'What is your name?', 11),
('Mera naam...', 'My name is...', 11),
('Achha', 'Good', 11),
('Bura', 'Bad', 11),
('Sundar', 'Beautiful', 11),
('Dost', 'Friend', 11),
('Khana', 'Food', 11),
('Pani', 'Water', 11),
('Kitab', 'Book', 11),
('Kalam', 'Pen', 11),
('Ghar', 'House', 11),
('Kamra', 'Room', 11),
('Baarish', 'Rain', 11),
('Hawa', 'Wind', 11),
('Dhoop', 'Sunshine', 11),
('Raat', 'Night', 11);

-- Inserting flashcards for Hindi Deck 2 (Common words)

INSERT INTO `flashcard` (`front_text`, `back_text`, `deck_id`) VALUES
('Accha', 'Good', 12),
('Kharab', 'Bad', 12),
('Safed', 'White', 12),
('Kala', 'Black', 12),
('Laal', 'Red', 12),
('Neela', 'Blue', 12),
('Hara', 'Green', 12),
('Peela', 'Yellow', 12),
('Safed', 'White', 12),
('Kaale', 'Black', 12),
('Laal', 'Red', 12),
('Neelay', 'Blue', 12),
('Hare', 'Green', 12),
('Peelay', 'Yellow', 12),
('Subah', 'Morning', 12),
('Dopahar', 'Afternoon', 12),
('Shaam', 'Evening', 12),
('Raat', 'Night', 12),
('Aadmi', 'Man', 12),
('Stree', 'Woman', 12);


-- Inserting flashcards for Hindi Deck 3 (Common words)

INSERT INTO flashcard (front_text, back_text, deck_id) VALUES
('Chai', 'Tea', 13),
('Coffee', 'Coffee', 13),
('Doodh', 'Milk', 13),
('Juice', 'Juice', 13),
('Pani', 'Water', 13),
('Roti', 'Bread', 13),
('Chawal', 'Rice', 13),
('Machhli', 'Fish', 13),
('Maans', 'Meat', 13),
('Anda', 'Egg', 13),
('Daal', 'Lentil', 13),
('Phal', 'Fruit', 13),
('Sabzi', 'Vegetable', 13),
('Adhikatam', 'Maximum', 13),
('Nyuntam', 'Minimum', 13),
('Sahi', 'Correct', 13),
('Galat', 'Wrong', 13),
('Accha', 'Good', 13),
('Kharab', 'Bad', 13),
('Baccha', 'Child', 13);


-- Inserting flashcards for Hindi Deck 4 (Antonyms and Synonyms)

INSERT INTO flashcard (front_text, back_text, deck_id) VALUES
('Atal - Adament','Synonym: Nirbdh, Akhand. Antonym: Kamzor, Halka', 14),
('Bhala - Good','Synonym: Uchit, Sundar. Antonym: Bura, Kharab', 14),
('Chalak - Clever','Synonym: Budhimaan, Pratibhaavan. Antonym: Moorkh, Murkh', 14),
('Dheema - Slow','Synonym: Mand, Dhima. Antonym: Tej, Shighra', 14),
('Ekaant - Solitude','Synonym: Akelapan, Virakti. Antonym: Bheed, Samuhikta', 14),
('Faisla - Decision','Synonym: Nirnay, Tay. Antonym: Dubidha, Sankoch', 14),
('Gambhir - Serious','Synonym: Sanlekh, Dradh. Antonym: Ullasit, Udghoshit', 14),
('Himmat - Courage','Synonym: Saahas, Parakram. Antonym: Bhay, Darr', 14),
('Imandar - Honest','Synonym: Nishthavaan, Satyavaadi. Antonym: Beimaan, Dagaabaaz', 14),
('Jhootha - Fake','Synonym: Naqli, Kalpanik. Antonym: Asli, Sachcha', 14),
('Kroor - Cruel','Synonym: Nirdayi, Khatarnaak. Antonym: Dayaalu, Komal', 14),
('Lalchi - Greedy','Synonym: Avid, Lobhi. Antonym: Dayalu, Udaar', 14),
('Maujood - Present','Synonym: Uptojit, Vartamaan. Antonym: Ghayab, Abhav', 14),
('Nishchint - Carefree','Synonym: Nirantar, Chintaarahit. Antonym: Chintaagrast, Vyakulta', 14),
('Ooncha - High','Synonym: Utkrisht, Unnata. Antonym: Nimna, Neech', 14),
('Pakka - Ripe','Synonym: Paripurn, Pakv. Antonym: Akadha, Anrip', 14),
('Qareeb - Near','Synonym: Pas, Sang. Antonym: Door, Durghatna', 14),
('Raushni - Light','Synonym: Prakash, Ujala. Antonym: Andhera, Tamaasheela', 14),
('Safal - Successful','Synonym: Saphal, Safalta. Antonym: Asafal, Asafalta', 14),
('Tark - Argument','Synonym: Bahas, Vivaad. Antonym: Samar, Sahmati', 14),
('Udas - Sad','Synonym: Dukhi, Nirashaajanya. Antonym: Prasann, Harshita', 14),
('Vishwas - Trust','Synonym: Aastha, Bharosa. Antonym: Ashvast', 14);

-- Inserting flashcards for Hindi Deck 5 (Phrases)

INSERT INTO `flashcard` (`front_text`, `back_text`, `deck_id`) VALUES
('Haath Pair Fadakna', 'To have twitching in hands and feet', 15),
('Apna Waqt Aana', 'To have one’s moment of glory', 15),
('Apna Waqt Guzaarna', 'To pass time idly', 15),
('Apne Pairo Par Khada Hona', 'To stand on one’s own feet', 15),
('Anguthe Chumna', 'To flatter someone', 15),
('Andhere Mein Taley Ka Saanp', 'Hidden danger', 15),
('Andhere Mein Namak', 'A needle in a haystack', 15),
('Agale Padaav Par', 'In the next phase', 15),
('Apni Ungli Par Chalna', 'To have control over something', 15),
('Apni Jung Khud Ladna', 'To fight one’s own battle', 15),
('Apni Hi Dukaan Mein Shikaar', 'To be caught red-handed', 15),
('Afsos Ki Baat Hai', 'It is a matter of regret', 15),
('Andar Ka Aadmi', 'A person with good character', 15),
('Andar Ka Ghamandi', 'A person with arrogance', 15),
('Acche Din', 'Good times', 15),
('Asal Wala', 'The real one', 15),
('Accha Savera', 'Good morning', 15),
('Acche Dost', 'Good friends', 15),
('Acchi Soch', 'Positive thinking', 15),
('Koshish ke liye safalta', 'Effort for success', 15);


-- Inserting flashcards for German Deck 1 (Common Words) 

INSERT INTO `flashcard` (`front_text`, `back_text`, `deck_id`) VALUES
('Apfel', 'Apple', 16),
('Buch', 'Book', 16),
('Hund', 'Dog', 16),
('Katze', 'Cat', 16),
('Baum', 'Tree', 16),
('Wasser', 'Water', 16),
('Haus', 'House', 16),
('Stuhl', 'Chair', 16),
('Tisch', 'Table', 16),
('Fenster', 'Window', 16),
('Tür', 'Door', 16),
('Auto', 'Car', 16),
('Straße', 'Street', 16),
('Telefon', 'Telephone', 16),
('Maus', 'Mouse', 16),
('Kuchen', 'Cake', 16),
('Brille', 'Glasses', 16),
('Schlüssel', 'Key', 16),
('Schule', 'School', 16),
('Stift', 'Pen', 16),
('Feuer', 'Fire', 16);

-- Inserting flashcards for German Deck 2 (Common Words) 

INSERT INTO `flashcard` (`front_text`, `back_text`, `deck_id`) VALUES
('Auto', 'Car', 17),
('Haus', 'House', 17),
('Tisch', 'Table', 17),
('Stuhl', 'Chair', 17),
('Buch', 'Book', 17),
('Telefon', 'Telephone', 17),
('Computer', 'Computer', 17),
('Fenster', 'Window', 17),
('Tür', 'Door', 17),
('Schlüssel', 'Key', 17),
('Wasser', 'Water', 17),
('Milch', 'Milk', 17),
('Kaffee', 'Coffee', 17),
('Tee', 'Tea', 17),
('Apfel', 'Apple', 17),
('Banane', 'Banana', 17),
('Orange', 'Orange', 17),
('Ei', 'Egg', 17),
('Brot', 'Bread', 17),
('Butter', 'Butter', 17);

-- Inserting flashcards for German Deck 3 (Common Words)

INSERT INTO flashcard (front_text, back_text, deck_id) VALUES
('Einsicht - (die)', 'Insight, realization', 18),
('Innovation - (die)', 'Innovation', 18),
('Kompromiss - (der)', 'Compromise', 18),
('Konsequenz - (die)', 'Consequence', 18),
('Mobilisierung - (die)', 'Mobilization', 18),
('Präzision - (die)', 'Precision', 18),
('Rechenschaft - (die)', 'Accountability', 18),
('Respekt - (der)', 'Respect', 18),
('Souveränität - (die)', 'Sovereignty', 18),
('Verantwortung - (die)', 'Responsibility', 18),
('Zuversicht - (die)', 'Confidence, optimism', 18),
('Begeisterung - (die)', 'Enthusiasm, excitement', 18),
('Bewusstsein - (das)', 'Awareness, consciousness', 18),
('Ehrgeiz - (der)', 'Ambition, drive', 18),
('Entscheidung - (die)', 'Decision', 18),
('Herausforderung - (die)', 'Challenge', 18),
('Initiative - (die)', 'Initiative', 18),
('Kreativität - (die)', 'Creativity', 18),
('Nachhaltigkeit - (die)', 'Sustainability', 18),
('Solidarität - (die)', 'Solidarity', 18);


-- Inserting flashcards for German Deck 4 (Antonyms and Synonyms) 

INSERT INTO `flashcard` (`front_text`, `back_text`, `deck_id`) VALUES
('Verhängnisvoll - Fateful', 'Synonym: schicksalhaft. Antonym: harmlos', 19),
('Verschroben - Eccentric', 'Synonym: sonderbar. Antonym: normal', 19),
('Hinterhältig - Sneaky', 'Synonym: listig. Antonym: aufrichtig', 19),
('Beispiellos - Unprecedented', 'Synonym: einmalig. Antonym: gewöhnlich', 19),
('Unbeholfen - Awkward', 'Synonym: ungeschickt. Antonym: geschickt', 19),
('Wortkarg - Taciturn', 'Synonym: schweigsam. Antonym: gesprächig', 19),
('Geizig - Stingy', 'Synonym: knauserig. Antonym: großzügig', 19),
('Abstoßend - Repellent', 'Synonym: abweisend. Antonym: anziehend', 19),
('Überheblich - Arrogant', 'Synonym: eingebildet. Antonym: bescheiden', 19),
('Kleinlich - Petty', 'Synonym: kleinlich. Antonym: großzügig', 19),
('Unnachgiebig - Inflexible', 'Synonym: starr. Antonym: flexibel', 19),
('Schmierig - Sleazy', 'Synonym: zwielichtig. Antonym: anständig', 19),
('Verblendet - Deluded', 'Synonym: irregeführt. Antonym: aufgeklärt', 19),
('Lästig - Annoying', 'Synonym: ärgerlich. Antonym: angenehm', 19),
('Verschlagen - Scheming', 'Synonym: hinterhältig. Antonym: aufrichtig', 19),
('Wankelmütig - Fickle', 'Synonym: unbeständig. Antonym: treu', 19),
('Kleinmütig - Timid', 'Synonym: ängstlich. Antonym: mutig', 19),
('Heuchlerisch - Hypocritical', 'Synonym: scheinheilig. Antonym: aufrichtig', 19),
('Schroff - Abrupt', 'Synonym: barsch. Antonym: höflich', 19),
('Unverschämt - Impudent', 'Synonym: dreist. Antonym: höflich', 19);


-- Inserting flashcards for German Deck 5 (Phrases)

 INSERT INTO `flashcard` (`front_text`, `back_text`, `deck_id`) VALUES
('Wie geht es dir? ', 'How are you?', 20),
('Ich verstehe nicht', 'I dont understand', 20),
('Es tut mir leid', 'I am sorry', 20),
('Könnten Sie bitte das wiederholen?', 'Could you please repeat that?', 20),
('Ja, gerne - Yes, please', 'Accepting an offer or request', 20),
('Nein, danke', 'No, thank you', 20),
('Ich habe eine Frage', 'I have a question', 20),
('Ich brauche Hilfe', 'I need help', 20),
('Ich bin fertig', 'I am done', 20),
('Ich habe keine Zeit', 'I dont have time', 20),
('Ich habe Hunger', 'I am hungry', 20),
('Ich bin müde', 'I am tired', 20),
('Ich mag das', 'I like that', 20),
('Ich mag das nicht', 'I dont like that', 20),
('Es ist mir egal', 'I dont care', 20),
('Das ist gut', 'Thats good', 20),
('Das ist schlecht', 'That is bad', 20),
('Ich bin hier', 'I am here', 20),
('Ich gehe jetzt', 'I am leaving now', 20),
('Wir sehen uns später', 'See you later', 20);

-- Inserting flashcards for French Deck 1 (Common words)

INSERT INTO flashcard (front_text, back_text, deck_id) VALUES
('Bonjour', 'Hello', 21),
('Merci', 'Thank you', 21),
('Oui', 'Yes', 21),
('Non', 'No', 21),
('Pain', 'Bread', 21),
('Vin', 'Wine', 21),
('Eau', 'Water', 21),
('Fromage', 'Cheese', 21),
('Pomme', 'Apple', 21),
('Chapeau', 'Hat', 21),
('Chat', 'Cat', 21),
('Chien', 'Dog', 21),
('Fleur', 'Flower', 21),
('Livre', 'Book', 21),
('Fenêtre', 'Window', 21),
('Porte', 'Door', 21),
('Poisson', 'Fish', 21),
('Viande', 'Meat', 21),
('Aimer', 'To like/love', 21),
('Aller', 'To go', 21);


-- Inserting flashcards for French Deck 2 (Common words)

INSERT INTO flashcard (front_text, back_text, deck_id) VALUES
('Chien', 'Dog', 22),
('Chat', 'Cat', 22),
('Livre', 'Book', 22),
('Maison', 'House', 22),
('Fleur', 'Flower', 22),
('Voiture', 'Car', 22),
('Jardin', 'Garden', 22),
('Pomme', 'Apple', 22),
('Chapeau', 'Hat', 22),
('Poulet', 'Chicken', 22),
('Porte', 'Door', 22),
('Table', 'Table', 22),
('Chaise', 'Chair', 22),
('Couteau', 'Knife', 22),
('Montagne', 'Mountain', 22),
('Mer', 'Sea', 22),
('Ciel', 'Sky', 22),
('Soleil', 'Sun', 22),
('Lune', 'Moon', 22),
('Étoile', 'Star', 22);



-- Inserting flashcards for French Deck 3 (Common words)

INSERT INTO flashcard (front_text, back_text, deck_id) VALUES
('Fleur', 'Flower', 23),
('Lumière', 'Light', 23),
('Bleu', 'Blue', 23),
('Pouvoir', 'Power', 23),
('Argent', 'Money', 23),
('Voyage', 'Travel', 23),
('Chapeau', 'Hat', 23),
('Jouer', 'Play', 23),
('Cher', 'Expensive', 23),
('Aimer', 'Love', 23),
('Heureux', 'Happy', 23),
('Courir', 'Run', 23),
('Fort', 'Strong', 23),
('Savoir', 'Know', 23),
('Gris', 'Gray - A color that is between black and white on the color spectrum', 23),
('Manger', 'Eat', 23),
('Boire', 'Drink', 23),
('Bateau', 'Boat', 23),
('Acheter', 'Buy', 23),
('Vendre', 'Sell', 23);


-- Inserting flashcards for French Deck 4 (Synonyms and antonyms)
INSERT INTO `flashcard` (`front_text`, `back_text`, `deck_id`) VALUES
('Amour - Love', 'Synonym: Affection. Antonym: Haine', 24),
('Travail - Work', 'Synonym: Emploi. Antonym: Chômage', 24),
('Bonheur - Happiness', 'Synonym: Joie. Antonym: Tristesse', 24),
('Sincère - Sincere', 'Synonym: Honnête. Antonym: Hypocrite', 24),
('Riche - Rich', 'Synonym: Abondant. Antonym: Pauvre', 24),
('Comprendre - To understand', 'Synonym: Saisir. Antonym: Ignorer', 24),
('Généreux - Generous', 'Synonym: Bienveillant. Antonym: Avare', 24),
('Fier - Proud', 'Synonym: Arrogant. Antonym: Humble', 24),
('Fou - Crazy', 'Synonym: Insensé. Antonym: Sensé', 24),
('Mince - Thin', 'Synonym: Maigre. Antonym: Gros', 24),
('Vieux - Old', 'Synonym: Ancien. Antonym: Jeune', 24),
('Célèbre - Famous', 'Synonym: Renommé. Antonym: Inconnu', 24),
('Sérieux - Serious', 'Synonym: Grave. Antonym: Drôle', 24),
('Savoir - To know', 'Synonym: Connaître. Antonym: Ignorer', 24),
('Aimer - To love', 'Synonym: Adorer. Antonym: Détester', 24),
('Étudier - To study', 'Synonym: Apprendre. Antonym: Abandonner', 24),
('Beau - Beautiful', 'Synonym: Magnifique. Antonym: Laid', 24),
('Fort - Strong', 'Synonym: Puissant. Antonym: Faible', 24),
('Grand - Tall', 'Synonym: Haut. Antonym: Petit', 24),
('Nouveau - New', 'Synonym: Frais. Antonym: Vieux', 24);


-- Inserting flashcards for French Deck 5 (Phrases)

INSERT INTO `flashcard` (`front_text`, `back_text`, `deck_id`) VALUES
('Bonjour', 'Hello', 25),
('Comment ça va ?', 'How are you?', 25),
('Quel est ton nom ?', 'What is your name?', 25),
('Je suis désolé(e)', 'I am sorry', 25),
('Je ne comprends pas', 'I dont understand', 25),
('Au revoir', 'Goodbye', 25),
('Merci', 'Thank you', 25),
('De rien', 'You are welcome', 25),
('Excusez-moi', 'Excuse me', 25),
('Oui', 'Yes', 25),
('Non', 'No', 25),
('S\'il vous plaît', 'Please', 25),
('Pardon', 'Sorry', 25),
('Je suis fatigué(e)', 'I am tired', 25),
('Je t\'aime', 'I love you', 25),
('Je suis en retard', 'I am late', 25),
('Comment tu t appelles ?', 'What is your name?', 25),
('Je suis occupé(e)', 'I am busy', 25),
('Je suis en train de manger', 'I am eating', 25),
('Je suis en train de dormir', 'I am sleeping', 25);


-- Inserting into questions table for Deck 1

INSERT INTO question_multiple_choice(text, ans, option1, option2, option3, option4, deck_id)
VALUES('What is the definition of "sorry"?', 'c) An expression of regret', 'a) A farewell remark', 'b) An expression of greeting', 'c) An expression of regret', 'd) A polite request', 1);

INSERT INTO question_multiple_choice(text, ans, option1, option2, option3, option4, deck_id)
VALUES('What is the definition of "when"?', 'b) Used to ask about the time of something', 'a) Used to ask for information or to introduce a request', 'b) Used to ask about the time of something', 'c) Used to ask about the place or location of something', 'd) A pronoun used to refer to a female person or animal', 1);

INSERT INTO question_multiple_choice(text, ans, option1, option2, option3, option4, deck_id)
VALUES('What is the synonym of "excuse me"?', 'd) Pardon', 'a) Hello', 'b) Goodbye', 'c) Thank you', 'd) Pardon', 1);

INSERT INTO question_multiple_choice(text, ans, option1, option2, option3, option4, deck_id)
VALUES('What is the antonym of "yes"?', 'b) No', 'a) Hello', 'b) No', 'c) Goodbye', 'd) Please', 1);

INSERT INTO question_multiple_choice(text, ans, option1, option2, option3, option4, deck_id)
VALUES('What is the definition of "please"?', 'd) A polite request', 'a) A farewell remark', 'b) An expression of gratitude', 'c) A negative answer', 'd) A polite request', 1);

INSERT INTO question_fill_the_blank (text, ans, deck_id)
VALUES ('Fill in the blank: "I" is a ________ used to refer to oneself.', 'Pronoun', 1);

INSERT INTO question_fill_the_blank (text, ans, deck_id)
VALUES ('Fill in the blank: "Food" is something that people or animals ________.', 'Eat', 1);

INSERT INTO question_fill_the_blank (text, ans, deck_id)
VALUES ('Fill in the blank: "They" is a pronoun used to refer to more than one ________ or thing.', 'Person', 1);

INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ('"Water" is a thing that people, animals, and machines can hear.', 'False', 1);

INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ('"Sound" is a clear liquid that has no color, taste, or smell, and that falls from clouds as rain.', 'False', 1);


-- Inserting into questions table for Deck 2

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id)
VALUES ('Which of the following is a yellow citrus fruit with acidic juice?', 'c) Lemon', 'a) Apple', 'b) Car', 'c) Lemon', 'd) Flower', 2);

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id)
VALUES ('Which of the following is a cold-blooded aquatic vertebrate with gills and fins?', 'd) Fish', 'a) Elephant', 'b) Car', 'c) Flower', 'd) Fish', 2);

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id)
VALUES ('Which of the following is a round fruit with a tough bright reddish-yellow rind and a juicy, sweet pulp?', 'a) Orange', 'a) Orange', 'b) House', 'c) Keys', 'd) Glasses', 2);

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id)
VALUES ('What is the definition of the color "green"?', 'b) A color that is a mixture of blue and yellow', 'a) A color that is a mixture of red and yellow', 'b) A color that is a mixture of blue and yellow', 'c) A color that is a mixture of blue and green', 'd) A color that is a mixture of black and white', 2);

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id)
VALUES ('Which of the following is a female monarch or ruler of a kingdom?', 'a) Queen', 'a) Queen', 'b) Jacket', 'c) Island', 'd) Door', 2);

INSERT INTO question_fill_the_blank(text, ans, deck_id)
VALUES ('A _____ is a short coat, typically extending to the hips.', 'Jacket', 2);

INSERT INTO question_fill_the_blank(text, ans, deck_id)
VALUES ('_____ is frozen water, a brittle, transparent crystalline solid.', 'Ice', 2);

INSERT INTO question_fill_the_blank(text, ans, deck_id)
VALUES ('A _____ is a covering for the head, typically made of cloth and having a brim and a shaped crown.', 'Hat', 2);

INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ('A flower is a seed-bearing part of a plant, consisting of reproductive organs (stamens and carpels) that are typically surrounded by brightly colored petals and a green calyx.', 'True', 2);

INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ('An island is a piece of land surrounded by air.', 'False', 2);


-- Inserting questions to English Deck 3
 
 INSERT INTO `question_multiple_choice` (`text`, `ans`, `option1`, `option2`, `option3`, `option4`, `deck_id`)
VALUES ('Which of the following is a round fruit with a tough bright reddish-yellow rind and a juicy, sweet pulp?', 'b) Orange', 'a) Vegetable', 'b) Orange', 'c) Shoe', 'd) Kind', 3);

INSERT INTO `question_multiple_choice` (`text`, `ans`, `option1`, `option2`, `option3`, `option4`, `deck_id`)
VALUES ('What is the definition of the term "family"?', 'a) A group consisting of parents and children living together in a household', 'a) A group consisting of parents and children living together in a household', 'b) The indefinite continued progress of existence and events in the past, present, and future regarded as a whole', 'c) A device that receives television signals and displays them on a screen', 'd) A plant or part of a plant used as food, typically as accompaniment to meat or fish', 3);

INSERT INTO `question_multiple_choice` (`text`, `ans`, `option1`, `option2`, `option3`, `option4`, `deck_id`)
VALUES ('Which of the following is a short coat, typically extending to the hips?', 'c) Jacket', 'a) Music', 'b) Future', 'c) Jacket', 'd) Rain', 3);

INSERT INTO `question_multiple_choice` (`text`, `ans`, `option1`, `option2`, `option3`, `option4`, `deck_id`)
VALUES ('What is the definition of the term "music"?', 'c) Vocal or instrumental sounds (or both) combined in such a way as to produce beauty of form, harmony, and expression of emotion', 'a) A plant or part of a plant used as food', 'b) Precipitation in the form of water droplets', 'c) Vocal or instrumental sounds (or both) combined in such a way as to produce beauty of form, harmony, and expression of emotion', 'd) A covering for the foot, typically made of leather', 3);

INSERT INTO `question_multiple_choice` (`text`, `ans`, `option1`, `option2`, `option3`, `option4`, `deck_id`)
VALUES ('Which of the following is defined as "accepting that something is true, especially without proof"?', 'b) Believe', 'a) Happy', 'b) Believe', 'c) Important', 'd) Work', 3);

INSERT INTO question_fill_the_blank (text, ans, deck_id) VALUES ('________ is activity involving mental or physical effort done in order to achieve a purpose or result.', 'Work', 3);

INSERT INTO question_fill_the_blank (text, ans, deck_id) VALUES ('A _______ is a person whom one knows and with whom one has a bond of mutual affection.', 'Friend', 3);

INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ("An umbrella is a device used as protection against rain or sometimes sun.", "True", 3);

INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ("Television is a plant or part of a plant used as food, typically as accompaniment to meat or fish.", "False", 3);

INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ("A hat is a short coat typically extending to the hips.", "False", 3);



-- Inserting questions for English deck 4

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id)
VALUES ('Which of the following is a synonym for the word "Abundance"?', 'b) Plenty', 'a) Scarcity', 'b) Plenty', 'c) Dishonest', 'd) Malevolent', 4);

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id)
VALUES ('Which of the following is an antonym for the word "Haphazard"?', 'b) Systematic', 'a) Random', 'b) Systematic', 'c) Clean', 'd) Dirty', 4);

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id)
VALUES ('Which of the following is a synonym for the phrase "Bite the bullet"?', 'a) Endure a painful or difficult situation', 'a) Endure a painful or difficult situation', 'b) Join a popular trend or activity', 'c) To study or read intensively', 'd) To explain something in a concise way', 4);

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id)
VALUES ('Which of the following is a synonym for the phrase "Piece of cake"?', 'a) Something that is very easy to do', 'a) Something that is very easy to do', 'b) To accept the consequences of your actions', 'c) To study or read intensively', 'd) To join a popular trend or activity', 4);

INSERT INTO `question_fill_the_blank` (`text`, `ans`, `deck_id`) VALUES ('Let the cat out of the bag" means to reveal a __________.', 'Secret', 4);

INSERT INTO `question_fill_the_blank` (`text`, `ans`, `deck_id`) VALUES ('"Break a leg" is a phrase that is commonly used to wish someone __________.', 'Good luck!', 4);

INSERT INTO `question_fill_the_blank` (`text`, `ans`, `deck_id`) VALUES ('The synonym for the word "Discreet" is _________.', 'Careful', 4);

INSERT INTO question_true_or_false (text, ans, deck_id) 
VALUES ("The phrase 'Get out of hand' means to have things under control.", "False", 4);

INSERT INTO question_true_or_false (text, ans, deck_id) 
VALUES ("The synonym for the word 'Obsolete' is 'Current'.", "False", 4);

INSERT INTO question_true_or_false (text, ans, deck_id) 
VALUES ("The antonym for the word 'Eccentric' is 'Conventional'.", "True", 4);

-- Inserting questions for English deck 5

INSERT INTO `question_multiple_choice` (`text`, `ans`, `option1`, `option2`, `option3`, `option4`, `deck_id`)
VALUES ('"Spill the beans" means to _________.', 'c) reveal a secret', 'a) cook a meal', 'b) clean the house', 'c) reveal a secret', 'd) go shopping', 5);

INSERT INTO `question_multiple_choice` (`text`, `ans`, `option1`, `option2`, `option3`, `option4`, `deck_id`)
VALUES ('What does the phrase "Under the weather" mean?', 'a) Feeling unwell', 'a) Feeling unwell', 'b) Feeling extremely happy', 'c) Feeling extremely sad', 'd) Feeling extremely bored', 5);

INSERT INTO `question_multiple_choice` (`text`, `ans`, `option1`, `option2`, `option3`, `option4`, `deck_id`)
VALUES ('"On the same page" means to be in __________ with someone else.', 'c) agreement', 'a) disagreement', 'b) disappointment', 'c) agreement', 'd) conflict', 5);

INSERT INTO `question_multiple_choice` (`text`, `ans`, `option1`, `option2`, `option3`, `option4`, `deck_id`)
VALUES ('What does the phrase "Piece of cake" mean?', 'b) Something that is very easy to do', 'a) Something that is very difficult to do', 'b) Something that is very easy to do', 'c) Something that is dangerous to do', 'd) Something that is impossible to do', 5);

INSERT INTO `question_multiple_choice` (`text`, `ans`, `option1`, `option2`, `option3`, `option4`, `deck_id`)
VALUES ('"Get out of hand" means to _________.', 'b) lose control', 'a) get in control', 'b) lose control', 'c) stay in control', 'd) never be in control', 5);

INSERT INTO `question_multiple_choice` (`text`, `ans`, `option1`, `option2`, `option3`, `option4`, `deck_id`)
VALUES ('What does the phrase "Let the cat out of the bag" mean?', 'a) To reveal a secret', 'a) To reveal a secret', 'b) To keep a secret', 'c) To hold a cat', 'd) To go shopping', 5);

INSERT INTO `question_multiple_choice` (`text`, `ans`, `option1`, `option2`, `option3`, `option4`, `deck_id`)
VALUES ('What does the phrase "Bite the bullet" mean?', 'b) To endure a painful or difficult situation', 'a) To experience great joy', 'b) To endure a painful or difficult situation', 'c) To give up easily', 'd) To avoid difficult situations', 5);


INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ('The phrase "Quit cold turkey" means to stop doing something suddenly and completely.', 'True', 5);

INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ('The phrase "No pain, no gain" means that one has to work hard to achieve their goals.', 'True', 5);

INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ('The phrase "Easier said than done" means that something is easy to suggest but difficult to do.', 'True', 5);


-- Inserting questions into Spanish Deck 1

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id) VALUES
('What is the Spanish word for "I am sorry"?', 'a) Lo siento', 'a) Lo siento', 'b) Hasta luego', 'c) Adiós', 'd) Hasta pronto', 6),
('What is the Spanish word for "No"?', 'd) No', 'a) Hola', 'b) De nada', 'c) Sí', 'd) No', 6),
('What is the Spanish word for "Please"?', 'c) Por favor', 'a) Hola', 'b) De nada', 'c) Por favor', 'd) Gracias', 6),
('What is the Spanish word for "Good morning"?', 'd) Buenos días', 'a) Adiós', 'b) Buenas tardes', 'c) Hola', 'd) Buenos días', 6);

INSERT INTO question_fill_the_blank (text, ans, deck_id) VALUES ('¿Cómo estás? translates to "__________?"', 'How are you?', 6);

INSERT INTO question_fill_the_blank (text, ans, deck_id) VALUES ('Mucho gusto translates to "__________ to meet you."', 'Nice', 6);

INSERT INTO question_fill_the_blank (text, ans, deck_id) VALUES ('No entiendo translates to "I __________ understand."', 'dont', 6);

INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ('"Estoy bien" means "I am fine".', 'True', 6);

INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ('"Hasta mañana" means "See you tomorrow".', 'True', 6);

INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ('"Buenas noches" means "Goodbye".', 'False', 6);


-- Inserting questions into Spanish Deck 2

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id) VALUES ('What does "Tigre" mean in English?', 'd) Tiger', 'a) Lion', 'b) Elephant', 'c) Zebra', 'd) Tiger', 7);

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id) VALUES ('What does "Conejo" mean in English?', 'b) Rabbit', 'a) Lion', 'b) Rabbit', 'c) Tiger', 'd) Bear', 7);

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id) VALUES ('What does "Pollo" mean in English?', 'a) Chicken', 'a) Chicken', 'b) Horse', 'c) Cow', 'd) Duck', 7);

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id) VALUES ('What does "Caballo" mean in English?', 'b) Horse', 'a) Cow', 'b) Horse', 'c) Chicken', 'd) Duck', 7);

INSERT INTO question_fill_the_blank (text, ans, deck_id) VALUES ('"León" means "" in English.', 'Lion', 7);
INSERT INTO question_fill_the_blank (text, ans, deck_id) VALUES ('"Pato" means "" in English.', 'Duck', 7);
INSERT INTO question_fill_the_blank (text, ans, deck_id) VALUES ('"Gato" means "__" in English.', 'Cat', 7);

INSERT INTO `question_true_or_false` (`text`, `ans`, `deck_id`) VALUES ('Ratón" means "Bear" in English.', 'False', 7);
INSERT INTO `question_true_or_false` (`text`, `ans`, `deck_id`) VALUES ('Vaca" means "Chicken" in English.', 'False', 7);
INSERT INTO `question_true_or_false` (`text`, `ans`, `deck_id`) VALUES ('Perro" means "Cat" in English.', 'False', 7);

-- Inserting questions into Spanish Deck 3

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id)
VALUES ('What is the Spanish word for "Book"?', 'a) Libro', 'a) Libro', 'b) Luna', 'c) Mar', 'd) Cine', 8);

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id)
VALUES ('What is the Spanish word for "Dog"?', 'b) Perro', 'a) Gato', 'b) Perro', 'c) Casa', 'd) Cielo', 8);

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id)
VALUES ('What is the Spanish word for "Mountain"?', 'c) Montaña', 'a) Cielo', 'b) Bicicleta', 'c) Montaña', 'd) Perro', 8);

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id)
VALUES ('What is the Spanish word for "Bed"?', 'b) Cama', 'a) Casa', 'b) Cama', 'c) Agua', 'd) Lápiz', 8);

INSERT INTO question_fill_the_blank (text, ans, deck_id) VALUES ('"Río" means "______"', 'River', 8);

INSERT INTO question_fill_the_blank (text, ans, deck_id) VALUES ('"Autobús" means "______"', 'Bus', 8);

INSERT INTO question_fill_the_blank (text, ans, deck_id) VALUES ('"Bicicleta" means "______"', 'Bicycle', 8);

INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ("Lápiz means Pen in English", "True", 8);

INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ("Agua means Food in English", "False", 8);

-- Inserting questions into Spanish Deck 4

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id) 
VALUES ('Which of the following is a synonym for "Joven"?', 'a) Adolescente', 'a) Adolescente', 'b) Viejo', 'c) Gordo', 'd) Lento', 9);

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id) 
VALUES ('Which of the following is an antonym for "Inocente"?', 'b) Culpable', 'a) Ingenuo','b) Culpable', 'c) Perverso', 'd) Bueno', 9);

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id) 
VALUES ('Which of the following is a synonym for "Flaco"?', 'a) Delgado','a) Delgado', 'b) Avaricioso', 'c) Triunfar', 'd) Perverso', 9);

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id) 
VALUES ('Which of the following is an antonym for "Oscuro"?', 'b) Claro', 'a) Tenebroso','b) Claro', 'c) Adinerado', 'd) Enfermo', 9);

INSERT INTO question_fill_the_blank (text, ans, deck_id) VALUES ('"Rico" is an __________ for "Pobre".', 'Antonym', 9);

INSERT INTO question_fill_the_blank (text, ans, deck_id) VALUES ('"Honesto" is a __________ for "Sincero".', 'Synonym', 9);

INSERT INTO question_fill_the_blank (text, ans, deck_id) VALUES ('"Cobarde" means "_____" in English.', 'Cowardly', 9);

INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ('The antonym of "Difícil" is "Fácil".', 'True', 9);

INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ('The synonym of "Abundancia" is "Escasez".', 'False', 9);

INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ('The antonym of "Bello" is "Feo".', 'True', 9);


-- Inserting questions for Spanish Deck 5

INSERT INTO `question_multiple_choice` (`text`, `ans`, `option1`, `option2`, `option3`, `option4`, `deck_id`) 
VALUES ('Encantado de conocerte means', 'b) Nice to meet you', ' a) Hello', 'b) Nice to meet you', 'c) Goodbye', 'd) Thank you', 10);

INSERT INTO `question_multiple_choice` (`text`, `ans`, `option1`, `option2`, `option3`, `option4`, `deck_id`) 
VALUES ('¿Hablas francés? means', 'a) Do you speak French?', 'a) Do you speak French?', 'b) Do you speak English?', 'c) Do you speak Spanish?', 'd) Do you speak German?', 10);

INSERT INTO `question_multiple_choice` (`text`, `ans`, `option1`, `option2`, `option3`, `option4`, `deck_id`) 
VALUES ('¿Cuánto cuesta? means', 'a) How much does it cost?', 'a) How much does it cost?', 'b) Where is the bathroom?', 'c) What time is it?', 'd) How are you?', 10);

INSERT INTO `question_multiple_choice` (`text`, `ans`, `option1`, `option2`, `option3`, `option4`, `deck_id`) 
VALUES ('Gracias por todo means', 'c) Thank you for everything', 'a) Hello', 'b) Goodbye', 'c) Thank you for everything', 'd) Nice to meet you', 10);

INSERT INTO question_fill_the_blank (text, ans, deck_id) VALUES ('¿Cómo _____ llamas?', 'te', 10);

INSERT INTO question_fill_the_blank (text, ans, deck_id) VALUES ('Lo siento, no _____', 'puedo', 10);

INSERT INTO question_fill_the_blank (text, ans, deck_id) VALUES ('Es demasiado _____', 'caro', 10);

INSERT INTO `question_true_or_false` (`text`, `ans`, `deck_id`)
VALUES ('Hasta pronto means "Thank you for everything"', 'False', 10);

INSERT INTO `question_true_or_false` (`text`, `ans`, `deck_id`)
VALUES ('Está a la derecha means "It\'s on the left"', 'False', 10);

INSERT INTO `question_true_or_false` (`text`, `ans`, `deck_id`)
VALUES ('Soy de México means "I am from Mexico"', 'True', 10);



-- Inserting questions for Hindi Deck 1

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id) VALUES
('What does "Baarish" mean?', 'c) Rain', 'a) Sunshine', 'b) Wind', 'c) Rain', 'd) Night', '11'),
('What does "Sundar" mean?', 'a) Beautiful', 'a) Beautiful', 'b) Good', 'c) Bad', 'd) Ugly', '11'),
('What does "Haan" mean?', 'a) Yes', 'a) Yes', 'b) No', 'c) Sorry', 'd) Goodbye', '11'),
('What does "Namaste" mean?', 'b) Hello', 'a) Thank you', 'b) Hello', 'c) Goodbye', 'd) Sorry', '11');

INSERT INTO question_fill_the_blank (text, ans, deck_id) VALUES ('"Kamra" means "', 'Room', 11);
INSERT INTO question_fill_the_blank (text, ans, deck_id) VALUES ('"Mera naam..." means "', 'My name is', 11);
INSERT INTO question_fill_the_blank (text, ans, deck_id) VALUES ('"Aapka naam kya hai?" means "', 'What', 11);

INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ('Pani means Food', 'False', '11');
INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ('Bura means Beautiful', 'False', '11');
INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ('Shukriya means Goodbye', 'False', '11');


-- Inserting questions for Hindi Deck 2

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id)
VALUES
('What does "Shaam" mean?', 'd) Evening','a) Afternoon', 'b) Night', 'c) Morning', 'd) Evening', 12),
('What does "Peela" mean?', 'a) Yellow', 'a) Yellow','b) Black', 'c) White', 'd) Green', 12),
('What does "Laal" mean?', 'c) Red','a) Black', 'b) White', 'c) Red', 'd) Green',  12),
('What does "Safed" mean?', 'b) White','a) Black', 'b) White', 'c) Red', 'd) Green',  12);

INSERT INTO question_fill_the_blank (text, ans, deck_id) VALUES ('Subah means', 'Morning', 12);
INSERT INTO question_fill_the_blank (text, ans, deck_id) VALUES ('Raat means', 'Night', 12);
INSERT INTO question_fill_the_blank (text, ans, deck_id) VALUES ('Stree means', 'Woman', 12);

INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ("Neela means Green", "False", 12);

INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ("Accha means Bad", "False", 12);

INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ("Kharab means Good", "False", 12);


-- Inserting questions for Hindi Deck 3

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id) VALUES
('What does "Accha" mean?','a) Good', 'a) Good', 'b) Bad', 'c) Correct', 'd) Wrong', '13'),
('What does "Pani" mean?', 'd) Water', 'a) Fruit', 'b) Bread', 'c) Meat','d) Water', '13'),
('What does "Juice" mean?', 'a) Juice','a) Juice', 'b) Lentil', 'c) Fish', 'd) Meat', '13'),
('What does "Daal" mean?', 'b) Lentil', 'a) Rice', 'b) Lentil', 'c) Milk','d) Tea', '13'),
('What does "Chai" mean?', 'c) Tea', 'a) Bread', 'b) Juice', 'c) Tea','d) Meat' ,'13');


INSERT INTO question_fill_the_blank (text, ans, deck_id) VALUES ('"Baccha" means "', 'Child', '13');

INSERT INTO question_fill_the_blank (text, ans, deck_id) VALUES ('"Sabzi" means "', 'Vegetable', '13');

INSERT INTO question_fill_the_blank (text, ans, deck_id) VALUES ('"Adhikatam" means "', 'Maximum', '13');

INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ('Nyuntam means Maximum', 'False', 13);

INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ('Kharab means Good', 'False', 13);

-- Insert questions Hindi Deck 4

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id)
VALUES ("What is the synonym of 'Nishchint'?", "b) Chintaarahit", "a) Chintaagrast","b) Chintaarahit", "c) Nirantar", "d) Vyakulta", 14);

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id)
VALUES ("What is the antonym of 'Lalchi'?", "a) Udaar","a) Udaar", "b) Avid", "c) Lobhi", "d) Dayalu", 14);

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id)
VALUES ("What is the synonym of 'Chalak'?", "c) Pratibhaavan", "a) Budhimaan", "b) Moorkh","c) Pratibhaavan", "d) Murkh", 14);

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id)
VALUES ("What is the antonym of 'Himmat'?","a) Darr", "a) Darr", "b) Saahas", "c) Parakram", "d) Bhay",14);

INSERT INTO question_fill_the_blank (text, ans, deck_id) VALUES ('"Udas" means _______.', 'Sad', 14);
INSERT INTO question_fill_the_blank (text, ans, deck_id) VALUES ('"Vishwas" means _______.', 'Trust', 14);
INSERT INTO question_fill_the_blank (text, ans, deck_id) VALUES ('"Gambhir" means _______.', 'Serious', 14);

INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ('Maujood means absent.', 'False', 14);

INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ('Bhala means bad.', 'False', 14);

INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ('Nishchint means worried.', 'False', 14);

-- Inserting questions for Hindi deck 5

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id)
VALUES
('What does "Acche Dost" mean?', 'a) Good friends.', 'a) Good friends', 'b) Bad friends', 'c) Annoying friends', 'd) Fake friends', 15),
('What does "Andar Ka Ghamandi" mean?', 'b) A person with arrogance.', 'a) A person with humility', 'b) A person with arrogance', 'c) A person with kindness', 'd) A person with honesty', 15),
('What does "Anguthe Chumna" mean?', 'a) To flatter someone.', 'a) To flatter someone', 'b) To scold someone', 'c) To ignore someone', 'd) To hug someone', 15),
('What does "Haath Pair Fadakna" mean?', 'a) To have twitching in hands and feet.', 'a) To have twitching in hands and feet', 'b) To feel sleepy', 'c) To feel hungry', 'd) To have headache', 15);

INSERT INTO question_fill_the_blank (text, ans, deck_id) VALUES ('Asal Wala means ________.', 'The real one', 15);

INSERT INTO question_fill_the_blank (text, ans, deck_id) VALUES ('Apne Pairo Par Khada Hona means to ________.', 'stand on ones own feet', 15);

INSERT INTO question_fill_the_blank (text, ans, deck_id) VALUES ('Apna Waqt Aana means ________.', 'To have ones moment of glory', 15);

INSERT INTO question_true_or_false (text, ans, deck_id)
VALUES ('Acchi Soch means negative thinking.', 'False', 15);

INSERT INTO question_true_or_false (text, ans, deck_id)
VALUES ('Apni Hi Dukaan Mein Shikaar means to escape from the scene of the crime.', 'False', 15);

INSERT INTO question_true_or_false (text, ans, deck_id)
VALUES ('Andhere Mein Taley Ka Saanp means there is no danger in the darkness.', 'False', 15);


-- Inserting questions for German deck 1

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id)
VALUES ('Which of the following means "Dog" in German?', 'c) Hund', 'a) Katze', 'b) Haus', 'c) Hund', 'd) Feuer', '16');

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id)
VALUES ('Which of the following means "Water" in German?', 'c) Wasser', 'a) Fenster', 'b) Kuchen', 'c) Wasser', 'd) Buch', '16');

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id)
VALUES ('Which of the following means "Table" in German?', 'a) Tisch', 'a) Tisch', 'b) Auto', 'c) Feuer', 'd) Maus', '16');

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id)
VALUES ('Which of the following means "Fire" in German?', 'b) Feuer', 'a) Stuhl', 'b) Feuer', 'c) Kuchen', 'd) Schlüssel', '16');

INSERT INTO question_fill_the_blank (text, ans, deck_id) VALUES ('Fenster means _______ in English.', 'Window', 16);

INSERT INTO question_fill_the_blank (text, ans, deck_id) VALUES ('Schlüssel means _______ in English.', 'Key', 16);

INSERT INTO question_fill_the_blank (text, ans, deck_id) VALUES ('Baum means _______ in English.', 'Tree', 16);

INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ('"Telefon" means television in German.', 'False', 16);

INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ('"Stift" means pencil in German.', 'True', 16);

INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ('"Kuchen" means bread in German.', 'False', 16);

-- Inserting questions for German deck 2

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id) VALUES ('Which of the following means "Book" in German?', 'b) Buch', 'a) Stuhl', 'b) Buch', 'c) Fenster', 'd) Schlüssel', '17');
INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id) VALUES ('What does "Fenster" mean in English?', 'b) Window', 'a) Door', 'b) Window', 'c) Book', 'd) Key', '17');
INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id) VALUES ('Which of the following means "Table" in German?', 'a) Tisch', 'a) Tisch', 'b) Computer', 'c) Stuhl', 'd) Buch', '17');
INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id) VALUES ('What does "Haus" mean in English?', 'c) House', 'a) Window', 'b) Chair', 'c) House', 'd) Bread', '17');

INSERT INTO question_fill_the_blank (text, ans, deck_id)
VALUES ("Banane means _______ in English.", "Banana", 17);

INSERT INTO question_fill_the_blank (text, ans, deck_id)
VALUES ("Brot means _______ in English.", "Bread", 17);

INSERT INTO question_fill_the_blank (text, ans, deck_id)
VALUES ("Milch means _______ in English.", "Milk", 17);

INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ('"Kaffee" means tea in German.', 'False', 17);

INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ('"Schlüssel" means Key in English.', 'True', 17);

INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ('"Telefon" means telephone in German.', 'True', 17);


-- Inserting questions for German deck 3

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id) VALUES
('What does "Kompromiss" mean in English?', 'd) Compromise', 'a) Innovation', 'b) Precision', 'c) Accountability', 'd) Compromise', 18),
('What does "Entscheidung" mean in English?', 'c) Decision', 'a) Responsibility', 'b) Sustainability', 'c) Decision', 'd) Solidarity', 18),
('What does "Zuversicht" mean in English?', 'b) Confidence, optimism', 'a) Responsibility', 'b) Confidence, optimism', 'c) Decision', 'd) Challenge', 18),
('What does "Präzision" mean in English?', 'a) Precision', 'a) Precision', 'b) Accountability', 'c) Enthusiasm', 'd) Ambition', 18);

INSERT INTO question_fill_the_blank (text, ans, deck_id)
VALUES ('Einsicht means _______ in English.', 'Insight, realization', 18);

INSERT INTO question_fill_the_blank (text, ans, deck_id)
VALUES ('Begeisterung means _______ in English.', 'Enthusiasm, excitement', 18);

INSERT INTO question_fill_the_blank (text, ans, deck_id)
VALUES ('Bewusstsein means _______ in English.', 'Awareness, consciousness', 18);

INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ('Souveränität" means sovereignty in English.', 'True', 18);
INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ('"Initiative" means incentive in German.', 'False', 18);
INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ('"Ehrgeiz" means drive in German.', 'True', 18);

-- Inserting questions for German deck 4

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id) VALUES
('Which of the following words is an antonym of "geizig"?','a) Generous',  'a) Generous', 'b) Harmless', 'c) Sleazy', 'd) Timid', 19),
('What is a synonym for "heuchlerisch" in German?', 'b) Hypocritical', 'a) Awkward','b) Hypocritical', 'c) Inflexible', 'd) Scheming', 19),
('Which word is an antonym of "fateful"?', 'b) Harmless', 'a) Eccentric','b) Harmless', 'c) Petty', 'd) Sleazy', 19),
('What is a synonym for "unprecedented"?', 'd) Unique', 'a) Abrupt', 'b) Fickle', 'c) Repellent','d) Unique', 19),
('Which of the following words is an antonym of "awkward"?', 'd) Skilled', 'a) Annoying', 'b) Inflexible', 'c) Petty','d) Skilled', 19),
('What is the meaning of the German word "verschlagen"?', 'c) Scheming', 'a) Eccentric', 'b) Fateful','c) Scheming', 'd) Sleazy', 19),
('What is an antonym of "deluded"?', 'c) On the ball', 'a) Abrupt', 'b) Annoying', 'c) On the ball', 'd) Scheming', 19),
('Which of the following words is a synonym of "stingy"?', 'c) Petty', 'a) Eccentric', 'b) Hypocritical','c) Petty', 'd) Timid', 19);

INSERT INTO question_fill_the_blank (text, ans, deck_id) VALUES ("Schroff means _____ in English.", "Abrupt", 19);

INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ('"Unnachgiebig" means inflexible in English.', 'True', 19);

-- Inserting questions for German deck 5

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id) VALUES ('What does "Ich verstehe nicht" mean?', 'b) I dont understand', 'a) I am sorry', 'b) I dont understand', 'c) I am done', 'd) I dont have time', '20');

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id) VALUES ('What does "Ja, gerne" mean?', 'd) Yes, please', 'a) I dont like that', 'b) No, thank you', 'c) I am hungry', 'd) Yes, please', '20');

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id) VALUES ('What does "Ich habe Hunger" mean?', 'b) I am hungry', 'a) I am sorry', 'b) I am hungry', 'c) I am leaving now', 'd) I dont care', '20');

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id) VALUES ('What does "Wir sehen uns später" mean?', 'a) See you later', 'a) See you later', 'b) I am sorry', 'c) I am leaving now', 'd) I dont care', '20');

INSERT INTO question_fill_the_blank (text, ans, deck_id) VALUES ("Ich bin _______.", "hier", 20);

INSERT INTO question_fill_the_blank (text, ans, deck_id) VALUES ("Ich brauche __________.", "Hilfe", 20);

INSERT INTO question_fill_the_blank (text, ans, deck_id) VALUES ("Könnten Sie bitte das _________?", "wiederholen?", 20);

INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ('Das ist gut means That is bad', 'False', 20);

INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ('Ich bin fertig means I am tired', 'False', 20);

INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ('Es tut mir leid means I am happy', 'False', 20);

-- Inserting questions for French deck 1

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id) VALUES
("What does 'Merci' mean in English?", "b) Thank you", "a) Hello", "b) Thank you", "c) Yes", "d) No", 21),
("What does 'Poisson' mean in English?", "c) Fish", "a) Cat", "b) Dog", "c) Fish", "d) Flower", 21),
("What does 'Chapeau' mean in English?", "a) Hat", "a) Hat", "b) Book", "c) Door", "d) Window", 21),
("What does 'Fleur' mean in English?", "a) Flower", "a) Flower", "b) Meat", "c) Apple", "d) Cheese", 21);

INSERT INTO question_fill_the_blank (text, ans, deck_id) VALUES ('Je ne comprends pas', 'understand', '21');
INSERT INTO question_fill_the_blank (text, ans, deck_id) VALUES ('Je suis ________.', 'désolé ,sorry', '21');
INSERT INTO question_fill_the_blank (text, ans, deck_id) VALUES ('Je voudrais du ________, s''il vous plaît.', 'pain ,bread', '21');

INSERT INTO question_true_or_false (text, ans, deck_id)
VALUES ("Eau means Wine in English.", "False", 21);

INSERT INTO question_true_or_false (text, ans, deck_id)
VALUES ("Viande means Vegetables in English.", "False", 21);

INSERT INTO question_true_or_false (text, ans, deck_id)
VALUES ("Non means Yes in English.", "False", 21);

-- Inserting questions for French deck 2

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id) VALUES ('What is the French word for "Mountain"?', 'a) Montagne', 'a) Montagne', 'b) Mer', 'c) Ciel', 'd) Soleil', 22);

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id) VALUES ('What is the French word for "Chicken"?', 'c) Poulet', 'a) Chat', 'b) Chien', 'c) Poulet', 'd) Couteau', 22);

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id) VALUES ('What is the French word for "House"?', 'c) Maison', 'a) Table', 'b) Chaise', 'c) Maison', 'd) Jardin', 22);

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id) VALUES ('What is the French word for "Car"?', 'a) Voiture', 'a) Voiture', 'b) Couteau', 'c) Jardin', 'd) Montagne', 22);

INSERT INTO question_fill_the_blank (text, ans, deck_id) VALUES
('"Je lis un _____."', 'livre, book', 22),
('"Il fait ______ aujourd hui."', 'beau, nice', 22),
('"Je vais à la _____."', 'mer, sea', 22);

INSERT INTO question_true_or_false (text, ans, deck_id)
VALUES ('Chapeau means "Book" in English.', 'False', 22);

INSERT INTO question_true_or_false (text, ans, deck_id)
VALUES ('Étoile means "Moon" in English.', 'False', 22);

INSERT INTO question_true_or_false (text, ans, deck_id)
VALUES ('Porte means "Chair" in English.', 'False', 22);


-- Inserting questions for French deck 3

INSERT INTO `question_multiple_choice` (`text`, `ans`, `option1`, `option2`, `option3`, `option4`, `deck_id`)
VALUES ('What is the English translation of the French word "Fleur"?','a) Flower', 'a) Flower', 'b) Light', 'c) Blue', 'd) Power', 23);

INSERT INTO `question_multiple_choice` (`text`, `ans`, `option1`, `option2`, `option3`, `option4`, `deck_id`)
VALUES ('What is the English translation of the French word "Chapeau"?','a) Hat', 'a) Hat', 'b) Play', 'c) Love', 'd) Run', 23);

INSERT INTO `question_multiple_choice` (`text`, `ans`, `option1`, `option2`, `option3`, `option4`, `deck_id`)
VALUES ('What is the English translation of the French word "Jouer"?','a) Play', 'a) Play', 'b) Hat', 'c) Love', 'd) Run', 23);

INSERT INTO `question_multiple_choice` (`text`, `ans`, `option1`, `option2`, `option3`, `option4`, `deck_id`)
VALUES ('What is the English translation of the French word "Manger"?','a) Eat', 'a) Eat', 'b) Sell', 'c) Buy', 'd) Drink', 23);

INSERT INTO question_fill_the_blank (text, ans, deck_id) VALUES ('Je vais _______ un sandwich.', 'manger, eat', '23');
INSERT INTO question_fill_the_blank (text, ans, deck_id) VALUES ('Le ciel est _______.', 'bleu, blue', '23');
INSERT INTO question_fill_the_blank (text, ans, deck_id) VALUES ('Je bois du _______.', 'café, coffee', '23');

INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ("Gris means Green in English", "False", 23);
INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ("Savoir means Forget in English", "False", 23);
INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ("Voyage means Travel in English", "True", 23);


-- Inserting questions for French deck 4
INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id)
VALUES ("Which word is an antonym of 'Grand - Tall'?", "b) Petit", "a) Haut", "b) Petit", "c) Frais", "d) Vieux", 24);

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id)
VALUES ("Which word is an antonym of 'Mince - Thin'?", "b) Gros", "a) Maigre", "b) Gros", "c) Ancien", "d) Jeune", 24);

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id)
VALUES ("Which word is a synonym of 'Comprendre - To understand'?","a) Saisir", "a) Saisir", "b) Ignorer", "c) Apprendre", "d) Abandonner", 24);

INSERT INTO question_multiple_choice (text, ans, option1, option2, option3, option4, deck_id)
VALUES ("Which word is a synonym of 'Étudier - To study'?", "c) Apprendre", "a) Connaître", "b) Ignorer", "c) Apprendre", "d) Abandonner", 24);

INSERT INTO `question_fill_the_blank` (`text`, `ans`, `deck_id`) VALUES ('Amour - Love means the opposite of _______.', 'Haine', 24);
INSERT INTO `question_fill_the_blank` (`text`, `ans`, `deck_id`) VALUES ('Vieux - Old means the opposite of _______.', 'Jeune', 24);
INSERT INTO `question_fill_the_blank` (`text`, `ans`, `deck_id`) VALUES ('Bonheur - Happiness means the opposite of _______.', 'Tristesse', 24);

INSERT INTO question_true_or_false (text, ans, deck_id) VALUES 
('"Sincère - Sincere" means the opposite of "Hypocrite."', 'True', 24);

INSERT INTO question_true_or_false (text, ans, deck_id) VALUES 
('"Fier - Proud" means the opposite of "Humble."', 'True', 24);

INSERT INTO question_true_or_false (text, ans, deck_id) VALUES 
('"Célèbre - Famous" means the opposite of "Inconnu."', 'True', 24);


-- Inserting questions for French deck 5

INSERT INTO `question_multiple_choice` (`text`, `ans`, `option1`, `option2`, `option3`, `option4`, `deck_id`) VALUES 
('What does "bonjour" mean in English?', 'c) Hello', 'a) Goodbye', 'b) Thank you', 'c) Hello', 'd) I am sorry', 25),
('What does "merci" mean in English?', 'c) Thank you', 'a) Goodbye', 'b) I am sorry', 'c) Thank you', 'd) Please', 25),
('What does "non" mean in English?', 'b) No', 'a) Yes', 'b) No', 'c) Thank you', 'd) Excuse me', 25),
('What does "excusez-moi" mean in English?', 'd) Excuse me', 'a) Sorry', 'b) Thank you', 'c) Please', 'd) Excuse me', 25);

INSERT INTO `question_fill_the_blank` (`text`, `ans`, `deck_id`) VALUES ('Je suis en train de manger' ,'eating', 25);
INSERT INTO `question_fill_the_blank` (`text`, `ans`, `deck_id`) VALUES ('S\'il vous plaît', 'Please', 25);
INSERT INTO `question_fill_the_blank` (`text`, `ans`, `deck_id`) VALUES ('Je ne comprends pas', 'I don\'t understand', 25);

INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ('Je t aime means I hate you', 'False', '25');

INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ('Je suis fatigue means I am hungry', 'False', '25');

INSERT INTO question_true_or_false (text, ans, deck_id) VALUES ('Comment ça va? means What is your name?', 'False', '25');