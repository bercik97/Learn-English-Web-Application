INSERT INTO roles (id, role)
VALUES (1, 'ROLE_USER'),
       (2, 'ROLE_ADMIN');

INSERT INTO users (username, email, password, is_enabled)
VALUES ('a', 'a@a.com', '$2a$10$Y2xKL3PjHd257clTHpcJl.tg4qtFyDH1/Q8UESXboV9tMnXGRjShm', true),
       ('b', 'b@b.com', '$2a$10$QMlzlGyhELD1bhRQrJQ/3Oc.A6K5axHGiqXSp7ZkmoRRmhIdbhgCy', true),
       ('BillGates', 'microsoft@outlook.com', '$2a$10$kcKvLya3fvMwKbBycgStF.yf8PIiSwXMCxc8WyRD5vYI/cb3jYcy2', true),
       ('MarkZuckerberg', 'mark.zuckerberg@facemail.com',
        '$2a$10$8gSiB2zsTed0rNr01IhhkumJEEJYHd0Jluzar1hoDzY0czxd4E4kK', true),
       ('LinusTorvalds', 'penguin@linux.com', '$2a$10$e6BSDr2.qNmlUjPiPxKtXOy6VXLNicBjJOmFfVCSe3x8Ce.69SPO6', true),
       ('GeorgeHotz', 'comma@mail.com', '$2a$10$c74z6i5BEpZd7zxDt3Oh4ubXr6dvk6zS6TR3FGW09twI0o7nEkqve', true),
       ('JamesGosling', 'james.java@mail.com', '$2a$10$X/G9UC9p2xDy0o8epoePCOzs/PGreS35kbrdUo51UjZgBcmiozikm', true),
       ('Rob', 'rob@gmail.com', '$2a$10$aIeVCFtezvuV9sIScXRB5OYSSrHbDZJGJpHlL6dDBUKQ1FNeqcYs2', true),
       ('SteveJobs', 'iLoveApple@icloud.com', '$2a$10$kFFzJ/OTpPpiXEGeCJehsO6.g1CHVayzVyVLVfS3wJvhXUMJ/0lES', true);

INSERT INTO users_roles (user_id, roles_id)
VALUES (1, 1),
       (1, 2),
       (2, 1),
       (3, 1),
       (4, 1),
       (5, 1),
       (6, 1),
       (7, 1),
       (8, 1),
       (9, 1);

INSERT INTO user_details (level, expierience, current_rank, number_of_wins, number_of_loses, number_of_draws, user_id)
VALUES ('13', '13555', 'Challenger', '0', '0', '0', 1),
       ('2', '80', 'Bronze', '0', '0', '0', 2),
       ('3', '190', 'Silver', '0', '0', '0', 3),
       ('5', '365', 'Gold', '0', '0', '0', 4),
       ('11', '6795', 'Master', '0', '0', '0', 5),
       ('12', '7295', 'Master', '0', '0', '0', 6),
       ('9', '2400', 'Diamond', '0', '0', '0', 7),
       ('7', '850', 'Platinum', '0', '0', '0', 8),
       ('6', '700', 'Gold', '0', '0', '0', 9);

INSERT INTO posts (title, description, date, up_vote, down_vote, user_id)
VALUES ('Learning English',
        'Hello im penguin, how did you learn English? When did you started and whats level do you have?',
        '2019-02-15 07:10:52', 3, 0, 5),
       ('Apple', 'Is apple a cool company?', '2019-02-24 07:14:56', 0, 7, 9),
       ('British vs American', 'Differences between British and American English?', '2019-02-21 08:11:12', 2, 2, 4),
       ('In, On, At', 'When to use these words? Can someone explain it?', '2019-02-22 09:12:14', 5, 1, 3),
       ('Free time', 'What do you do in your free time?', '2019-02-23 06:13:55', 2, 5, 4);

