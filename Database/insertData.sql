USE Tiki;

USE Tiki;
INSERT INTO slides (img, caption, content)
VALUES ('slide_1.jpg', 'Fantasy and sci-fi novels', 'Best of Duncan M. Hamilton');
INSERT INTO slides (img, caption, content)
VALUES ('slide_2.jpg', 'Naturals book', 'Best selling');
INSERT INTO slides (img, caption, content)
VALUES ('slide_3.jpg', 'Comics for children', 'Best of Comics');
INSERT INTO slides (img, caption, content)
VALUES ('slide_4.jpg', 'Rise of the Shadow Dragons', 'Best of Liz Flanagan');
INSERT INTO slides (img, caption, content)
VALUES ('slide_5.jpg', 'Exciting New Reads!', 'Best of Penguin');



USE Tiki;
INSERT INTO category (id, name, description)
VALUES ('AaA', 'Action and Adventure', 'Action and adventure books constantly have you on the edge of your seat with excitement, as your fave main character repeatedly finds themselves in high stakes situations. The protagonist has an ultimate goal to achieve and is always put in risky, often dangerous situations. This genre typically crosses over with others like mystery, crime, sci-fi, and fantasy.');
INSERT INTO category (id, name, description)
VALUES ('DaM', 'Detective and Mystery', 'The plot always revolves around a crime of sorts that must be solved—or foiled—by the protagonists.');
INSERT INTO category (id, name, description)
VALUES ('Hor', 'Horror', 'Meant to cause discomfort and fear for both the character and readers, horror writers often make use of supernatural and paranormal elements in morbid stories that are sometimes a little too realistic. The master of horror fiction? None other than Stephen King.');
INSERT INTO category (id, name, description)
VALUES ('Rom', 'Romance', 'Oh romance, how could we ever resist you? The genre that makes your heart all warm and fuzzy focuses on the love story of the main protagonists. This world of fiction is extremely wide-reaching in and of itself, as it has a variety of sub-genres including: contemporary romance, historical, paranormal, and the steamier erotica.');
INSERT INTO category (id, name, description)
VALUES ('SoS', 'Short Stories', 'Though they encompass many of the genres we describe here, short stories are brief prose that are significantly, well, shorter than novels. Writers strictly tell their narratives through a specific theme and a series of brief scenes, though many authors compile these stories in wide-ranging collections, as featured below.');
INSERT INTO category (id, name, description)
VALUES ('Cook', 'Cookbooks', 'Traditionally penned by professional chefs or even your favorite celebs, cookbooks offer an appetizing collection of recipes, specific to a theme, cuisine, or experience chosen by the author.');
INSERT INTO category (id, name, description)
VALUES ('His', 'History', 'These books chronicle and layout a specific moment in time, with a goal to educate and inform the reader, looking at all parts of the world at any given moment.');
INSERT INTO category (id, name, description)
VALUES ('Mem', 'Memoir', 'While a form of autobiography, memoirs are more flexible in that they typically don\'t feature an extensive chronological account of the writer\'s life. Instead, they focus on key moments and scenes that communicate a specific message or lesson to the reader about the author.');
INSERT INTO category (id, name, description)
VALUES ('Poe', 'Poetry', 'With poetry—a form of written art—authors choose a particular rhythm and style to evoke and portray various emotions and ideas. Sometimes the message is clear (like a straight-forward love poem) while with others, the meaning is hidden behind a play on words—it all depends on the writer\'s style, intent, and chosen theme.');
INSERT INTO category (id, name, description)
VALUES ('Shp', 'Self-Help', 'Whether the focus is on emotional well-being, finances, or spirituality, self-help books center on encouraging personal improvement and confidence in a variety of facets of your life.');


USE Tiki;