INSERT INTO votes (post_id, user_id, date, type)
VALUES (1, 3, '2019-02-15 08:10:52', 'Y'),
       (1, 4, '2019-02-16 08:15:38', 'Y'),
       (1, 6, '2019-02-16 14:45:23', 'Y'),
       (2, 3, '2019-02-21 14:59:12', 'N'),
       (2, 4, '2019-02-22 20:11:03', 'N'),
       (2, 5, '2019-02-22 14:45:23', 'N'),
       (2, 6, '2019-02-22 20:00:07', 'N'),
       (2, 7, '2019-02-23 21:02:23', 'N'),
       (2, 8, '2019-02-24 22:22:07', 'N'),
       (2, 9, '2019-03-01 23:44:21', 'Y'),
       (3, 3, '2019-03-04 08:59:46', 'Y'),
       (3, 5, '2019-03-04 03:25:12', 'Y'),
       (3, 8, '2019-03-04 13:44:55', 'N'),
       (3, 9, '2019-03-05 03:10:12', 'N'),
       (4, 4, '2019-03-05 10:11:09', 'Y'),
       (4, 5, '2019-03-05 20:23:54', 'Y'),
       (4, 6, '2019-03-10 02:12:12', 'N'),
       (4, 7, '2019-03-11 09:54:21', 'Y'),
       (4, 8, '2019-03-11 15:17:13', 'Y'),
       (4, 9, '2019-03-11 16:30:15', 'Y'),
       (5, 3, '2019-03-15 17:20:45', 'N'),
       (5, 4, '2019-03-16 09:19:55', 'Y'),
       (5, 5, '2019-03-20 07:05:23', 'N'),
       (5, 6, '2019-03-21 12:04:29', 'Y'),
       (5, 7, '2019-03-22 22:22:30', 'N'),
       (5, 8, '2019-03-25 02:09:04', 'N'),
       (5, 9, '2019-03-27 23:11:59', 'N');

INSERT INTO comments (post_id, user_id, text, date)
VALUES (1, 3, 'Hi! I always wanted to meet u Mr. LinuX Torvalds! Tbh I learnt english by programming, peace!',
        '2019-02-15 08:12:44'),
       (1, 4,
        'Hello :) I learnt many languages like for ex. Polish, German and English by creating an internationalization
         app. If u want to see my app, type www.facebook.com in your browser :) Have a nice day guys!',
        '2019-02-16 08:20:12'),
       (1, 5, 'Yeah, but which english level have u got guys?', '2019-02-16 14:46:23'),
       (1, 3, 'Ive got a C1 level I think, but I want to have C2 as obvious :)', '2019-02-17 08:22:10'),
       (1, 4, 'Ive got a C2+ level because I was born in UK.', '2019-02-17 08:22:10');

INSERT INTO questions (id, question, answers, correct_answer_full_form, correct_answer_short_form)
VALUES (1 ,  'Whats ... name?', 'you:your:yours:yourse', 'your', 'b'),
       (2 ,  'He goes to his guitar lessons ...', 'by underground:on underground:with underground:in underground', 'by underground', 'a'),
       (3 ,  'We haven’t got ... Champagne', 'a lot:little:too:much', 'much', 'd'),
       (4 ,  'David is the boss, you need to speak to ...', 'it:him:her:them', 'him', 'b'),
       (5 ,  'She ... Supper with us last Friday', 'hadn’t:no had:didn’t have got:didn’t have', 'didn’t have', 'd'),
       (6 ,  'I haven’t got ...', 'no brothers or sisters:brothers or sisters:any brothers or sisters:some brothers and sisters', 'any brother or sisters', 'c'),
       (7 ,  'George ... fly to Stockholm tomorrow. ', 'to going:goes to:is going to:go to', 'is going to', 'c'),
       (8 ,  'I wanted an orange car, but they only had ...', 'a one red:one red:a red one:a red', 'a red one', 'c'),
       (9 ,  'Have you ...?', 'got any friends in Barcelona:not got no friends in Barcelona:in Barcelona any friends:friends in Barcelona got', 'got any friends in Barcelona', 'a'),
       (10,  'There is ... of beer left from the party', 'little:much:a lot:too', 'a lot', 'c'),
       (11,  'I’ve lost my passport. I can’t find it ...', 'anywhere:nowhere:everywhere:somewhere', 'anywhere', 'a'),
       (12,  'Michael ... Paris in the morning', 'to leaving:leaves for:is leaving for:leave to', 'is leaving for', 'c'),
       (13,  'They ... time for lunch', 'hadn’t:didn’t have:didn’t have got:had not', 'didn’t have', 'b'),
       (14,  'Suddenly, we heard a loud noise, but outside, there ... there!', 'was nobody:is anybody:wasn’t nobody:was somebody', 'was nobody', 'a'),
       (15,  'He says he’s been robbed. He can’t find his wallet ...', 'not anywhere:nowhere:anywhere:somewhere', 'anywhere', 'c'),
       (16,  'I haven’t got ...', 'no money:money:any money:some money', 'any money', 'c'),
       (17,  '... orange juice in the fridge', 'There isn’t no:There is any:There isn’t any:There aren’t no', 'There isn’t any', 'c'),
       (18,  'He ... breakfast yesterday', 'hadn’t:no had:didn’t have got:didn’t have', 'didn’t have', 'd'),
       (19,  'I have to go to the bank ... some money', 'for getting:to get:to getting:for to get', 'to get', 'b'),
       (20,  'I’ve lost my keys. I can’t find them ...', 'anywhere:nowhere:everywhere:somewhere', 'anywhere', 'a'),
       (21,  'We’ll never get to the airport! There is ... time!', 'few:too little:too much little:too few', 'too little', 'b'),
       (22,  'She arrived ... Victoria Station half an hour late.', 'in:at:on:by', 'at', 'b'),
       (23,  'There ... hooligans at the match, for a change', 'were no:weren’t no:were any:were not', 'were no', 'a'),
       (24,  'We’re really looking forward ... on holiday', 'to go:going:go:to going', 'to going', 'd'),
       (25,  'Don’t start ... That’s for babies!', 'to crying!:crying!:cry!:in crying!', 'crying!', 'b'),
       (26,  'Micheal ... in Paris since 1999', 'lives:is living:does live:has lived', 'has lived', 'd'),
       (27,  '“... have you been going out with him?” “Only a few months”', 'How long:How long time:What time:For how long', 'How long', 'a'),
       (28,  'They weren’t happy about the new cat, and frankly, nor ...', 'weren’t:wasn’t:were:was', 'was', 'd'),
       (29,  'She can’t escape the fire. There is ..... time!', 'much few:too much little:too little:too few', 'too little', 'c'),
       (30,  'We were surprised that there ... queues outside the cinema', 'were any:weren’t no:were no:were not', 'were no', 'c'),
       (31,  'You live upstairs from me, ...', 'do you?:are you?:don’t you?:didn’t you?', 'don’t you?', 'c'),
       (32,  'If I didn’t have to work, I ... the beach', 'will move to:have moved to:would move to:would have moved to', 'would move to', 'c'),
       (33,  'He arrived ... Heathrow airport on Friday morning', 'in:at:on:by', 'at', 'b'),
       (34,  'There ... spectators at the match', 'were no:weren’t no:were any:were not', 'were no', 'a'),
       (35,  'He’s looking forward ... that film.', 'to see:seeing:see:to seeing', 'to seeing', 'd'),
       (36,  'If I won the lottery, I ... a house in the country.', 'will buy:have bought:would buy:would have bought', 'would buy', 'c'),
       (37,  'They weren’t surprised and nor ... I.', 'weren’t:wasn’t:were:was', 'was', 'd'),
       (38,  'If you are in Madrid, you can come and visit me ... you like.', 'whenever:soon:always:whatever', 'whenever', 'a'),
       (39,  'I’m catching an early flight tomorrow, so I ... drink too much champagne!', 'needn’t:haven’t:mustn’t:have had to', 'mustn’t', 'c'),
       (40,  'His wedding is the ... of my problems! What about my car bills?', 'fewer:less:last:least', 'least', 'd'),
       (41,  'The good looking man ... by the door is my boyfriend.', 'whose:standing:is standing:stands', 'standing', 'b'),
       (42,  '"Those shopping bags look really heavy ... carry one for you? —“That’s very kind of you!”', 'Will I:Do I have:Shall I:Do I', 'Shall I', 'c'),
       (43,  'Don’t forget ... the rubbish.', 'to put out:putting out:to putting out:put out', 'to put out', 'a'),
       (44,  'I’ll never forget ... Rosa win the Eurovision.', 'see:to see:seeing:seen', 'seeing', 'c'),
       (45,  'In the beginning the street was noisy, but now I ... it.', 'used to:used:am used to:would', 'am used to', 'c'),
       (46,  'I wouldn’t mind ... an early night, tonight I’m exhausted!', 'to have:have:having:to having', 'having', 'c'),
       (47,  'When you come back, don’t forget ... the post.', 'pick up:picking up:to pick up:to picking up', 'to pick up', 'c'),
       (48,  'How long have you worked here? I don’t remember ... you before.', 'did meet:meeting:to meeting:to meet', 'meeting', 'b'),
       (49,  'That was a horrible thing to say. I think you ... apologise.', 'need:have:should have:ought to', 'ought to', 'd'),
       (50,  'You can meet me ... you like.', 'whenever:soon:always:whatever', 'whenever', 'a'),
       (51,  'I ... working at night nowadays.', 'used to:used:am used to:would', 'am used to', 'c'),
       (52,  'I have to catch the 5.00 am train tomorrow, so I ... go to bed early.', 'needn’t:haven’t:have to:have had to', 'have to', 'c'),
       (53,  'I wouldn’t mind ... tonight.', 'to go out:go out:going out:to going out', 'going out', 'c'),
       (54,  'I thought you ...', 'will come to the party.:were coming to the party.:come to the party.:have come to the party.', 'were coming to the party.', 'b'),
       (55,  'It was really difficult, but eventually he ... get tickets for the match.', 'was able to:can:could:would can', 'was able to', 'a'),
       (56,  'I wouldn’t do that if I ... you.', 'am:have been:were:would be', 'were', 'c'),
       (57,  '... that I knew what he was up to.', 'Little did he know:Little known:Little he knew:Little knowing', 'Little did he know', 'a'),
       (58,  'It’s a pity you didn’t come to the Exhibition. You ... It.', 'would like:had liked:would have liked:will like', 'would have liked', 'c'),
       (59,  'I’m sorry for his bad behaviour. He ... have apologised.', 'must:may:would:should', 'should', 'd'),
       (60,  'What an amazing holiday! We should have done this ...', 'years back:for years:since years:in years', 'years back', 'a'),
       (61,  'Although it was very late, she ... book two tickets to Greece.', 'should:can:was able to:would can', 'was able to', 'c'),
       (62,  'If I ... going to enter the competition, I would have done by now.', 'am:were:would be:would been', 'were', 'b'),
       (63,  'David walked by us ... he didn’t know us!', 'like:as if he were:as if:as', 'as if', 'c'),
       (64,  'My mother was expecting me on Friday, but ... I was arriving on Thursday.', 'little did she know:little known:little he knew:little knowing', 'little did she know', 'a'),
       (65,  'It would be lovely to go to Japan, but ... thinking we can.', 'there is no use:it is no point:it is no use:it is usefulness', 'it is no use', 'c'),
       (66,  'He drove so fast ... a mad man.', 'as if:as if he were:like:as', 'as if he were', 'b'),
       (67,  '... but I realised what he had done.', 'Little did he know:Little known:Little he knew:Little knowing', 'Little did he know', 'a'),
       (68,  'He wrote the programme ..., he didn’t need anybody’s help.', 'by his own:on his own:on himself:by his ownership', 'on his own', 'b'),
       (69,  '... waiting any longer. They are clearly not coming.', 'There is no use:It is no point:It is no use:It is usefulness', 'There is no use', 'a'),
       (70,  '“We’ll never be able to do it” said the man to nobody ...', 'especially:specially:in particular:himself', 'in particular', 'c'),
       (71,  'The milk is ... the refrigerator.', 'to:of:at:in', 'in', 'd'),
       (72,  'What hours ... ?', 'work you normally:are you normally working:you work normally:do you normally work', 'do you normally work', 'd'),
       (73,  'The Kowalskis have always ... the same doctor.', 'gone to:saw:been:going to', 'gone to', 'a'),
       (74,  'It was really nice ... you to invite me.', 'for:to:with:of', 'of', 'd'),
       (75,  'The house has been ... the market for a while.', 'by:to:on:in', 'on', 'c'),
       (76,  'I’m not very good ... maths.', 'with:on:at:for', 'at', 'c'),
       (77,  'You are ... no obligation to go.', 'to:with:under:on', 'under', 'c'),
       (78,  'He is ... charge of the whole department.', 'at:in:on:to', 'in', 'b'),
       (79,  'Robert is an authority ... English literature.', 'in:on:over:at', 'on', 'b'),
       (80,  'You must be responsible ... your decisions.', 'of:to:by:for', 'for', 'd'),
       (81,  'I’m very concerned ... his smoking.', 'against:with:about:for', 'about', 'c'),
       (82,  'Could you deal ... this problem later, please?', 'for:with:from:on', 'with', 'b'),
       (83,  'I want to protest ... the state of the building.', 'over:on:about:of', 'about', 'c'),
       (84,  'People were amazed that the burglary took place in ... daylight.', 'wide:broad:large:open', 'broad', 'b'),
       (85,  'She invested a lot of time ... researching the most appropriate university course.', 'to:for:with:in', 'in', 'd'),
       (86,  'The police claimed that they acted in self - ...', 'interest:confidence:defence:discipline', 'defence', 'c'),
       (87,  'I ... remember putting my briefcase down on that shelf.', 'deeply:entirely:clearly:strongly', 'clearly', 'c'),
       (88,  'He turned ... to be considerably older than I had imagined.', 'over:up:out:round', 'out', 'c'),
       (89,  'The windows in this house are in urgent ... of replacement.', 'need:help:want:demand', 'need', 'a'),
       (90,  'Speed cameras ... shown to reduce accidents.', 'have:were being:have been:are being', 'have been', 'c'),
       (91,  'Life is a ... deal easier for immigrants who can speak the local language.', 'far:huge:big:great', 'great', 'd'),
       (92,  'The experiment ... testing people’s responses before and after drinking coffee.', 'contained:incorporated:involved:consisted', 'involved', 'c'),
       (93,  'We may be a bit late. We’re ... in a traffic jam.', 'buried:stuck:blocked:surrounde', 'stuck', 'b'),
       (94,  'Having ... his driving test several times, Paul finally passed at the fourth attempt.', 'taken:made:had:attended', 'taken', 'a'),
       (95,  'Gospel music has been a major influence ... other musical styles, especially soul.', 'with:to:about:on', 'on', 'd'),
       (96,  'Maintaining an accurate balance sheet is essential, ... business you’re in.', 'however:wherever:whatever:whenever', 'whatever', 'c'),
       (97,  'It’s ... likely that this novel will win a literary prize.', 'totally:deeply:strongly:highly', 'highly', 'd'),
       (98,  'It’s no ... for me to get Brad’s phone number - I’ll be seeing him tonight.', 'point:wonder:secret:problem', 'problem', 'd'),
       (99,  'I’d lived in Australia, so I was used to ... on the left side of the road.', 'driving:drive:having driven:drove', 'driving', 'a'),
       (100, 'I don’t think the colours in Julia’s outfit ... together.', 'fit:suit:match:go', 'go', 'd'),
       (101, 'Very rarely ... here in July', 'it rains:does it rain:is it raining:is it raining', 'does it rain', 'b'),
       (102, 'I prefer to buy CD’s ... download music from my computer.', 'in contrast to:as opposed to:rather than:in comparison to', 'rather than', 'c'),
       (103, 'The number of turtles on the island ... by 70% over the last decade.', 'has declined:has been declining:has been declined:is declining', 'has declined', 'a');

INSERT INTO oponents (my_answers, answers_status, gained_xp, result, user_id)
VALUES ('b:a:c:b:a', '1:1:0:1:0', '60', 'WIN', 5),
       ('d:a:b:c:a', '0:1:0:0:0', '15', 'LOSE', 6),
       ('b:d:d:c:a', '1:1:1:1:1', NULL, 'NONE', 6),
       (NULL, NULL, NULL, 'NONE', 5);

INSERT INTO challenges (attacker_id, defender_id, date_of_creation, status)
VALUES (1, 2, '2019-04-17 18:35:52', 'COMPLETED'),
       (3, 4, '2019-04-17 19:21:52', 'PENDING');

INSERT INTO challenges_questions (challenge_id, questions_id)
VALUES (1, 1),
       (1, 2),
       (1, 3),
       (1, 4),
       (1, 5),
       (2, 1),
       (2, 3),
       (2, 5),
       (2, 7),
       (2, 9);