-- Catefory Action and Adventure
INSERT INTO products (id_category, name, author, imprint, published_date, isbn, lengths, dimensions, weight, price, highlight, new_product, image, description, detail)
VALUES ('AaA', 'Tom Clancy\'s Oath of Office', 'Marc Cameron', 'Peguin', '2019-10-17 00:00:00', '9781405935470', 544, '198mm x 32mm x 129mm', 373, 7.99, true, true, 'tomclancy.jpg','A GRIPPING THRILLER IN TOM CLANCY\'S INTERNATIONALLY BESTSELLING JACK RYAN SERIES - INSPIRATION FOR THE BLOCKBUSTER AMAZON PRIME TELEVISION SERIES.', 
'As the Kremlin orders troops to mass on the Ukrainian border, a Russian plane carrying nukes disappears mid-flight. 

For US President Jack Ryan this means attempting to defuse a war on Europe\'s flanks before it engulfs the whole continent. 

For his son, Campus secret agent Jack Jr, finding the nukes means covertly heading to the heart of the Middle East where militants seek to bring America to its knees. 

As East-West tensions escalate, tying the hands of President and son alike, both race against time to stop a weapon ending the world as we know it . . .');

INSERT INTO products (id_category, name, author, imprint, published_date, isbn, lengths, dimensions, weight, price, highlight, new_product, image, description, detail)
VALUES ('AaA', 'Black Sun', 'Owen Matthews', 'Bantam Press', '2019-10-03 00:00:00', '9781787631823', 336, '240mm x 32mm x 162mm', 555, 16.99, false, false, 'blacksun.jpg','\'One of the best thrillers of recent years . . . a tour-de-force. It drips with authenticity from every page . . . a page-turning, thumping good read.\' DAVID YOUNG, bestselling author of Stasi Child', 
'1961. Hidden deep within the forests of central Soviet Russia is a place that doesn’t appear on any map: a city called Arzamas-16. Here a community of dedicated scientists, technicians and engineers are building the most powerful nuclear device the world will ever see – three thousand times more powerful than Hiroshima.

But ten days before the bomb is to be tested, a young physicist is found dead. His body contains enough radioactive poison to kill thousands. The Arzamas authorities believe it is suicide – they want the corpse disposed of and the incident forgotten. But someone in Moscow is alarmed by what’s going on in this strange, isolated place.

And so Major Alexander Vasin – a mostly good KGB officer – is despatched to Arzamas to investigate. What he finds there is unlike anything he’s experienced before. His wits will be tested against some of the most brilliant minds in the Soviet Union – eccentrics, patriots and dissidents who, because their work is considered to be of such vital national importance, have been granted the freedom to think and act, live and love as they wish. In Arzamas, nothing can be allowed to get in the way of the project. Not even murder . . .

Intricately researched, cunningly plotted and brilliantly told, Black Sun is a fast-paced and timely thriller set at the height – and in the heart – of Soviet power.');

INSERT INTO products (id_category, name, author, imprint, published_date, isbn, lengths, dimensions, weight, price, highlight, new_product, image, description, detail)
VALUES ('AaA', 'Origin', 'Dan Brown', 'Corgi', '2018-07-12 00:00:00', '9780552174169', 560, '198mm x 33mm x 127mm', 378, 8.99, false, false, 'origin.jpg','The global bestseller - Origin is the latest Robert Langdon novel from the author of The Da Vinci Code.', 'Robert Langdon, Harvard professor of symbology and religious iconology, arrives at the Guggenheim Museum Bilbao to attend the unveiling of an astonishing scientific breakthrough. The evening’s host is billionaire Edmond Kirsch, a futurist whose dazzling high-tech inventions and audacious predictions have made him a controversial figure around the world.

But Langdon and several hundred guests are left reeling when the meticulously orchestrated evening is suddenly blown apart. There is a real danger that Kirsch’s precious discovery may be lost in the ensuing chaos. With his life under threat, Langdon is forced into a desperate bid to escape Bilbao, taking with him the museum’s director, Ambra Vidal. Together they flee to Barcelona on a perilous quest to locate a cryptic password that will unlock Kirsch’s secret.

To evade a devious enemy who is one step ahead of them at every turn, Langdon and Vidal must navigate the labyrinthine passageways of extreme religion and hidden history. On a trail marked only by enigmatic symbols and elusive modern art, Langdon and Vidal will come face-to-face with a breathtaking truth that has remained buried – until now.');

INSERT INTO products (id_category, name, author, imprint, published_date, isbn, lengths, dimensions, weight, price, highlight, new_product, image, description, detail)
VALUES ('AaA', 'Jurassic Park', 'Michael Crichton', 'Arrow', '2015-05-21 00:00:00', '9781784752224', 480, '198mm x 30mm x 129mm', 330, 8.99, false, false, 'jurassicpark.jpg','Before seeing Jurassic World film this June read the original, multimillion copy No. 1 bestselling thriller that inspired the first major motion picture Jurassic Park.', 
'On a remote jungle island, genetic engineers have created a dinosaur game park.

An astonishing technique for recovering and cloning dinosaur DNA has been discovered. Now one of mankind\'s most thrilling fantasies has come true and the first dinosaurs that the Earth has seen in the time of man emerge.

But, as always, there is a dark side to the fantasy and after a catastrophe destroys the park\'s defence systems, the scientists and tourists are left fighting for survival...

With this masterful cross of science fiction and action-adventure, Michael Crichton created one of the biggest bestsellers of all time, turned by Steven Spielberg into the highest grossing blockbuster ever in 1993.');

INSERT INTO products (id_category, name, author, imprint, published_date, isbn, lengths, dimensions, weight, price, highlight, new_product, image, description, detail)
VALUES ('AaA', 'The Da Vinci Code', 'Dan Brown', 'Corgi', '2009-08-28 00:00:00', '9780552159715', 592, '198mm x 37mm x 127mm', 339, 8.99, false, false, 'codedavinci.jpg','The Da Vinci Code is a 2006 American mystery thriller film directed by Ron Howard, written by Akiva Goldsman, and based on Dan Brown\'s 2003 novel of the ...', 
'Harvard professor Robert Langdon receives an urgent late-night phone call while on business in Paris: the elderly curator of the Louvre has been brutally murdered inside the museum. Alongside the body, police have found a series of baffling codes.

As Langdon and a gifted French cryptologist, Sophie Neveu, begin to sort through the bizarre riddles, they are stunned to find a trail that leads to the works of Leonardo Da Vinci - and suggests the answer to a mystery that stretches deep into the vault of history.

Unless Langdon and Neveu can decipher the labyrinthine code and quickly assemble the pieces of the puzzle, a stunning historical truth will be lost forever...');

-- Category Detective and Mystery
INSERT INTO products (id_category, name, author, imprint, published_date, isbn, lengths, dimensions, weight, price, highlight, new_product, image, description, detail)
VALUES ('DaM', 'Big Sky', 'Kate Atkison', 'Transworl Digital', '2019-06-18 00:00:00', '9781409043850', 496, '198mm x 30mm x 129mm', 337, 8.99, true, true, 'bigsky.jpg','The stand-out read of the summer. It\'s a masterclass in brilliant writing and whether you\'ve read the earlier books in the series or not, you\'ll enjoy it.', 
'Jackson Brodie has relocated to a quiet seaside village in North Yorkshire, in the occasional company of his recalcitrant teenage son Nathan and ageing Labrador Dido, both at the discretion of his former partner Julia. It\'s a picturesque setting, but there\'s something darker lurking behind the scenes.

Jackson\'s current job, gathering proof of an unfaithful husband for his suspicious wife, seems straightforward, but a chance encounter with a desperate man on a crumbling cliff leads him into a sinister network-and back into the path of someone from his past. Old secrets and new lies intersect in this breathtaking new literary crime novel, both sharply funny and achingly sad, by one of the most dazzling and surprising writers at work today.');

INSERT INTO products (id_category, name, author, imprint, published_date, isbn, lengths, dimensions, weight, price, highlight, new_product, image, description, detail)
VALUES ('DaM', 'Maigret and the Killer', 'Georges Simenon', 'Penguin Classics', '2019-08-01 00:00:00', '9780241304266', 192, '198mm x 11mm x 129mm', 145, 8.99, false, false, 'maigret.jpg','\'The father of contemporary European detective fiction\' Ann Cleeves', 
'\'Leaning on the banisters, Madame Maigret watched her husband going heavily downstairs . . . what the newspapers didn\'t know was how much energy he put into trying to understand, how much he concentrated during certain investigations. It was as if he identified with the people he was hunting and suffered the same torments as they did.\'

A young man is found dead, clutching his tape recorder, just streets away from Maigret\'s home, leading the inspector on a disturbing trail into the mind of a killer.

\'His artistry is supreme\' John Banville

\'One of the greatest writers of the twentieth century\' Guardian');

INSERT INTO products (id_category, name, author, imprint, published_date, isbn, lengths, dimensions, weight, price, highlight, new_product, image, description, detail)
VALUES ('DaM', 'The Good Liar', 'Nicholas Searle', 'Penguin', '2015-12-31 00:00:00', '9780241973288', 496, '198mm x 32mm x 129mm', 368, 8.99, false, false, 'goodliar.jpg','This is a life told back to front. This is a man who has lied all his life.', 
'Roy is a conman living in a leafy English suburb, about to pull off the final coup of his career. He is going to meet and woo a beautiful woman and slip away with her life savings.

But who is the man behind the con and what has he had to do to survive this life of lies?

And why is this beautiful woman so willing to be his next victim?');

INSERT INTO products (id_category, name, author, imprint, published_date, isbn, lengths, dimensions, weight, price, highlight, new_product, image, description, detail)
VALUES ('DaM', 'The Seventh Test', 'Vikas Swarup', 'BBC Digital Audio', '2021-10-21 00:00:00', '9781409043850', 367, '198mm x 31mm x 129mm', 337, 8.99, false, true, 'seventhtest.jpg','A ten-part dramatisation of the bestselling thriller by Slumdog Millionaire author Vikas Swarup', 
'Sapna Sinha is a sales assistant in a TV showroom in New Delhi. As the sole breadwinner in the family, she works hard to support her widowed mother and younger sister Neha. Then billionaire Vinay Mohan Acharya walks into her life and offers to make her the CEO of his global empire. All she has to do is pass seven tests - rites of passage, designed to gauge her mettle as a leader.

It seems too good to be true, and Sapna is sceptical. But, in desperate need of money, she signs the contract that will subject her to the series of \'life tests\'. She has no idea what they will be, or when they will come, but if she gets through them, her life will change forever.

And change it does - though not in a way she could ever have predicted. As the consequences of her Faustian pact become clear, it seems there is no escape. Only by revisiting her past can she make sense of her present: but nothing can prepare her for what she finds there...

Dramatised by award-winning authors Ayeesha Menon and John Dryden, this gripping, suspenseful drama with a twist in the tale stars Rasika Dugal as Sapna and Vijay Chrishna as Acharya.');

INSERT INTO products (id_category, name, author, imprint, published_date, isbn, lengths, dimensions, weight, price, highlight, new_product, image, description, detail)
VALUES ('DaM', 'The Russian Gambler', 'Fyodor Dostoevsky', 'BBC Digital Audio', '2021-10-21 00:00:00', '9781529187564', 500, '198mm x 37mm x 129mm', 680, 9.00, false, true, 'russiangambler.jpg','Ed Stoppard stars as obsessive pianist Alexei in this modern-day take on Dostoevsky\'s classic The Gambler', 
'When brilliant but penniless pianist Alexei is hired to tutor the 10-year-old daughter of Russian oligarch Mikhail, he is drawn into a world of chance, obsession and violence. Hopelessly infatuated with Mikhail\'s beautiful stepdaughter Polina, he vows to do anything to win her love: and so begins his involvement in a dangerous, high-stakes game...

Seduced by the lure of the roulette wheel, and embroiled in the complications and machinations of Polina and her family, Alexei\'s life takes a dark turn. The unexpected arrival of Mikhail\'s mother Anastasia from Russia offers hope of rescue from financial ruin: but an obsession with risk-taking threatens to destroy everything...');

-- Category Horror

INSERT INTO products (id_category, name, author, imprint, published_date, isbn, lengths, dimensions, weight, price, highlight, new_product, image, description, detail)
VALUES ('Hor', 'The Book of Accidents', 'Chuck Wendig', 'Del Rey', '2021-07-20 00:00:00', '9781529101072', 544, '240mm x 46mm x 162mm', 798, 16.99, true, true, 'bookaccidents.jpg','A family returns to their hometown - and to the dark past that haunts them still - in this masterpiece of literary horror by the New York Times bestselling author of Wanderers', 
'When Nate\'s father dies, he leaves behind a final gift for his son: his childhood home. Married now, Nate decides to move in with his wife, Maddie, and their son, Oliver, seeking peace from the chaos of the city.

But it doesn\'t take long before things get strange in the night and even stranger by day.

Because Nate was a child being abused by his father, and has never told his family. Because Maddie was a little girl who saw something she shouldn\'t have. Because something sinister, something hungry, walks in the tunnels and the mountains and the coal mines of this town in rural Pennsylvania...

And now, what happened all those years ago is happening again, and this time, it is happening to Oliver. When he meets a strange boy with secrets of his own and a taste for dark magic, he has no idea that what comes next will put his family at the heart of a battle of good versus evil.');

INSERT INTO products (id_category, name, author, imprint, published_date, isbn, lengths, dimensions, weight, price, highlight, new_product, image, description, detail)
VALUES ('Hor', 'The Year of the Witching', 'Alexis Henderson', 'Corgi', '2021-09-30 00:00:00', '9780552176682', 368, '202mm x 21mm x 126mm', 250, 8.99, false, false, 'yearofwitching.jpg','\'Thrillingly brisk and bracing . . . it takes the best tropes of horror and witchcraft and gives them a refreshingly feminist twist.\'', 
'Born on the fringes of Bethel, Immanuelle does her best to obey the Church and follow Holy Protocol. For it was in Bethel that the first Prophet pursued and killed four powerful witches, and so cleansed the land.

And then a chance encounter lures her into the Darkwood that surrounds Bethel.

It is a forbidden place, haunted by the spirits of the witches who bestow an extraordinary gift on Immanuelle. The diary of her dead mother . . .

Fascinated by and fearful of the secrets the diary reveals, Immanuelle begins to understand why her mother once consorted with witches. And as the truth about the Prophets, the Church and their history is revealed, so Immanuelle understands what must be done. For the real threat to Bethel is its own darkness.
');

INSERT INTO products (id_category, name, author, imprint, published_date, isbn, lengths, dimensions, weight, price, highlight, new_product, image, description, detail)
VALUES ('Hor', 'Pine', 'Francine Toon', 'Black Swan Ireland', '2020-10-01 00:00:00', '9781784164829', 336, '200mm x 25mm x 130mm', 230, 8.99, false, false, 'pine.jpg','They are driving home from the search party when they see her. The trees are coarse and tall in the winter light, standing like men.', 
'Lauren and her father Niall live alone in the Highlands, in a small village surrounded by pine forest. When a woman stumbles out onto the road one Halloween night, Niall drives her back to their house in his pickup. In the morning, she\'s gone.

In a community where daughters rebel, men quietly rage, and drinking is a means of forgetting, mysteries like these are not out of the ordinary. The trapper found hanging with the dead animals for two weeks. Locked doors and stone circles. The disappearance of Lauren\'s mother a decade ago.

Lauren looks for answers in her tarot cards, hoping she might one day be able to read her father\'s turbulent mind. Neighbours know more than they let on, but when local teenager Ann-Marie goes missing it\'s no longer clear who she can trust.

In the shadow of the Highland forest, Francine Toon captures the wildness of rural childhood and the intensity of small-town claustrophobia. In a place that can feel like the edge of the word, she unites the chill of the modern gothic with the pulse of a thriller. It is the perfect novel for our haunted times.');

INSERT INTO products (id_category, name, author, imprint, published_date, isbn, lengths, dimensions, weight, price, highlight, new_product, image, description, detail)
VALUES ('Hor', 'The Greatcoat', 'Helen Dunmore', 'Windmill Books', '2021-01-14 00:00:00', '9781786091345', 272, '198mm x 17mm x 128mm', 194, 8.99, false, false, 'greatcoat.jpg','In the winter of 1952, Isabel Carey moves to the East Riding of Yorkshire with her husband Philip, a GP. With Philip spending long hours on call, Isabel finds herself isolated and lonely as she strives to adjust to the realities of married life.', 
'Woken by intense cold one night, she discovers an old RAF greatcoat hidden in the back of a cupboard. Sleeping under it for warmth, she starts to dream. And not long afterwards, while her husband is out, she is startled by a knock at her window.

Outside is a young RAF pilot, waiting to come in.

His name is Alec, and his powerful presence both disturbs and excites her. Her initial alarm soon fades, and they begin an intense affair. But nothing has prepared her for the truth about Alec\'s life, nor the impact it will have on hers ...');

INSERT INTO products (id_category, name, author, imprint, published_date, isbn, lengths, dimensions, weight, price, highlight, new_product, image, description, detail)
VALUES ('Hor', 'Death in Her Hands', 'Ottessa Moshfegh', 'Vintage', '2021-05-13 00:00:00', '9781529112344', 272, '198mm x 17mm x 129mm', 191, 8.99, false, false, 'deathinherhands.jpg','\'This is a story about what might happen when a woman takes charge... A glorious visceral mystery\'', 
'While on her daily walk with her dog in the woods near her home, Vesta comes across a chilling handwritten note. Her name was Magda. Nobody will ever know who killed her. It wasn\'t me. Here is her dead body.

Shaky even on her best days, Vesta is also alone, and new to the area, having moved here after the death of her husband. Her brooding about the note grows quickly into a full-blown obsession: who was Magda and how did she meet her fate?');

-- Category Romance
INSERT INTO products (id_category, name, author, imprint, published_date, isbn, lengths, dimensions, weight, price, highlight, new_product, image, description, detail)
VALUES ('Rom', 'Mix Tape', 'Jane Sanderson', 'Black Swan', '2020-09-17 00:00:00', '9781784164850', 416, '198mm x 27mm x 128mm', 289, 7.99, true, true, 'mixtape.jpg','You never forget the one that got away.', 
'Daniel was the first boy to make Alison a mix tape.

But that was years ago and Ali hasn’t thought about him in a very long time. Even if she had, she might not have called him ‘the one that got away’; after all, she’d been the one to run.

Then Dan’s name pops up on her phone, with a link to a song from their shared past.

For two blissful minutes, Alison is no longer an adult in Adelaide with temperamental daughters; she is sixteen in Sheffield, dancing in her skin-tight jeans. She cannot help but respond in kind.

And so begins a new mix tape.

Ali and Dan exchange songs – some new, some old – across oceans and time zones, across a lifetime of different experiences, until one of them breaks the rules and sends a message that will change everything…');

INSERT INTO products (id_category, name, author, imprint, published_date, isbn, lengths, dimensions, weight, price, highlight, new_product, image, description, detail)
VALUES ('Rom', 'Just Like You', 'Nick Hornby', 'Viking', '2020-09-17 00:00:00', '9780241338551', 320, '222mm x 31mm x 144mm', 437, 16.99, false, false, 'justlikeyou.jpg','Lucy married just the sort of man you might expect: a university graduate who runs his own business. Unfortunately he turned out to have serious dependency issues.', 
'On an average Saturday morning in a butcher\'s shop in North London, Lucy and Joseph meet on opposite sides of the counter. She is a teacher and mother of two, with a past she is trying to forget; he is an aspiring DJ with a wide-open future that maybe needs to start becoming more focused. Lucy and Joseph are opposites in almost all ways. Can something life-changing grow from uncommon ground?

Nick Hornby\'s brilliantly observed, tender and brutally funny new novel gets to the heart of what it means to fall headlong in love with the best possible person - someone who may not be just like you at all.');

INSERT INTO products (id_category, name, author, imprint, published_date, isbn, lengths, dimensions, weight, price, highlight, new_product, image, description, detail)
VALUES ('Rom', 'A Love Story for Bewildered Girls', 'Emma Morgan', 'Penguin', '2020-08-13 00:00:00', '9780241984680', 272, '198mm x 17mm x 129mm', 191, 8.99, false, false, 'lovestory.jpg','An utterly gorgeous novel. It will forever hold my heart in its pages\' Pandora Sykes, co-host of The High-Low podcast. Grace loves a woman. Annie loves a man. Violet isn\'t quite sure. But you\'ll love them all...', 
'Grace has what one might call a \'full and interesting life\' which is code for not married and has no kids. Her life is the envy of her straight friends, but all this time she has been waiting in secret for love to hit her so hard that she runs out of breath, like the way a wave in a rough sea bowls you over, slams you into the sand, and nearly drowns you.

When Grace meets a beautiful woman at a party, she falls suddenly and desperately in love. At the same party, lawyer Annie meets the man of her dreams - the only man she\'s ever met whose table manners are up to her mother\'s standards. And across the city, Violet, who is afraid of almost everything, is making another discovery of her own: that for the first time in her life she\'s falling in love with a woman.

A Love Story for Bewildered Girls is a moving and exquisitely funny novel about love, sex and heartbreak.');

INSERT INTO products (id_category, name, author, imprint, published_date, isbn, lengths, dimensions, weight, price, highlight, new_product, image, description, detail)
VALUES ('Rom', 'Live a Little', 'Howard Jacobson', 'Vintage', '2020-08-06 00:00:00', '9781529110555', 288, '198mm x 129mm x 129mm', 202, 8.99, false, false, 'livelittle.jpg','A wickedly observed novel about falling in love at the end of your life, by the Man Booker Prize-winning author of The Finkler Question.', 
'At the age of ninety-something, Beryl Dusinbery is forgetting everything – including her own children. She spends her days stitching morbid samplers and tormenting her two carers with tangled tales of her husbands and affairs.

Shimi Carmelli can do up his own buttons, walks without a frame and speaks without spitting. Among the widows of North London, he’s whispered about as the last of the eligible bachelors. He forgets nothing –especially not the shame of a childhood incident that has long hung over him. There\'s very little left remaining for either of them. . . But perhaps just enough to heal some of the hurt inflicted along the way, and find new meaning in what\'s left.');

INSERT INTO products (id_category, name, author, imprint, published_date, isbn, lengths, dimensions, weight, price, highlight, new_product, image, description, detail)
VALUES ('Rom', 'The Giver of Stars', 'Jojo Moyes', 'Penguin', '2020-07-23 00:00:00', '9780718183219', 448, '198mm x 27mm x 129mm', 310, 8.99, false, false, 'giverstars.jpg','A spellbinding story of love, community and the power of reading from the author of The Last Letter from Your Lover, now a major motion picture, and Me Before You, the worldwide bestseller', 
'Alice Wright doesn\'t love her new American husband.

Nor her domineering father-in-law or the judgmental townsfolk of Baileyville, Kentucky.

Stifled and misunderstood, she yearns for escape and finds it in defiant Margery O\'Hare and the sisterhood bringing books to the isolated and vulnerable.

But when her father-in-law and the town turn against them, Alice fears the freedom, friendship and the new love she\'s found will be lost . . .');

-- Category Short Stories
INSERT INTO products (id_category, name, author, imprint, published_date, isbn, lengths, dimensions, weight, price, highlight, new_product, image, description, detail)
VALUES ('SoS', 'Going To Meet The Man', 'James Baldwin', 'Penguin Classics', '1991-07-25 00:00:00', '9780140184495', 256, '198mm x 15mm x 129mm', 220, 12.00, false, false, 'meettheman.jpg','\'Few, it seems to me, have driven their words with such passion\'', 
'How our earliest experiences can shape our destiny is the theme that runs like a thread of revelation through these extraordinary stories. They explore the roots of love, of murder and of racial conflict, from the child in \'The Rockpile\' who can never be forgiven by his God-fearing father for his illegitimacy to the loneliness of a young black girl in love with a white man who, she knows, will leave her in \'Come Out of the Wilderness\' and the horrifying story of the initiation of a racist as a man remembers his parents taking him to see the mutilation and murder of a black man in \'Going to Meet the Man\'. In them Baldwin unlocks the concepts of history and prejudice and probes beneath the skin to the soul.');

INSERT INTO products (id_category, name, author, imprint, published_date, isbn, lengths, dimensions, weight, price, highlight, new_product, image, description, detail)
VALUES ('SoS', 'Love is Power or Something Like That', 'A. Igoni Barrett', 'Chatto & Windus', '2013-07-04 00:00:00', '9780701187392', 224, '216mm x 17mm x 135mm', 227, 16.99, false, false, 'loveispower.jpg','Where sex is a currency, or a weapon. Where power ends in corruption, or violence. Where the worst thing to happen is for the best, sometimes. Where love is power, or something like that.', 
'In these nine blistering stories cavort jealous husbands, kissing cousins, teenage internet hustlers, democratic bus rides, home exorcisms and bowls of dubious catfish peppersoup: this is a searing, savage portrait of an utterly modern Nigeria.

Dark yet disarming, in prose that is tough, vigorous and immediately distinctive, Love is Power, Or Something Like That is a phenomenal short story collection from a palpably talented new writer.');

INSERT INTO products (id_category, name, author, imprint, published_date, isbn, lengths, dimensions, weight, price, highlight, new_product, image, description, detail)
VALUES ('SoS', 'Sixty Stories', 'David Gates', 'Penguin Classics', '2005-04-07 00:00:00', '9780141180939', 480, '198mm x 21mm x 129mm', 330, 14.99, false, false, 'sixtystories.jpg','Each Month Choose One Premium Title, Yours To Keep + Stream Podcasts, Audiobooks & More! You\'ll Always Be In The Know With Audible\'s Unmatched Selection of Audio Entertainment. Fan Favorite Titles. Exclusive Series. Listens for Every Moment.', 
'This excellent collection of Donald Barthelme\'s literary output during the 1960s and 1970s covers the period when the writer came to prominence--producing the stories, satires, parodies, and other formal experiments that altered fiction as we know it--and wrote many of the most beautiful sentences in the English language. Due to the unfortunate discontinuance of many of Barthelme\'s titles, 60 Stories now stands as one of the broadest overviews of his work, containing selections from eight previously published books, as well as a number of other short works that had been otherwise uncollected.');

INSERT INTO products (id_category, name, author, imprint, published_date, isbn, lengths, dimensions, weight, price, highlight, new_product, image, description, detail)
VALUES ('SoS', 'The Complete Cosmicomics', 'Italo Calvino', 'Penguin Classics', '2010-05-06 00:00:00', '9780141189680', 432, '198mm x 24mm x 129mm', 315, 9.99, false, false, 'cosmicomics.jpg','The Complete Cosmicomics is a 2009 book that collects almost all of the Cosmicomic stories by Italian postmodern writer Italo Calvino.', 
'Italo Calvino\'s enchanting stories about the evolution of the universe, with characters that are fashioned from mathematical formulae and cellular structures, The Complete Cosmicomics is translated by Martin McLaughlin, Tim Parks and William Weaver in Penguin Modern Classics.

\'Naturally, we were all there, - dld Qfwfq said, - where else could we have been? Nobody knew then that there could be space. Or time either: what use did we have for time, packed in there like sardines?\'

The Cosmicomics tell the story of the history of the universe, from the big bang, through millennia and across galaxies. It is witnessed through the eyes of \'cosmic know-it-all\' Qfwfq, an exuberant, chameleon-like figure, who takes the shape of a dinosaur, a mollusc, a steamer captain and a moon milk gatherer, among others. This is the first complete edition in English of Italo Calvino\'s funny, whimsical and delightful stories, which blend scientific fact, flights of fancy, parody and wordplay to show the strangeness and the wonders of the world.');

INSERT INTO products (id_category, name, author, imprint, published_date, isbn, lengths, dimensions, weight, price, highlight, new_product, image, description, detail)
VALUES ('SoS', 'What We Talk About When We Talk About Love', 'Raymond Carver', 'Vintage Classics', '2009-11-05 00:00:00', '9780099530329', 144, '198mm x 9mm x 129mm', 106, 8.99, false, false, 'talkaboutlove.jpg','What We Talk About When We Talk About Love is a 1981 collection of short stories by American writer Raymond Carver, as well as the title of one of the stories in the collection.', 
'This powerful collection of stories, set in the mid-West among the lonely men and women who drink, fish and play cards to ease the passing of time, was the first by Raymond Carver to be published in the UK. With its spare, colloquial narration and razor-sharp sense of how people really communicate, the collection was to become one of the most influential literary works of the 1980s.');

-- Category Cookbooks
INSERT INTO products (id_category, name, author, imprint, published_date, isbn, lengths, dimensions, weight, price, highlight, new_product, image, description, detail)
VALUES ('Cook', 'Ottolenghi FLAVOUR', 'Yotam Ottolenghi, Ixta Belfrage', 'Ebury Press', '2020-09-03 00:00:00', '9781785038938', 320, '278mm x 29mm x 202mm', 1383, 27.00, true, true, 'flavour.jpg','Flavour-forward, vegetable-based recipes are at the heart of Yotam Ottolenghi’s food.', 
'In this stunning new cookbook Yotam and co-writer Ixta Belfrage break down the three factors that create flavour and offer innovative vegetable dishes that deliver brand-new ingredient combinations to excite and inspire.

Ottolenghi FLAVOUR combines simple recipes for weeknights, low-effort high-impact dishes, and standout meals for the relaxed cook. Packed with signature colourful photography, FLAVOUR not only inspires us with what to cook, but how flavour is dialled up and why it works.');

INSERT INTO products (id_category, name, author, imprint, published_date, isbn, lengths, dimensions, weight, price, highlight, new_product, image, description, detail)
VALUES ('Cook', 'Nadiya Bakes', 'Nadiya Hussain', 'Michael Joseph', '2020-09-03 00:00:00', '9780241396612', 256, '252mm x 23mm x 196mm', 1020, 22.00, false, false, 'nadiyabakes.jpg','', 
'Our beloved Bake-Off winner has created your ultimate baking cookbook to help you conquer cakes, biscuits, traybakes, tarts and pies, showstopping desserts, breads, savoury bakes, and even \'no-bake\' bakes - all with her signature mouth-watering twists.

From classic baking staples to dazzling show-stoppers, you\'ll discover new favourite recipes for every day and every celebration - it\'s time to shake up your bakes!
');

INSERT INTO products (id_category, name, author, imprint, published_date, isbn, lengths, dimensions, weight, price, highlight, new_product, image, description, detail)
VALUES ('Cook', '7 Ways', 'Jamie Oliver', 'Michael Joseph', '2020-08-20 00:00:00', '9780241431153', 320, '251mm x 29mm x 196mm', 1186, 25.99, false, false, 'sevenways.jpg','Make everyday meals more exciting with the No. 1 bestselling cookbook, featuring 120 exciting and tasty new recipes', 
'Jamie has done his research to find out exactly what we, as a nation, love to eat.

He\'s taken 18 of our favourite ingredients and created 7 new, easy and delicious ways to cook them.

We\'re talking about those meal staples we pick up without thinking - chicken breast, salmon fillet, mince, eggs, potatoes, broccoli, mushrooms, to name but a few.

Jamie will share 7 achievable, exciting and tasty ways to cook each of these hero foods, requiring minimal time, effort and a maximum of only 8 ingredients.');

INSERT INTO products (id_category, name, author, imprint, published_date, isbn, lengths, dimensions, weight, price, highlight, new_product, image, description, detail)
VALUES ('Cook', 'The Roasting Tin Around the World', 'Rukmini Iyer', 'Square Peg', '2020-04-30 00:00:00', '9781529110135', 240, '255mm x 175mm x 175mm', 804, 17.99, false, false, 'roasting.jpg','Cook delicious one-tin versions of your favourite recipes from around the world, including fresh vegan and vegetarian ideas, from the bestselling author of The Green Roasting Tin.', 
'The Roasting Tin Around the World covers all corners of the globe with brand new recipes. The greatest hits from each region are reworked into quick and easy one-tin meals. The dishes are perfect for weeknight dinners, lunch breaks and family favourites.

Rukmini Iyer\'s vision for the roasting tin series is: \'minimum effort, maximum flavour\'. This book really delivers with its bold, punchy and global flavours. The perfect way to experience your favourite international flavours when you can\'t travel abroad.

Just chop a few ingredients, pop them into a roasting tin and let the oven do the work. Featuring 75 easy-to-make recipes that make use of your lockdown larder ingredients, The Roasting Tin Around the World is the perfect cook book for vegans, vegetarians and meat-eaters alike.');

INSERT INTO products (id_category, name, author, imprint, published_date, isbn, lengths, dimensions, weight, price, highlight, new_product, image, description, detail)
VALUES ('Cook', 'Table Manners: The Cookbook', 'Jessie Ware, Lennie Ware', 'Ebury Press', '2020-03-05 00:00:00', '9781529105209', 288, '254mm x 28mm x 184mm', 981, 25.00, false, false, 'tablemanners.jpg','Beautifully put-together with wonderfully crafted, full-on flavour recipes for everyone. A proper family feast of a cookbook!', 
'Cooking through Table Manners is like having Jessie and Lennie at the table with you: brash, funny and full of opinions.

In true Ware style, their cookbook is divided into Effortless, A Bit More Effort, Summertime, Desserts and Baking (thanks to Jessie’s brother Alex), Chrismukkah (Christmas, Hanukkah and celebrations) and, of course, Jewish-ish Food.

These delicious, easy dishes are designed for real people with busy and sometimes chaotic lives with the ultimate goal of everyone eating together so unfiltered chat can flourish.');

-- Category History
INSERT INTO products (id_category, name, author, imprint, published_date, isbn, lengths, dimensions, weight, price, highlight, new_product, image, description, detail)
VALUES ('His', 'Midnight in Chernobyl', 'Adam Higginbotham', 'Transworl Digital', '2019-02-14 00:00:00', '9781473540828', 560, '198mm x 37mm x 129mm', 798, 10.99, false, false, 'midnight.jpg','The story of Chernobyl is more complex, more human, and more terrifying than the Soviet myth. Adam Higginbotham has written a harrowing and compelling narrative which brings the 1986 disaster to life through the eyes of the men and women who witnessed it first-hand. ', 
'Drawing on hundreds of hours of interviews conducted over the course of more than ten years, as well as letters, unpublished memoirs, and documents from recently-declassified archives, this book makes for a masterful non-fiction thriller.

Chernobyl has become lodged in the collective nightmares of the world: shorthand for the spectral horrors of radiation poisoning, for a dangerous technology slipping its leash, for ecological fragility, and for what can happen when a dishonest and careless state endangers not only its own citizens, but all of humanity. It is a story that has long remained in dispute, clouded from the beginning in secrecy, propaganda, and misinformation.

Midnight In Chernobyl is an indelible portrait of history\'s worst nuclear disaster, of human resilience and ingenuity and the lessons learned when mankind seeks to bend the natural world to his will - lessons which, in the face of climate change and other threats - remain not just vital but necessary.
Now, Higginbotham brings us closer to the truth behind this colossal tragedy.');

INSERT INTO products (id_category, name, author, imprint, published_date, isbn, lengths, dimensions, weight, price, highlight, new_product, image, description, detail)
VALUES ('His', 'The Cut Out Girl', 'Bart van Es', 'Penguin', '2018-08-02 00:00:00', '9780241978719', 288, '198mm x 22mm x 129mm', 390, 9.99, false, false, 'cutoutgirl.jpg','\'Superb. This is a necessary book - painful, harrowing, tragic, but also uplifting\'', 
'Little Lien wasn\'t taken from her Jewish parents in the Hague - she was given away in the hope that she might be saved. Hidden and raised by a foster family in the provinces during the Nazi occupation, she survived the war only to find that her real parents had not. Much later, she fell out with her foster family, and Bart van Es - the grandson of Lien\'s foster parents - knew he needed to find out why.

His account of tracing Lien and telling her story is a searing exploration of two lives and two families. It is a story about love and misunderstanding and about the ways that our most painful experiences - so crucial in defining us - can also be redefined.
');

INSERT INTO products (id_category, name, author, imprint, published_date, isbn, lengths, dimensions, weight, price, highlight, new_product, image, description, detail)
VALUES ('His', 'Living with the Gods', 'Neil MacGregor', 'Allen Lane', '2018-09-17 00:00:00', '9780241308295', 512, '240mm x 44mm x 167mm', 1250, 30.00, false, false, 'livewithgods.jpg','A panoramic exploration of peoples, objects and beliefs over 40,000 years from the celebrated author of A History of the World in 100 Objects and Germany, following the new BBC Radio 4 documentary and British Museum exhibition.', 
'One of the central facts of human existence is that every society shares a set of beliefs and assumptions - a faith, an ideology, a religion - that goes far beyond the life of the individual. These beliefs are an essential part of a shared identity. They have a unique power to define - and to divide - us, and are a driving force in the politics of much of the world today. Throughout history they have most often been, in the widest sense, religious.

Yet this book is not a history of religion, nor an argument in favour of faith. It is about the stories which give shape to our lives, and the different ways in which societies imagine their place in the world. Looking across history and around the globe, it interrogates objects, places and human activities to try to understand what shared beliefs can mean in the public life of a community or a nation, how they shape the relationship between the individual and the state, and how they help give us our sense of who we are.

For in deciding how we live with our gods, we also decide how to live with each other.');

INSERT INTO products (id_category, name, author, imprint, published_date, isbn, lengths, dimensions, weight, price, highlight, new_product, image, description, detail)
VALUES ('His', 'Icebreaker', 'Horatio Clare', 'Vintage', '2019-04-04 00:00:00', '9781784706791', 224, '198mm x 135mm x 135mm', 206, 8.99, false, false, 'icebreaker.jpg', 'Bestselling travel writer Horatio Clare joins an icebreaker for a voyage through the ice-packs of the far north.', 
'A message from the Finnish embassy launches Horatio Clare on a voyage around an extraordinary country and an unearthly place, the frozen Bay of Bothnia, just short of the Arctic circle. Travelling with the crew of Icebreaker Otso, Horatio, whose last adventure saw him embedded on Maersk container vessels for the bestseller Down to the Sea in Ships, discovers stories of Finland, of her mariners and of ice.

Aboard Otso Horatio gets to know the men who make up her crew, and explores Finland’s history and character. Surrounded by the extraordinary colours and conditions of a frozen sea, he also comes to understand something of the complexity and fragile beauty of ice, a near-miraculous substance which cools the planet, gives the stars their twinkle and which may hold all our futures in its crystals.');

-- Category Memoir
INSERT INTO products (id_category, name, author, imprint, published_date, isbn, lengths, dimensions, weight, price, highlight, new_product, image, description, detail)
VALUES ('Mem', 'Educated', 'Tara Westover', 'Windmill Books', '2018-11-01 00:00:00', '9780099511021', 400, '198mm x 24mm x 129mm', 227, 9.99, false, false, 'educated.jpg','An amazing story, and truly inspiring. The kind of book everyone will enjoy. IT\'S EVEN BETTER THAN YOU\'VE HEARD.', 
'Tara Westover and her family grew up preparing for the End of Days but, according to the government, she didn\'t exist. She hadn\'t been registered for a birth certificate. She had no school records because she\'d never set foot in a classroom, and no medical records because her father didn\'t believe in hospitals.

As she grew older, her father became more radical and her brother more violent. At sixteen, Tara knew she had to leave home. In doing so she discovered both the transformative power of education, and the price she had to pay for it.');

INSERT INTO products (id_category, name, author, imprint, published_date, isbn, lengths, dimensions, weight, price, highlight, new_product, image, description, detail)
VALUES ('Mem', 'Becoming', 'Michelle Obama', 'Viking', '2018-11-13 00:00:00', '9780241334140', 448, '240mm x 40mm x 162mm', 723, 25.00, false, false, 'becoming.jpg','BRITISH BOOK AWARDS, NON-FICTION BOOK OF THE YEAR. THE SUNDAY TIMES, MEMOIR OF THE YEAR. BOOKS OF THE YEAR: THE TIMES, OBSERVER, GUARDIAN, EVENING STANDARD', 
'Now in paperback featuring a new introduction by Michelle Obama, a letter from the author to her younger self, and a book club guide with 20 discussion questions and a 5-question Q&A, the intimate, powerful, and inspiring memoir by the former First Lady of the United States

In her memoir, a work of deep reflection and mesmerizing storytelling, Michelle Obama invites readers into her world, chronicling the experiences that have shaped her -- from her childhood on the South Side of Chicago to her years as an executive balancing the demands of motherhood and work, to her time spent at the world\'s most famous address. With unerring honesty and lively wit, she describes her triumphs and her disappointments, both public and private, telling her full story as she has lived it -- in her own words and on her own terms.

Warm, wise, and revelatory, Becoming is the deeply personal reckoning of a woman of soul and substance who has steadily defied expectations -- and whose story inspires us to do the same.');

INSERT INTO products (id_category, name, author, imprint, published_date, isbn, lengths, dimensions, weight, price, highlight, new_product, image, description, detail)
VALUES ('Mem', 'Know My Name', 'Chanel Miller', 'Viking', '2020-09-03 00:00:00', '9780241428290', 384, '198mm x 23mm x 129mm', 266, 9.99, false, false, 'myname.jpg','To girls everywhere, I am with you. On nights when you feel alone, I am with you. When people doubt you or dismiss you, I am with you. I fought every day for you. So never stop fighting, I believe you.', 
'Chanel Miller\'s story changed our world forever. In 2016 Brock Turner was sentenced to just six months in jail after he was caught sexually assaulting her on Stanford\'s campus. His light sentencing, and Chanel\'s victim impact statement, which was read by eleven million people in four days, sparked international outrage and action.

Know My Name is an intimate, profoundly moving memoir that exposes a patriarchal culture biased to protect perpetrators, a criminal justice system designed to fail the most vulnerable, and ultimately shines with the courage required to move through suffering and live a full and beautiful life. Entwining pain, resilience, and humour, this breath-taking memoir will stand as a modern classic.
');

INSERT INTO products (id_category, name, author, imprint, published_date, isbn, lengths, dimensions, weight, price, highlight, new_product, image, description, detail)
VALUES ('Mem', 'Red Notice', 'Bill Browder', 'Corgi', '2016-02-11 00:00:00', '9780552170321', 480, '198mm x 29mm x 127mm', 325, 9.99, false, false, 'rednotice.jpg', 'I have to assume that there is a very real chance that Putin or members of his regime will have me killed some day. If I\'m killed, you will know who did it. When my enemies read this book, they will know that you know.',
'In November 2009, the young lawyer Sergei Magnitsky was beaten to death by eight police officers in a freezing cell in a Moscow prison. His crime? Testifying against Russian officials who were involved in a conspiracy to steal $230 million of taxes.

Red Notice is a searing exposé of the whitewash of this imprisonment and murder. The killing hasn\'t been investigated. It hasn\'t been punished. Bill Browder is still campaigning for justice for his late lawyer and friend. This is his explosive journey from the heady world of finance in New York and London in the 1990s, through battles with ruthless oligarchs in turbulent post-Soviet Union Moscow, to the shadowy heart of the Kremlin.');

INSERT INTO products (id_category, name, author, imprint, published_date, isbn, lengths, dimensions, weight, price, highlight, new_product, image, description, detail)
VALUES ('Mem', 'When Breath Becomes Air', 'Paul Kalanithi', 'Vintage', '2017-01-05 00:00:00', '9781784701994', 256, '198mm x 16mm x 129mm', 181, 9.99, true, true, 'breath.jpg','\'Rattling. Heartbreaking. Beautiful.\' Atul Gawande, bestselling author of Being Mortal', 
'At the age of thirty-six, on the verge of completing a decade\'s training as a neurosurgeon, Paul Kalanithi was diagnosed with inoperable lung cancer. One day he was a doctor treating the dying, the next he was a patient struggling to live.

When Breath Becomes Air chronicles Kalanithi\'s transformation from a medical student asking what makes a virtuous and meaningful life into a neurosurgeon working in the core of human identity - the brain - and finally into a patient and a new father.

What makes life worth living in the face of death? What do you do when when life is catastrophically interrupted? What does it mean to have a child as your own life fades away?

Paul Kalanithi died while working on this profoundly moving book, yet his words live on as a guide to us all. When Breath Becomes Air is a life-affirming reflection on facing our mortality and on the relationship between doctor and patient, from a gifted writer who became both.');

-- Category Poetry
INSERT INTO products (id_category, name, author, imprint, published_date, isbn, lengths, dimensions, weight, price, highlight, new_product, image, description, detail)
VALUES ('Poe', 'Kumukanda', 'Kayo Chingonyi', 'Chatto & Windus', '2017-06-01 00:00:00', '9781784741396', 64, '216mm x 4mm x 135mm', 79, 10.00, false, false, 'kumukanda.jpg','\'A brilliant debut - a tender, nostalgic and, at times, darkly hilarious exploration of black boyhood, masculinity and grief. A gorgeous and necessary collection from one of my favourite writers\' Warsan Shire', 
'Translating as \'initiation\', kumukanda is the name given to the rites a young boy from the Luvale tribe must pass through before he is considered a man. The poems of Kayo Chingonyi\'s remarkable debut explore this passage: between two worlds, ancestral and contemporary; between the living and the dead; between the gulf of who he is and how he is perceived.

Underpinned by a love of music, language and literature, here is a powerful exploration of race, identity and masculinity, celebrating what it means to be British and not British, all at once.');

INSERT INTO products (id_category, name, author, imprint, published_date, isbn, lengths, dimensions, weight, price, highlight, new_product, image, description, detail)
VALUES ('Poe', 'Great Goddesses', 'Nikita Gill', 'Ebury Press', '2019-09-05 00:00:00', '9781529104646', 256, '204mm x 26mm x 135mm', 323, 12.99, false, false, 'greatgoddesses.jpg','Empowering life lessons from myths and monsters.', 
'Wonder at Medusa\'s potent venom, Circe\'s fierce sorcery and Athena rising up over Olympus, as Nikita Gill majestically explores the untold stories of the life bringers, warriors, creators, survivors and destroyers that shook the world - the great Greek Goddesses.

Vividly re-imagined and beautifully illustrated, step into an ancient world transformed by modern feminist magic.');

INSERT INTO products (id_category, name, author, imprint, published_date, isbn, lengths, dimensions, weight, price, highlight, new_product, image, description, detail)
VALUES ('Poe', 'The Poetry Pharmacy Returns', 'William Sieghart', 'Particular Books', '2019-09-26 00:00:00', '9780241419052', 176, '204mm x 21mm x 133mm', 277, 12.99, false, false, 'pharmacypoetry.jpg','\'A matchless compound of hug, tonic and kiss\' Stephen Fry on William Sieghart\'s bestselling Poetry Pharmacy', 
'The Poetry Pharmacy is one of the bestselling (and most giftable) poetry anthologies of recent decades. Now, after huge demand for more prescriptions from readers and \'patients\' alike, William Sieghart is back. This time, tried-and-true classics from his in-person pharmacies are joined by readers\' favourite poems and the new conditions most requested by the public - all accompanied by his trademark meditations (warm, witty and understanding, with just a twist of the challenging) on the spiritual ailments he seeks to cure.

From ageing bodies and existential crises to long-distance relationships and embracing your slovenliness, The Poetry Pharmacy Returns caters to all-new conditions while drilling further down into the universals: this time, the challenges of family life, and of living as a person among others, receive a much closer look. Perfect for the treasured friends, barely tolerated siblings, beloved aunts and revered grandparents in your life.');

INSERT INTO products (id_category, name, author, imprint, published_date, isbn, lengths, dimensions, weight, price, highlight, new_product, image, description, detail)
VALUES ('Poe', 'Poor', 'Caleb Femi', 'Penguin', '2020-11-05 00:00:00', '9780141992150', 160, '200mm x 12mm x 132mm', 258, 9.99, false, false, 'poor.jpg', 'Shortlisted for the Forward Prize for Best First Collection. Shortlisted for the Rathbones Folio Prize. Longlisted for the Jhalak Prize', 
'What is it like to grow up in a place where the same police officer who told your primary school class they were special stops and searches you at 13 because \'you fit the description of a man\' - and where it is possible to walk two and a half miles through an estate of 1,444 homes without ever touching the ground?

In Poor, Caleb Femi combines poetry and original photography to explore the trials, tribulations, dreams and joys of young Black boys in twenty-first century Peckham. He contemplates the ways in which they are informed by the built environment of concrete walls and gentrifying neighbourhoods that form their stage, writes a coded, near-mythical history of the personalities and sagas of his South London youth, and pays tribute to the rappers and artists who spoke to their lives.

Above all, this is a tribute to the world that shaped a poet, and to the people forging difficult lives and finding magic within it. As Femi writes in one of the final poems of this book: \'I have never loved anything the way I love the endz.\'');

INSERT INTO products (id_category, name, author, imprint, published_date, isbn, lengths, dimensions, weight, price, highlight, new_product, image, description, detail)
VALUES ('Poe', 'Citizen', 'Claudia Rankine', 'Penguin', '2015-07-02 00:00:00', '9780141981772', 176, '285mm x 13mm x 134mm', 296, 9.99, false, false, 'citizen.jpg','Everywhere were flashes, a siren sounding and a stretched-out roar. Get on the ground. Get on the ground now. Then I just knew.', 
'In this moving, critical and fiercely intelligent collection of prose poems, Claudia Rankine examines the experience of race and racism in Western society through sharp vignettes of everyday discrimination and prejudice, and longer meditations on the violence - whether linguistic or physical - which has impacted the lives of Serena Williams, Zinedine Zidane, Mark Duggan and others.

Citizen weaves essays, images and poetry together to form a powerful testament to the individual and collective effects of racism in an ostensibly \'post-race\' society.');

-- Category Self-Help
INSERT INTO products (id_category, name, author, imprint, published_date, isbn, lengths, dimensions, weight, price, highlight, new_product, image, description, detail)
VALUES ('Shp', 'Welcome Home', 'Najwa Zebian', 'Penguin', '2021-01-01 00:00:00', '9782111491157', 215, '200mm x 20mm x 132mm', 299, 7.99, true, true, 'welcomehome.jpg', 'From the celebrated poet, speaker, and educator comes Welcome Home, a powerful blueprint for building a strong foundation of self-worth, belonging, and happiness.', 
'The powerful metaphor of home provides a structure for you to customize your journey to personal transformation as Najwa Zebian shares her own experiences in building a home within herself, and shows you how to construct the following “rooms”.

With practical tools, poetry, and prompts for journaling and meditation to lead to self-understanding in each chapter, Zebian shows you how to build each room in your house. Written with her trademark power, candor, and warmth, Welcome Home is an answer to the pain we all experience when we don\'t feel at peace with ourselves.
');

INSERT INTO products (id_category, name, author, imprint, published_date, isbn, lengths, dimensions, weight, price, highlight, new_product, image, description, detail)
VALUES ('Shp', 'Greenlights', 'Matthew Mcconaughey', 'Transworl Digital', '2021-01-18 00:00:00', '9781840262850', 123, '198mm x 23mm x 129mm', 237, 9.99, true, true, 'greenlights.jpg','Discover the life-changing memoir that has inspired millions of readers through the Academy Award®–winning actor’s unflinching honesty, unconventional wisdom, and lessons learned the hard way about living with greater satisfaction.', 
'I’ve been in this life for fifty years, been trying to work out its riddle for forty-two, and been keeping diaries of clues to that riddle for the last thirty-five. Notes about successes and failures, joys and sorrows, things that made me marvel, and things that made me laugh out loud. How to be fair. How to have less stress. How to have fun. How to hurt people less. How to get hurt less. How to be a good man. How to have meaning in life. How to be more me.
 
Recently, I worked up the courage to sit down with those diaries. I found stories I experienced, lessons I learned and forgot, poems, prayers, prescriptions, beliefs about what matters, some great photographs, and a whole bunch of bumper stickers. I found a reliable theme, an approach to living that gave me more satisfaction, at the time, and still: If you know how, and when, to deal with life’s challenges—how to get relative with the inevitable—you can enjoy a state of success I call “catching greenlights.”
 
So I took a one-way ticket to the desert and wrote this book: an album, a record, a story of my life so far. This is fifty years of my sights and seens, felts and figured-outs, cools and shamefuls. Graces, truths, and beauties of brutality. Getting away withs, getting caughts, and getting wets while trying to dance between the raindrops.');

-- INSERT MENU
USE Tiki;
INSERT INTO menu (name) VALUES ('Home');
INSERT INTO menu (name) VALUES ('Product');
INSERT INTO menu (name) VALUES ('Cart');
INSERT INTO menu (name) VALUES ('Post');
INSERT INTO menu (name) VALUES ('Contact');