USE [BookCatalog]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Message] [nvarchar](max) NULL,
	[MessageTemplate] [nvarchar](max) NULL,
	[Level] [nvarchar](128) NULL,
	[TimeStamp] [datetimeoffset](7) NOT NULL,
	[Exception] [nvarchar](max) NULL,
	[Properties] [xml] NULL,
	[LogEvent] [nvarchar](max) NULL,
	[UserName] [nvarchar](200) NULL,
	[IP] [varchar](200) NULL,
 CONSTRAINT [PK_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'593df942-8e8f-4538-aec9-673f486a6151', N'octopus@yahoo.com', N'OCTOPUS@YAHOO.COM', N'octopus@yahoo.com', N'OCTOPUS@YAHOO.COM', 1, N'AQAAAAEAACcQAAAAEC91yIl0m7hXvGS4vq7QfCk+n87ffRzl/VU+CPBODzU4uaJEl5rcHV0w3GzTluWYNQ==', N'KCGCKEBLRXX5FKHYNX2UC4YKVGUAPIVA', N'e6ffe807-99a5-4390-bd56-43732f774b98', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Category] ON 
GO
INSERT [dbo].[Category] ([Id], [Name]) VALUES (1, N'Književnost na hrvatskom')
GO
INSERT [dbo].[Category] ([Id], [Name]) VALUES (2, N'Stručna literatura-engleski')
GO
INSERT [dbo].[Category] ([Id], [Name]) VALUES (3, N'Stručna literatura-hrvatski')
GO
INSERT [dbo].[Category] ([Id], [Name]) VALUES (4, N'Udžbenici')
GO
INSERT [dbo].[Category] ([Id], [Name]) VALUES (5, N'Rječnici i enciklopedije')
GO
INSERT [dbo].[Category] ([Id], [Name]) VALUES (6, N'Publicistika')
GO
INSERT [dbo].[Category] ([Id], [Name]) VALUES (8, N'Književnost na engleskom')
GO
INSERT [dbo].[Category] ([Id], [Name]) VALUES (9, N'Književnost na ekavici')
GO
INSERT [dbo].[Category] ([Id], [Name]) VALUES (10, N'Stručna literatura-ostalo')
GO
INSERT [dbo].[Category] ([Id], [Name]) VALUES (11, N'Priručnici')
GO
INSERT [dbo].[Category] ([Id], [Name]) VALUES (13, N'Stripovi')
GO
INSERT [dbo].[Category] ([Id], [Name]) VALUES (14, N'Časopisi')
GO
INSERT [dbo].[Category] ([Id], [Name]) VALUES (1014, N'Programiranje')
GO
INSERT [dbo].[Category] ([Id], [Name]) VALUES (2014, N'Posuđene')
GO
INSERT [dbo].[Category] ([Id], [Name]) VALUES (3014, N'Readers')
GO
INSERT [dbo].[Category] ([Id], [Name]) VALUES (4015, N'Književnost na njemačkom')
GO
INSERT [dbo].[Category] ([Id], [Name]) VALUES (5014, N'Slikovnice')
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Book] ON 
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (1, N'101 najutjecajniji lik koji nikada nije živio', 2010, N'Naklada Ljevak', N'Lazar, Allan;et al', N'2. izdanje', N'Biblioteka POP', 1, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (2, N'Mitologija', 2003, N'Leo Commerce', N'Cotterell, Arthur', NULL, NULL, 0, 5)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (3, N'Oxford Collocations Dictionary for students of Eng', 2004, N'Oxford University Press', NULL, NULL, NULL, 0, 5)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (4, N'Kraljevo/Hrvatski bog Mars', 2011, N'Katarina Zrinski', N'Krleža, Miroslav', N'Kraljevo, Hrvatski bog Mars: Bitka kod Bistrice Lesne, Kraljevska ugarska domobranska novela, Baraka pet be, Domobran Jambrek, Smrt Franje Kadavera', N'Zlatna knjiga : metodički obrađena lektira', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (5, N'The sound and the fury', 1982, N'Penguin Books', N'Faulkner, William', NULL, N'Penguin Modern Classics', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (6, N'The Cement Garden', 2000, N'Reclam', N'McEwan, Ian', NULL, N'Universal-Bibliothek Fremdsprachentexte', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (7, N'Northanger Abbey', 1968, N'Pan Books', N'Austen, Jane', NULL, N'Bestsellers of literature', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (8, N'The mayor of Casterbridge (Level 5)', 1979, N'Collins', N'Hardy, Thomas', N'Level 5 Reader', N'Collins English library', 1, 3014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (9, N'The big book of classic stories', 1990, N'dtv', N'Leicht, Hella (ur.)', N'Priče na engleskom i njemačkom
Bierce, A. - An occurence at Owl Creek Bridge
Carleton, W. - The Gauger Outwitted
Crane, S. - Lynx-Hunting
Dickens, C. - To be Read at Dusk
Lord Dunsany - A Mystery of the East
Hawthorne, N. - Wakefield
Henry, O. - A Retrieved Reformation
Kipling, R. - The Return of Imray
London, J. - Which Make Men Remember
Melville, H. - The Fiddler
Poe, E. A. - The Tell-Tale Heart
Saki - Dusk
Stevenson, R. L. - The Body-Snatcher
Twain, M. The Joke that Made Ed''s Fortune
Wilde, O. - The Model Millionare', N'Dtv zwiugsprachig', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (10, N'50 great american short stories', 1979, N'Bantam Books', N'Crane, Milton (ed.)', N'The Adventure of the German Student, Washington Irving [1824]
Young Goodman Brown, Nathaniel Hawthorne [1835]
MS. Found in a Bottle, Edgar Allan Poe [1833]
The Fiddler, Herman Melville [1854]
What Was It?, Fitz-James O''Brien [1859]
Luck, Mark Twain [1891]
The Outcasts of Poker Flat, Francis Bret Harte [1869]
The Damned Thing, Ambrose Bierce [1893]
The Two Faces, Henry James [1900]
A New England Nun, Mary E. Wilkins Freeman [1891]
The Courting of Sister Wisby, Sarah Orne Jewett [1890]
The Dilettante, Edith Wharton [1904]
Masters of Arts, O. Henry [1896]
Effie Whittlesy, George Ade [1903]
Mr Dooley on the Popularity of Firemen, Finley Peter Dunne [1898]
The Bride Comes to Yellow Sky, Stephen Crane [1898]
A Dead Issue, Charles M. Flandrau [???]
The Lost Phoebe, Theodore Dreiser [1916]
Father is Firm with His Ailments, Clarence Day [1933]
Death in the Woods, Sherwood Anderson [1926]
To Build a Fire, Jack London [1908]
The Use of Force, William Carlos Williams [1938]
Old Folks'' Christmas, Ring Lardner [1928]
Silent Snow, Secret Snow, Conrad Aiken [1934]
By the Waters of Babylon, Stephen Vincent Benét [1937]
Soldiers of the Republic, Dorothy Parker [1938]
Mr. Preble Gets Rid of His Wife, James Thurber [1934]
Cluney McFarrar Hardtack, John McNulty [1943]
The Darkness of the Night, Robert M. Coates [1942]
The Old People, William Faulkner [1940]
Grapes for Monsieur Cape, Ludwig Bemelmans [1938]
A Man of the World, Ernest Hemingway [1957]
The Hour of Letdown, E. B. White [1951]
The Resting Place, Oliver La Farge [1955]
The Touch of Nutmeg Makes It, John Collier [1941]
The Harness, John Steinbeck [1938]
Friend of the Family, Kay Boyle [1946]
The Rumor, Erskine Caldwell [1946]
There was a Young Lady of Perth, William Saroyan [1961]
The Downfall of Fascism in Black Ankle County, Joseph Mitchell [1939]
The French Scarecrow, William Maxwell [1956]
The Blue-Winged Teal, Wallace Stegner [1954]
The Archimandrite''s Niece, James Reid Parker [1941]
A Mother''s Tale, James Agee [1952]
The National Pastime, John Cheever [1953]
The Girls in Their Summer Dresses, Irwin Shaw [1939]
The Death of Shorty, Richard P. Bissell [1950]
Grandma and the Hindu Monk, Seymour Freedgood [1951]
Madam Zilensky and the King of Finland, Carson McCullers [1951]
The Lucid Eye in Silver Town, John Updike [1964]', N'Bantam short story anthologies', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (11, N'To kill a mocking-bird', 1960, N'Pan Books', N'Lee, Harper', NULL, N'Pan Fiction', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (12, N'Selected Writings', 1979, N'Penguin Books', N'Poe, Edgar Allan', N'Poems, Tales: Manuscript found in a bottle, Ligeia, The man that was used up, The fall of the House of Usher, William Willson, The man of the crowd, The murder in the Rue Morgue, A descent into the maelström, Eleonora, The oval portrait, The masque of the red death, The pit and the pendulum, The tell-tale heart, The gold-bug, The black cat, The purloined letter, The facts in the case of M. Valdemar, The cask of Amontillado, Hop-frog, Essays and reviews', N'The Penguin English Library', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (13, N'The Penguin Book of English Short Stories', 1981, N'Penguin Books', N'Dolley, Christopher', N'The signalman / Charles Dickens -- The withered arm / Thomas Hardy -- An outpost of progress / Joseph Conrad -- At the end of the passage / Rudyard Kipling -- The country of the blind / H.G. Wells -- The force of circumstance / W. Somerset Maugham -- The dead / James Joyce -- Kew Gardens / Virginia Woolf -- Fanny and Annie / D.H. Lawrence -- The voyage / Katherine Mansfield -- The breakout / Joyce Cary -- The gioconda smile / Aldous Huxley -- The fly in the ointment / V.S. Pritchett -- Mr Loveday''s little outing / Evelyn Waugh -- Across the bridge / Graham Greene -- Raspberry jam / Angus Wilson', N'Penguin Books', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (14, N'Persuasion', 2000, N'Wordsworth Editions', N'Austen, Jane', NULL, N'Wordsworth Classics', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (15, N'Profesor', 1975, N'Matica hrvatska', N'Brontë, Charlotte', NULL, N'Sestre Bronte', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (16, N'All''s well that ends well', 1998, N'Oxford University Press', N'Shakespeare, William', NULL, N'The Oxford Shakespeare', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (17, N'Little Women', 1994, N'Penguin Books', N'Alcott, Louisa May', N'Knj. 1
Four sisters and their mother, whom they call Marmee, live in a new neighborhood (loosely based on Concord) in Massachusetts in genteel poverty. Having lost all his money, their father is serving as a chaplain in the American Civil War, far from home. The sisters strive to help their family and improve their characters as Meg is vain, Jo is hotheaded, Beth is cripplingly shy, and Amy is materialistic. The neighbor boy Laurie, orphaned grandson of Mr. Laurence, becomes close friends with the sisters, particularly the tomboyish Jo.', N'Little Women series', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (18, N'Emma', 1994, N'Wordsworth', N'Austen, Jane', NULL, N'Penguin Popular Classics', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (19, N'Pride and Prejudice', 1994, N'Penguin Books', N'Austen, Jane', NULL, N'Penguin Popular Classics', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (20, N'Shirley', 1975, N'Nakladni zavod Matice hrvatske', N'Brontë, Charlotte', NULL, N'Sestre Brontë', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (21, N'Gospođa Dalloway', 1981, N'Sveučilišna naklada Liber', N'Woolf, Virginia', N'Knj. 4', N'Engleski roman u 10 knjiga', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (22, N'Canterburyjske priče', 1986, N'Znanje', N'Chaucer, Geoffrey', N'Engleska književnost', N'Posebna izdanja', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (23, N'Alkemičar', 2004, N'VBZ', N'Coelho, Paulo', N'Posveta', N'Biblioteka Djela Paula Coelha', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (24, N'Uskrsnuće', 1965, N'Matica hrvatska', N'Tolstoj, Lav Nikolajevič', N'Knj. 1 
Ruska književnost
', N'Izabrana djela L. N. Tolstoja', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (25, N'Nevjernica', 2007, N'Naklada Ljevak', N'Hirsi Ali, Ayaan', N'Posudila Jasminki', N'Biblioteka Strani pisci', 1, 2014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (26, N'Žena s maštom', 1964, N'Izdavačko preduzeće Rad', N'Hardy, Thomas', NULL, N'Biblioteka Reč i misao', 1, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (27, N'Skrletno slovo', 1964, N'Izdavačko preduzeće Rad', N'Hawthorne, Nathaniel', NULL, N'Biblioteka Reč i misao', 1, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (28, N'Majka Hrabrost', 1964, N'Izdavačko preduzeće Rad', N'Brecht, Bertolt', NULL, N'Biblioteka Reč i misao', 1, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (29, N'Pakao', 1963, N'Izdavačko preduzeće Rad', N'Dante', NULL, N'Biblioteka Reč i misao', 1, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (30, N'Priča o vezirovom slonu', 1965, N'Izdavačko preduzeće Rad', N'Andrić, Ivo', N'Priča o vezirovom slonu, Put Alije Đerzeleza, Most na Žepi, Smrt u Sinanovoj tekiji, U musafirhani, Mustafa Madžar, Ispovijed, U zindanu, Kod kazana, Veletovci', N'Biblioteka Reč i misao', 1, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (31, N'Anđeo u ofsajdu', 2006, N'Europapress holding', N'Ferić, Zoran', N'Knj. 3 
Posveta
Forma amorfa, Otok na Kupi, Ralje, Blues za gospođu s crvenim mrljama, Drvene čaplje, Tužna bajka o Clari Schumann i braći Grimm, Simetrije čuda, Dodir anđela, Anđeo u ofsajdu', N'Biblioteka Bestseler', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (32, N'Šegrt Hlapić', 1982, N'Mladost', N'Brlić-Mažuranić, Ivana', NULL, N'Biblioteka Vjeverica', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (33, N'Ezopove basne', 1981, N'Mladost', N'Ezop', N'Lektira', N'Biblioteka Vjeverica', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (34, N'Nevidljiva Iva', 1983, N'Mladost', N'Balog, Zvonimir', N'Lektira', N'Biblioteka Vjeverica', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (35, N'Bambijeva djeca', 1976, N'Mladost', N'Salten, Felix', NULL, N'Biblioteka Vjeverica', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (36, N'Moja zlatna dolina', 1988, N'Mladost', N'Kolarić-Kišur, Zlata', N'Lektira', N'Biblioteka Vjeverica', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (37, N'Priče', 1975, N'Mladost', N'Grimm, Jakob i Wilhelm', N'O mudrom krojačiću, Carić i medvjed, Tri lijenčine, Četiri brata od zanata, Zvjezdani taliri, Snjeguljica i Ružica, Stari Sultan, Čarobno zelje, Vuk i čovjek, Zlatna guska, Ditmarske laži, Guščarica na studencu, Dvanaest lovaca, Tri prelje, Grobni humak, Lisica i mačka, Majstor Šilko, Sedmorica Švaba, Vuk i lisica, Djed i unuče, Vrijeme života, Tri brata, Priče o Zemlji lijenčina, Vilenjak-tvrdoglavac, Medo Danguba, Dva putnika, Brat Veseljak, Stoliću, prostri se, Seljak i đavo, Lijeni Hinko, repa, Lisica i gospođa kuma, Ivica i Marica, Vjesnici smrti, Čavao, Šest pomagača, Dvanaest lijenih slugu', N'Biblioteka Vjeverica', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (38, N'Čudnovata istina', 1981, N'Mladost', N'Krilić, Zlatko', N'Lektira', N'Biblioteka Vjeverica', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (39, N'Bajke', 1980, N'Mladost', N'Čapek, Karel', N'O začaranom skitnici, Pseća bajka, Ptičja bajka, Bajka o vodenjaku, Razbojnička bajka, O sretnom siromahu, Skitnička bajka, Poštarska bajka, Velika doktorska bajka, Velika mačja bajka, Velika policijska bajka', N'Biblioteka Vjeverica', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (40, N'Bambi', 1989, N'Mladost', N'Salten, Felix', N'Lektira', N'Biblioteka Vjeverica', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (41, N'Profesorica iz snova', 2009, N'Znanje', N'Gavran, Miro', N'Posveta', N'Biblioteka Miro Gavran za mlade', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (42, N'Maturanti', 1979, N'Mladost', N'Ivanac, Ivica', NULL, N'Biblioteka Jelen', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (43, N'Pripovijesti', 1980, N'Mladost', N'Kolar, Slavko', N'Breza, Svoga tela gospodar, Mi smo za pravicu, Ili jesmo - ili nismo, Kriza, Ženidba Imbre Futača, Pobuna viteza Joze', N'Biblioteka Jelen', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (44, N'Dvije pripovijetke', 1978, N'Školska knjiga', N'Novak, Slobodan', N'Nezasitnost i bijeda
Iz velegradskog podzemlja', N'Dobra knjiga: lektira za 7. razred osnovne škole', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (45, N'Junačke narodne pjesme', 1968, N'Školska knjiga', N'Čubelić, Tvrtko (prir.)', NULL, N'Dobra knjiga: lektira za peti razred osnovne škole', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (46, N'Ala je lep ovaj svet', 1986, N'Mladost', N'Zmaj, Jovan Jovanovič', NULL, N'Biblioteka Vjeverica', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (47, N'Pustolovine Huckleberryja Finna', 2012, N'Znanje', N'Twain, Mark', NULL, N'Biblioteka Stribor', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (48, N'U pustinji i prašumi', 2004, N'Globus Media', N'Sienkiewicz, Henryk', N'Knj. 10 
Lektira', N'Jutarnji list : lektira popularni klasici', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (49, N'Idiot', 2008, N'Europapress holding', N'Dostojevski, Fjodor Mihajlovič', N'Knj. 3', N'Biblioteka Jutarnjeg lista : lektira - klasici', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (50, N'Hamlet', 1996, N'Sysprint', N'Shakespeare, William', N'Lektira', N'Lektira dostupna svima', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (51, N'Kuća lutaka', 2001, N'ABC naklada', N'Ibsen, Henrik', N'Lektira
', N'Biblioteka Lektira', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (52, N'Zločin i kazna', 2006, N'Mozaik knjiga', N'Dostojevski, Fjodor Mihajlovič', N'Knj. 48', N'Mala biblioteka', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (53, N'Kontrapunkt', 1987, N'August Cesarec', N'Huxley, Aldous', N'Knj. 28', N'Biblioteka Džepna knjiga', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (54, N'Hrvatski dječji pisci 3', 1991, N'Nakladni zavod Matice hrvatske', N'Kuten, K. i dr.', N'Hrvatska dječja poezija
Krunoslav Kuten, Zlata Kolarić-Kišur, Grigor Vitez, Stjepan Jakševac, Ratko Zvrko, Mladen Bjažić, Stanislav Femenić', N'Pet stoljeća hrvatske književnosti', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (55, N'Hrvatski dječji pisci 2', 1991, N'Nakladni zavod Matice hrvatske', N'Katalinić i dr.', N'Palma Katalinić- Pričanje cvrčka moreplovca
Milivoj Matošec - Strah u Ulici lipa
Branko Hribar - Adam Vučjak (izbor)
Nada Iveljić - Konjić sa zlatnim sedlom (izbor), Šestinski kišobran (izbor), Zmajevi nad gradom (izbor), Zvijezda na krovu (izbor), Vodenica sokolica (izbor), Dođi da ti pričam (izbor)
Sunčana Škrinjarić - Dva smijeha (izbor), Svaštara (izbor), Ulica predaka (izbor), Kuća od slova (izbor)
', N'Pet stoljeća hrvatske književnosti', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (56, N'Hrvatski dječji pisci 1', 1991, N'Nakladni zavod Matice hrvatske', N'Dovjak-Matković, B. i dr.', N'Blanka Dovjak Matković- Neke male važnosti (izbor), Iz časopisa (izbor, Zagrebačka priča (izbor)
Dank Oblak- Modri prozori
Anđelka Martić - Pirgo
Dragutin Horkić - Čađave zgode (izboir)', N'Pet stoljeća hrvatske književnosti', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (57, N'Mučnina', 1980, N'Nakladni zavod Matice hrvatske', N'Sartre, Jean Paul', N'Knj. 5', N'Biblioteka Vijenac', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (58, N'Prokleta avlija', 1986, N'Mladost', N'Andrić, Ivo', N'Knjiga četvrta
Lektira', N'Sabrana djela Ive Andrića', 1, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (59, N'Travnička hronika', 1986, N'Mladost', N'Andrić, Ivo', N'Lektira', N'Sabrana djela Ive Andrića', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (60, N'Gospodar prstenova: dio prvi - Prstenova družina', 2005, N'Algoritam', N'Tolkien, John Ronald Reuel', N'Jadran', N'NAJbiblioteka', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (61, N'Koraljna vrata', 2004, N'Večernji list', N'Pavličić, Pavao', N'Knj. 10', N'Večernjakova biblioteka', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (62, N'Stranac', 2004, N'Globus Media', N'Camus, Albert', N'Knj. 6 
Lektira', N'Biblioteka Jutarnjeg lista : XX. stoljeće', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (63, N'Životinjska farma', 2004, N'Globus Media', N'Orwell, George', N' Knj. 25 
Lektira', N'Biblioteka Jutarnjeg lista : XX. stoljeće', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (64, N'Na Drini ćuprija', 2004, N'Jutarnji list', N'Andrić, Ivo', N'Lektira', N'Biblioteka XX. stoljeće', 1, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (65, N'Ime ruže', 2004, N'Globus Media', N'Eco, Umberto', N'Knj. 1', N'Biblioteka Jutarnjeg lista : XX. stoljeće', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (66, N'Seljačka buna', 1980, N'Globus', N'Šenoa, August', N'Lektira', N'Biblioteka Svjetski pisci : Djela Augusta Šenoe', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (67, N'Zlatarovo zlato', 1980, N'Globus', N'Šenoa, August', N'Lektira', N'Biblioteka Svjetski pisci : Djela Augusta Šenoe', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (68, N'Šestinski kišobran', 1996, N'Katarina Zrinski', N'Iveljić, Nada', N'Strašilo na slici, Glinenko, Košuljica s narodnim vezom, Šestinski kišobran, Zmija brončanog ribara, Sestre čipkarice, Šuš, Opanci-rastanci, Pec Ivo, čovječuljak od tijesta, Grom Loši Strijelac, Stric Opečić, Priča o malom licitarskom srcu, matija, kazivačica, Bilikum - veseli kum, Klopotec, Morska medvjedica, Mogut, Najljepši san tkalje Mare, Vodenjačić iz Krke, Priča o nijemom pčelaru, Vila Koprivica, Kožuščić, Tri puta prodano štene, Kraljica noći, Gavran s dva bijela pera, Kapljica s Plitvica', N'Biblioteka Pčelica', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (69, N'Therese Raquin', 2010, N'Katarina Zrinski', N'Zola, Emile', NULL, N'Zlatna knjiga : metodički obrađena lektira', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (70, N'Sense and sensibility', 1996, N'Dover Publications', N'Austen, Jane', NULL, N'Dover trift editions', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (71, N'Sto godina samoće', 2006, N'VBZ', N'Garcia Marquez, Gabriel', N'Knj. 135', N'Biblioteka Ambrozija', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (72, N'Plavi kaputić', 1989, N'Mladost', N'Kušec, Mladen', NULL, N'Biblioteka Vjeverica', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (73, N'Eko Eko', 1990, N'Mladost', N'Hitrec, Hrvoje', N'Lektira', N'Biblioteka Vjeverica : eko vjeverica', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (74, N'Ježeva kuća i druge bajke', 1986, N'Veselin Masleša', N'Ćopić, Branko', N'Ježeva kuća, Balada o ribaru i mačku, Mjesec i njegova baka, ', N'Biblioteka Lastavica', 1, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (75, N'Opanci dida Vidurine : ličke novele', 1996, N'Hena Com', N'Budak, Mile', N'Naš gospodin nad Likom, Čiji je Velebit, Bilovića prijatelji, Suvez, Vinota dušča, Jožića tejaci, Dakanov garov, Jolino oranje, El vira, Vuk Šeponja, Opanci dida Vidurine', NULL, 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (76, N'Bakreni Petar', 1984, N'Mladost', N'Gardaš, Anto', N'Lektira', N'Biblioteka Vjeverica', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (77, N'Nemirna godina', 1977, N'Svjetlost', N'Andrić, Ivo', N'Za logorovanja, Mustafa Madžar, Priča o vezirovom slonu, Nemirna godina, San bega Karčića, Veletovci, Ćilim, Svadba, Štrajk u tvornici ćilima, Razaranja, Bife Titanik, Zeko', N'Sabrana djela Ive Andrića', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (78, N'Znakovi', 1977, N'Svjetlost', N'Andrić, Ivo', N'Put Alije Đerzeleza, Znakovi, Svečanost, Dorđe Đorđević, Reči, Autobiografija, Zlostavljanje, Priča o kmetu Simanu, Snopići, San i java pod grabićem, Priča o soli, Kosa, Zimi, Lov na tetreba, Razgovor, Susedi, Šetnja, Zatvorena vrata, Porodična slika, Osatičani, Praznično jutro', N'Sabrana djela Ive Andrića', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (79, N'Pjesme ljubavi i nade', 1980, N'Mladost', N'Neruda, Pablo', N'Posudila:Jasminka?', N'Biblioteka Zlatno slovo', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (80, N'Izabrana proza', 1989, N'Veselin Masleša', N'Andrić, Ivo', N'Kako sam ulazio u svet knjige i književnosti, Panorama, Cirkus, Deca, Kula, Knjiga, Prozor, Aska i vuk, Most na Žepi, Ćilim, Priča o kmetu Simanu, Sunce, Crveni Cvet, Snopići, Na jevrejskom groblju u Sarajevu, U Šopenovoj rodnoj kući, Mostovi', N'Biblioteka Lastavica', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (81, N'A Student''s Grammar of the English Language', 2004, N'Longman', N'Greenbaum, S./Quirk, R.', NULL, NULL, 1, 2)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (82, N'Dictionary of Common Errors', 1997, N'Longman', N'Turton, N. D./Heaton, J. B.', NULL, NULL, 0, 5)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (83, N'Pjesnikinje Dubrovnika', 1970, N'JAZU', N'Marković, Zdenka', NULL, NULL, 0, 3)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (84, N'A passion for books', 1998, N'Harvest House', N'Glaspey, T. W.', NULL, NULL, 1, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (85, N'Knjiški moljac', 2009, N'Matica hrvatska', N'Pavličić, Pavao', N'Posveta

Knj. 18', N'Biblioteka Vijenac', 1, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (86, N'Leksikon svjetske književnosti-djela', 2004, N'Školska knjiga', NULL, NULL, NULL, 0, 5)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (87, N'Moby Dick', 1978, N'Sveučilišna naklada Liber', N'Melville, Herman', N'Knj. 2', N'Američki roman u 10 knjiga', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (88, N'Krize, katastrofe i 10 soneta', 2012, N'Naklada Jesenski i Turk', N'Lokotar, Kruno (ur.)', N'Marina Žagar: Neknjiga, Katarina Mihaljević: 8 min i 22 sek, Tea Marković: Eppur si muove, Adriana Pavković: Turbofolkizacija hrvatske književnosti, Medijski stvorena književnost, Marina Mijoč: Teška pitanja lake književnosti, Da li je istina: 10 soneta (Anamarija Kozina)', NULL, 1, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (89, N'Kako svladati strah', 1991, N'Založba Mladinska knjiga', N'Hauck, P.', NULL, NULL, 1, 11)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (90, N'Staroslavenski jezik', 2005, N'Hrvatska sveučilišna naklada', N'Damjanović, Stjepan', NULL, NULL, 1, 3)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (91, N'Alica u Zemlji Čudesa Lewisa Carrolla', 2001, N'Mozaik knjiga', N'Visinko, Karol', NULL, NULL, 0, 3)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (92, N'Uvođenje u umjetnost filma i televizije', 1977, N'Radnički univerzitet "Radivoj Ćirpanov"', N'Težak, S./ Vrabec, M.', NULL, NULL, 0, 4)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (93, N'Talijansko-hrvatski rječnik', 1995, N'Školska knjiga', N'Jernej, Anita', NULL, NULL, 0, 5)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (94, N'Pojmovnik popularne glazbe', 2001, N'Šareni dućan', N'Gall, Zlatko', NULL, NULL, 0, 5)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (95, N'Zrnca mudrosti o ljubavi', 2004, N'Mozaik knjiga', NULL, NULL, NULL, 1, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (96, N'Ljubavna pisma hrvatskih književnika', 1984, N'Stvarnost', N'Rogošić, Mirko', NULL, N'Biblioteka Jabuka', 1, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (97, N'Boja magije', 2002, N'Marjan tisak', N'Pratchett, Terry', N'Knj. 1', N'Roman o Svijetu Diska', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (98, N'Čudesno svjetlo', 2002, N'Marjan tisak', N'Pratchett, Terry', N'Knj. 2', N'Roman o Svijetu Diska', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (99, N'Jednakost rituala', 2003, N'Marjan tisak', N'Pratchett, Terry', N'Knj. 3', N'Roman o Svijetu Diska', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (100, N'Managing Stress', 1979, N'Ama Com', N'Yates, Jere. E.', N'Posveta Orbi', NULL, 0, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (101, N'84 Charing Cross Road', 2006, N'Virago Press', N'Hanff, Helene', NULL, N'Virago modern classics', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (102, N'Ex Libris : confessions of a common reader', 1999, N'Farrar, Straus and Giroux', N'Fadiman, Anne', N'Marrying libraries --
The joy of sesquipedalians --
My odd shelf --
Scorn not the sonnet --
Never do that to a book --
True womanhood --
Words on a flyleaf --
You are there --
The His''er problem --
Insert a caret --
Eternal ink --
The literary glutton --
Nothing new under the sun --
The catalogical imperative --
My ancestral castles --
Sharing the mayhem --
The P.M.''s empire of books --
Secondhand prose.', NULL, 1, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (103, N'A Gentle Madness: Bibliophiles, Bibliomanes and the Eternal Passion for Books', 1995, N'Henry Holt', N'Basbanes, Nicholas A.', N'Touching the hand --
Balm for the soul --
Rule Britannia --
America, Americans, Americana --
Brandy for heroes --
To have and to have no more --
Infinite riches --
Mirror images --
Instant ivy --
Obsessed amateurs --
Destiny --
Continental drift --
The Blumberg collection --
Carpe Diem.', NULL, 0, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (104, N'Jadranka : Kći Lotršćaka', 1987, N'August Cesarec', N'Jurić Zagorka, Marija', N' Lektira', N'Biblioteka Izabrana djela', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (105, N'Kako bolje spavati', 1993, N'Založba Mladinska knjiga', N'Tyrer, Peter', NULL, NULL, 0, 11)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (106, N'Vodič kroz lektiru za niže razrede osnovne škole', 2005, N'Mozaik knjiga', N'Uskoković, Davor', NULL, NULL, 0, 3)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (107, N'Postani glumac', 2004, N'Dušević&Kršovnik', N'Farndon, John', NULL, NULL, 1, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (108, N'Čitanka iz stranih književnosti 1', 1978, N'Školska knjiga', N'Košutić-Brozović, Nevenka', NULL, NULL, 1, 4)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (109, N'Njemački za 3 mjeseca', 2005, N'Mozaik knjiga', N'Martin,S.', N'+ cd', NULL, 0, 4)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (110, N'Čitanka iz stranih književnosti 2', 2003, N'Školska knjiga', N'Košutić-Brozović, Nevenka', N'Od romantizma do naših dana', NULL, 1, 4)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (111, N'Joga za neupućene', 2005, N'Mikroknjiga', N'Feuerstein/Payne', NULL, NULL, 0, 11)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (112, N'Enciklopedija novih religija', 2005, N'Naklada Ljevak', N'Partridge, C. (ur)', NULL, NULL, 0, 5)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (113, N'Uvod u književnost', 1983, N'Grafički zavod Hrvatske', N'Škreb/Stamać', NULL, NULL, 1, 3)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (114, N'English Dictionary for Advanced Learners', 2001, N'Harper Collins', NULL, NULL, NULL, 0, 5)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (115, N'Veliki englesko-hrvatski rječnik', 2005, N'Nakladni zavod Globus', N'Bujas, Željko', NULL, NULL, 0, 5)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (116, N'Veliki hrvatsko-engleski rječnik', 2005, N'Nakladni zavod Globus', N'Bujas, Željko', NULL, NULL, 0, 5)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (117, N'Veliki rječnik hrvatskoga jezika', 2006, N'Novi Liber', N'Anić, Vladimir', N'+ Pravopisni priručnik', NULL, 0, 5)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (118, N'Rječnik stranih riječi', 2004, N'Novi Liber', N'Anić, Vladimir/Goldstein, Ivo', NULL, NULL, 0, 5)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (119, N'Biblija', 2007, N'Kršćanska sadašnjost', NULL, NULL, NULL, 0, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (120, N'Oxford Advanced Learner''s Dictionary', 2004, N'Oxford University Press', NULL, NULL, NULL, 0, 5)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (121, N'Hrvatska gramatika', 2005, N'Školska knjiga', N'Barić et al', N'4. izdanje', NULL, 1, 3)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (122, N'Gramatika hrvatskoga jezika', 2005, N'Školska knjiga', N'Silić/Pranjković', N'1. izdanje', NULL, 1, 3)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (123, N'Povijest književnih teorija od antike do kraja 19. st', 1979, N'Sveučilišna naklada Liber', N'Beker, Miroslav', N'Kopija', NULL, 0, 3)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (124, N'Povijest svjetske književnosti', 2003, N'Golden marketing', N'Solar, Milivoj', N'Posudila Marina Čavle studeni 2015. Kopija', NULL, 0, 3)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (125, N'Teorija književnosti', 1988, N'Školska knjiga', N'Solar, Milivoj', N'Kopija', NULL, 1, 3)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (126, N'Uvod u genologiju', 2000, N'Filozofski fakultet u Rijeci', N'Bačić-Karković/ Car-Mihec', N'Kopija', NULL, 1, 3)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (127, N'Anatomija kritike', 2000, N'Golden marketing', N'Frye, Northop', N'Kopija', NULL, 0, 3)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (128, N'Funkcionalni stilovi hrvatskoga jezika', 2006, N'Disput', N'Silić, Josip', N'Kopija', NULL, 1, 3)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (129, N'Introducing phonetics and phonology', 1998, N'Arnold', N'Davenport/Hannahs', N'Kopija', NULL, 1, 2)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (130, N'Teorija i praksa nastave hrvatskoga jezika 1', 1996, N'Školska knjiga', N'Težak, Stjepko', N'Kopija
Posudila Jasminki', NULL, 1, 3)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (131, N'Jezično izražavanje u nastavi hrvatskoga jezika', 2010, N'Školska knjiga', N'Visinko, Karol', N'Kopija
Posudila Jasminki', NULL, 1, 3)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (132, N'Učenje ne mora biti mučenje', 2001, N'Stepress', N'Knoblauch, J.', N'Kopija', NULL, 1, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (133, N'A reader''s Guide to Contemporary Literary Theory', 1997, N'Prentice Hall', N'Selden et al', N'Kopija', NULL, 0, 2)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (134, N'Englesko-hrvatski frazeološki rječnik', 2006, N'Školska knjiga', N'Bendow, Ivana', N'Kopija', NULL, 0, 5)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (135, N'An introduction to English grammar', 1996, N'Longman', N'Greenbaum, S.', N'Kopija', NULL, 0, 2)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (136, N'Grammar and Vocabulary for Cambridge Advanced and Proficiency', 2007, N'Longman', N'Side/Wellman', N'Kopija', NULL, 0, 4)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (137, N'Literary theory: an introduction', 1996, N'Blackwell', N'Eagleton, Terry', N'Kopija', NULL, 0, 2)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (138, N'Izrada nastavnih programa prema pristupu temeljenom na ishodima učenja', 2008, N'Sveučilište u Rijeci', N'Kovač/Kolić-Vehovec', N'Kopija - neuvezano', NULL, 1, 10)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (139, N'Između redaka', 2008, N'Izdavački centar Rijeka', N'Badurina, Lada', N'Kopija - neuvezano', NULL, 1, 3)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (140, N'Landslide (Level 4)', 1990, N'Collins', N'Bagley, Desmond', N'Level 4 Reader', N'Collins English library', 0, 3014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (141, N'Clint Magee (level 3)', 1990, N'Longman', N'Alexander, Louis George', NULL, N'Longman structural readers: fiction', 0, 3014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (142, N'The story of our canals', 1975, N'Ladybird books', N'Hutchings, Carol', NULL, N'Achievements book series', 0, 3014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (143, N'The big sleep (level 4)', 1992, N'Oxford University Press', N'Chandler, Raymond', NULL, N'Oxford bookworms', 0, 3014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (144, N'Farewell, my lovely (level 3)', 1991, N'Penguin Books', N'Chandler, Raymond', NULL, N'Simply Stories', 0, 3014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (145, N'A Christmas carol ', 1998, N'Longman', N'Dickens, Charles', N'Level 2', N'Longman Classics', 1, 3014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (146, N'Hostage Tower (level 4)', 1992, N'Nelson', N'MacLeans, Alistair', NULL, N'Nelson readers', 0, 3014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (147, N'The lost umbrella of Kim Chu (level 0)', 1989, N'Oxford University Press', N'Estes, Eleanor', N'Introductory grade', N'Oxford progressive English readers', 1, 3014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (148, N'Rough justice (Level 3)', 1990, N'Edward Arnold', N'Cadman, Rita', N'Level 3', N'Edward Arnold readers library', 0, 3014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (149, N'Robinson Crusoe (level 3)', 1977, N'Longman', N'Defoe, Daniel', NULL, N'NMSR', 0, 3014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (150, N'To catch a thief (senior level)', 1986, N'Oxford University Press', N'Kaye, Geraldine', NULL, N'Oxford graded readers', 0, 3014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (151, N'The world in winter (level 1000w)', 1987, N'Oxford University Press', N'Cristopher, John', NULL, N'Alpha science fiction', 0, 3014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (152, N'An Outline of English Grammar', 1989, N'Školska knjiga', N'Filipović, Rudolf', NULL, NULL, 1, 2)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (153, N'Success Intermediate Testing and Evaluation Book', 2007, N'Longman', N'Fricker. R./Siuta, T.', N'Kopija', NULL, 0, 4)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (154, N'Hrvatski jezik 3-gimnazija', 1998, N'Školska knjiga', N'Pranjković, Ivo', NULL, NULL, 0, 4)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (155, N'Hrvatska početnica', 1993, N'Školska knjiga', N'Šabić/Vitez/Baričević', N'1 r oš
prvo izdanje', NULL, 1, 4)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (156, N'Hrvatski jezik 6-metodički priručnik za nastavnike', 2007, N'Školska knjiga', N'Težak et al', NULL, NULL, 0, 4)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (157, N'Hrvatski jezik 7-metodički priručnik za nastavnike', 2007, N'Školska knjiga', N'Težak et al', NULL, NULL, 0, 4)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (158, N'Hrvatski jezik-jezik, izražavanje i stvaranje', 1996, N'Školska knjiga', N'Težak/Brigljević', N'8. r oš', NULL, 0, 4)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (159, N'Leksikologija hrvatskoga jezika i povijest hrv jezika u 20 st.', 1995, N'Školska knjiga', N'Samardžija, Marko', N'4. r gimn', NULL, 0, 4)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (160, N'Hrvatski školski pravopis', 2005, N'Školska knjiga', N'Babić/Ham/Moguš', N'1 izd.', NULL, 1, 3)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (161, N'Radost čitanja 7', 2010, N'Školska knjiga', N'Diklić/Skok/Merkler', N'7. r oš
2. izdanje', NULL, 1, 4)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (162, N'Hrvatski jezik 5-metodički priručnik za nastavnike', 2006, N'Školska knjiga', N'Težak et al', NULL, NULL, 0, 4)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (163, N'Čitanka za 5 r oš', 1992, N'Školska knjiga', N'Haramina/Zalar', N'5. r oš
2 izm izd', NULL, 0, 4)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (164, N'Fon-fon 1', 2005, N'Profil', N'Dujmović-Markusi', N'1 r gimn
3. izd', NULL, 0, 4)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (165, N'Hrvatski jezik 1', 1998, N'Školska knjiga', N'Silić, Josip', N'1. r gimn
Kopija', NULL, 0, 4)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (166, N'Hrvatska čitanka 7', 1994, N'Školska knjiga', N'Diklić/Skok', N'7. r oš,1. izdanje', NULL, 0, 4)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (167, N'Čitanka za 1 r trogodišnje strukovne škole', 2007, N'Školska knjiga', N'Zrinjan/Zubkvić-Ožbolt', N'1 r struk, 7. izd', NULL, 0, 4)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (168, N'Čitanka za 1 razred gimnazije', 2001, N'Školska knjiga', N'Skupina autora', N'1. r gimn', NULL, 0, 4)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (169, N'Čitanka 2 za drugi r gimnazije', 1999, N'Školska knjiga', N'Skupina autora', N'2 r gimn, 3. izd', NULL, 0, 4)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (170, N'Čitanka za 3 razred gimnazije', 1999, N'Školska knjiga', N'Skupina autora', N'3 r gimn, 3 izd.', NULL, 0, 4)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (171, N'Književnost 4', 2009, N'Alfa', N'Solar/Zrinjan', N'4 r gimn', NULL, 0, 4)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (172, N'An Outline of English Grammar', 1998, N'Školska knjiga', N'Filipović, Rudolf', N'24 izd', NULL, 0, 2)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (173, N'Headway Advanced Student''s Book', 1997, N'Oxford University Press', N'Soars Liz& John', NULL, NULL, 0, 4)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (174, N'Oxford English for IT', 2002, N'Oxford University Press', N'Glendinning/McEvan', N'Jadran', NULL, 0, 4)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (175, N'Tehnike i umijeće crtanja', 2004, N'Leo Commerce', N'Sartori, M.', N'Jadran', NULL, 0, 11)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (176, N'Deda i unuk', 1980, N'Jugoreklam', N'Jovanović Zmaj, Jovan', N'Jadran', N'Biblioteka Leptir', 1, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (177, N'Enciklopedija za mlade-književnost', 2004, N'ABC naklada', N'Larousse', N'Jadran', NULL, 0, 5)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (178, N'Seksopedija', 2010, N'Profil', N'Hooper, Anne', N'Jadran', NULL, 0, 11)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (179, N'Seks-priručnik za ljubavnike', 2007, N'Leo Commerce', N'Bastyra, Judy', N'Jadran', NULL, 0, 11)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (180, N'Logaritamske tablice ', 1996, N'Školska knjiga', NULL, N'Jadran', NULL, 0, 4)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (181, N'Riznica prirode', 1974, N'Školska knjiga', N'Morris Parker, B.', N'Jadran', NULL, 0, 5)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (182, N'The Kingfisher History Encyclopedia', 1999, N'Ted Smart', NULL, N'Jadran', NULL, 0, 5)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (183, N'Priručnik za preživljavanje', 2002, N'Algoritam', N'Piven/Borgenicht', N'Jadran', NULL, 0, 11)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (184, N'Ljekovito bilje', 2007, N'Begen', N'Kremer, B. P.', N'Jadran', NULL, 0, 11)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (185, N'Misteriji svijeta', 2003, N'Dušević&Kršovnik', N'Shuker, K.', N'Jadran', NULL, 0, 5)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (186, N'National Geographic:Povijest svijeta', 2009, N'Uliks', NULL, N'Jadran', NULL, 0, 5)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (187, N'Školski informatički rječnik', 2003, N'Naklada Ljevak', N'Kiš, Miroslav', NULL, NULL, 0, 5)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (188, N'Succeed at negotiating', 2006, N'Penguin Books', N'Langdon, K.', N'Jadran', NULL, 0, 11)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (189, N'Matematički priručnik', 1969, N'Zagreb', N'Čižek, A.', N'Jadran', NULL, 0, 4)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (190, N'Vodič za razumijevanje mirovinskih fondova', 2006, N'Rifin', N'Miletić, V.', N'Jadran', NULL, 0, 11)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (191, N'EU for you: Kako funkcionira Europska unija', 2006, N'Mzoš', N'Böhm et al', N'Jadran', NULL, 0, 11)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (192, N'Microsoft expression blend', 2009, N'Profil', N'Antolović, M.', N'Jadran', NULL, 0, 11)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (193, N'Simulacisko modeliranje', 1993, N'Školska knjiga', N'Čerić, V.', N'Jadran', NULL, 0, 4)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (194, N'Osnove elektrotehničkih mjerenja', 2001, N'Školska knjiga', N'Vujević/Ferković', N'Jadran', NULL, 0, 4)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (195, N'Informatika za ekonomiste', 2002, N'Sveučilište u Rijeci', N'Šehanović et al', N'Jadran', NULL, 0, 4)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (196, N'Praktičar 1', 1971, N'Školska knjiga', NULL, N'Jadran', NULL, 0, 4)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (197, N'Povijest:Hrvatska povijest (knjiga 21)', 2008, N'Jutarnji list', N'Goldstein, Ivo', N'Jadran', NULL, 0, 10)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (198, N'Jadransko more u sukobima i borbama kroz stoljeća 1', 2004, N'Marjan tisak', N'Novak, G.', N'Jadran', NULL, 0, 10)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (199, N'Kronologija svjetske povijesti', 2004, N'Extrade', NULL, N'Jadran', NULL, 0, 10)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (200, N'Kako poboljšati kvalitetu života primjenom teorije izbora', 2000, N'Futura ', NULL, N'Jadran', NULL, 0, 11)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (201, N'Njemačko-hrvatski i hrvatsko-njemački džepni rječnik', 1994, N'Školska knjiga', N'Medić/Bosner', NULL, NULL, 0, 5)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (202, N'Englesko-hrvatski moderni rječnik', 2005, N'Andromeda', NULL, N'Jadran', NULL, 0, 5)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (203, N'Kolači-savršeni sitni kolači', 0, N'Damibo', NULL, N'Jadran', NULL, 0, 11)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (204, N'Skijati s užitkom', 0, N'Centar za sodobno oblačenje in opremo', N'Maver, Milan', N'Jadran', NULL, 0, 11)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (205, N'Talijanski bez muke', 2001, N'Marjan tisak', NULL, N'Jadran', NULL, 0, 4)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (206, N'Corso d Italiano', 1981, N'Linguaphone Institute', NULL, N'Jadran', NULL, 0, 4)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (207, N'Tečaj talijanskog jezika-priručnik', 1980, N'Linguaphone Institute', NULL, N'Jadran', NULL, 0, 4)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (208, N'Soba ogledala', 2005, N'IBS', N'Cross, C.R.', N'Jadran', NULL, 0, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (209, N'Venice-guide', 2010, N'Storti Edizioni', NULL, N'Jadran', NULL, 0, 11)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (210, N'Trieste-guide', 2005, NULL, NULL, N'Jadran', NULL, 0, 11)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (211, N'Cesta', 2009, N'Profil', N'McCarthy, Cormac', NULL, N'Biblioteka Profil proza', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (212, N'Božićna priča', 2004, N'Večernji list', N'Dickens, Charles', NULL, N'Večernjakova biblioteka : posebno izdanje', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (213, N'Zapisi iz mrtvog doma', 2010, N'Europapress holding', N'Dostojevski, Fjodor Mihajlovič', N'knj. 5', N'Biblioteka Jutarnjeg lista : ruski klasici', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (214, N'Djetinjstvo', 2004, N'Europapress holding', N'Gorki, Maksim', N'Knj. 19', N'Biblioteka Jutarnjeg lista : lektira - klasici', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (215, N'Prosjak Luka/Prijan Lovro', 2004, N'Europapress holding', N'Šenoa, August', N'Knj. 25 
Lektira', N'Biblioteka Jutarnjeg lista : lektira - klasici', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (216, N'Antologija srpske poezije', 1974, N'Školska knjiga', N'Lukić, Sveta', N'Jovan Sterija Popović, Petar II. Petrović Njegoš, Branko Radičević, Đura Jakšić, Jovan Jovanović Zmaj, Laza Kostić, Vojislav Ilić, Aleksa Šantić, Jovan Dučić, Milan Rakić, Vladislav Petković Dis, Sima Pandurović, Veljko Petrović, Milutin Bojić, Miloš Crnjaski, Momčilo Nastasijević, Aleksandar Vučo, Rastko Petrović, Desanka Maksimović, Dušan Matić, Rade Drainac, Dušan Vasiljev, Milan Dedinac, Oskar Davičo, Skender Kulenović, Vasko Popa, Branko V. Radičević, Stevan Raičković, Slobodan Marković, Miodrag Pavlović, Ivan V. lalić, Jovan Hristić, Branko Miljković, Borislav Radović, Ljubomir Somović, Matija Bećković', N'Biblioteka Dobra knjiga', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (217, N'Ana Karenjina 2', 2010, N'Europapress holding', N'Tolstoj, Lav Nikolajevič', N'Knj. 2 
Knjiga u dva sveska ', N'Biblioteka Jutarnjeg lista : ruski klasici', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (218, N'Java J2SE 5', 2006, N'Mikroknjiga', N'Schildt, Herbert', N'Jadran', NULL, 0, 11)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (219, N'C++ jasnim jezikom', 2002, N'Mikroknjiga', N'Overland, Brian', N'Jadran', NULL, 0, 11)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (220, N'Javascript za 24 časa', 2003, N'Kompjuter biblioteka', N'Moncur,Michael', N'Jadran', NULL, 0, 11)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (221, N'SQL Server 2005 za 24 časa', 2006, N'Kompjuter biblioteka', N'Blater, Alison', N'Jadran', NULL, 0, 11)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (222, N'Microsoft Word 2000', 2000, N'Adamić', N'Šavle, Silvano', NULL, NULL, 0, 11)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (223, N'Demistificirani C++', 2003, N'Element', N'Šribar/Motik', N'Jadran', NULL, 0, 11)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (224, N'Astronomija: vodič po noćnom nebu', 2003, N'Dušević&Kršovnik', N'Tyrion, Will', N'Posudili Ani 12. 10. 2018.
Jadran', NULL, 0, 2014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (225, N'Novi nemački bez muke', 1987, N'AssiMill', N'Schneider', N'Jadran', NULL, 0, 11)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (226, N'Die Inselgrupe Kornati', 1984, NULL, NULL, N'Jadran', NULL, 0, 11)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (227, N'Naučimo da plivamo', 1975, N'Partizan', N'Zahorjević/Matković', NULL, NULL, 0, 11)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (228, N'Italijanski 2000s', 1976, N'RTV Ljubljana', NULL, NULL, NULL, 0, 11)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (229, N'Italijanski 2000s 2', 1976, N'RTV Ljubljana', NULL, NULL, NULL, 0, 11)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (230, N'Tehnologija obrade  i montaže', 1995, N'UM', N'Matošević, Mijo', N'1. r strojarske škole', NULL, 0, 4)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (231, N'Hidraulika', 1975, N'Školska knjiga', N'Černe', NULL, NULL, 0, 4)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (232, N'Zbirka zadataka iz fizike', 1986, N'Školska knjiga', N'Mikuličić et al', NULL, NULL, 0, 4)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (233, N'Howards End is on the Landing', 2009, N'Profile Books', N'Hill, Susan', N'Starting point --
No order, no order --
A corner of St. James''s --
Saturday mornings and Wednesday afternoons --
Next to the pop-up books --
Great Expectations behind the sofa --
This is the weather the cuckoo likes --
The well-travelled bookcase --
Laughter in the next room --
Amis, père et fils --
Never got around to it, don''t like the look of it, couldn''t get beyond page 10 and other poor excuses --
A little list --
Things that fall out of books --
It ain''t broke --
... Diaries --
One half of the world cannot understand the pleasures of the other --
Life is a handfull of short stories --
The man with the charming smile --
Children 3, adults 0 --
Decline and rise? --
Forgotten --
Writing in books --
Who''s afraid? --
The dregs? --
Not met --
Sebald --
Collection, compilation, miscellany --
A book by its cover --
Roots --
Slow, slow, slow, slow-slow, slow --
Long bard --
The way we live now --
Picture books --
Bad bed-fellows --
Sea interludes --
Hardy --
Down among the women --
Reading for the soul --
A thousand books of the world --
The final forty.', NULL, 1, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (234, N'So many books, so little time', 2003, N'Penguin Books', N'Nelson, Sara', N'January 6 : Great expectations --
January 20 : A word about Leo --
February 1 : Double-booked --
February 8 : Endless love --
February 13 : 92 in the shade --
February 20 : More about Mom --
February 27 : The Clean Plate Book Club --
March 8 : Hype --
March 15 : Eating crow --
March 22 : Sharing books gives me heartburn --
March 29 : Nothing happened --
April 6 : Book by book --
April 15 : Even greater expectations --
April 22 : And the Oscar goes to--
--
April 30 : Dear Mr. Robert Plunket --
May 5 : P.S.I lied --
May 12 : Baseball, part I --
May 20 : Baseball, part II --
June 1 : Summer reading --
June 22 : A million little pieces --
July 6 : The time machine --
July 20 : Reading confidential --
August 20 : Anna, Emma, and me --
September 1 : Acknowledge this! --
September 11 : Oh, God --
September 18 : Kid stuff --
September 25 : Sex and the city --
October 2 : Sex and the city--across the pond --
October 10 : Afterlife with Father --
October 24 : No business like our business --
November 3 : Saturdays with Charley --
November 15 : Oeuvre and oeuvre again --
November 25 : Openings --
December 10 : Friends and family --
December 30 : What did I do? --
Epilogue.', N'Berkly Books', 1, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (235, N'The complete polysylabic spree', 2007, N'Penguin Books', N'Hornby, Nick', N'September 2003-June 2006', NULL, 1, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (236, N'Leave me alone, I''m reading', 2005, N'Random House', N'Corrigan, Maureen', N'Ain''t no mountain high enough: women''s extreme-adventure stories (and one of my own) --
Tales of toil: what John Ruskin and Sam Spade taught me about working for a living --
"They''re writing songs of love, but not for me": Gaudy night and other alternatives to the traditional "mating, dating, and procreating" plot --
Praise the Lord and pass the ammunition: what Catholic martyr stories taught me about getting to heaven--and getting even --
Epilogue. My New York: September 8, 2001.', NULL, 0, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (237, N'Ana Karenjina 1', 2010, N'Europapress holding', N'Tolstoj, Lav Nikolajevič', N'Knj. 1 
Knjiga u 2 sveska 
Posveta ', N'Biblioteka Jutarnjeg lista : ruski klasici', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (238, N'The book thief', 2008, N'Pan Macmillan', N'Zusak, Markus', NULL, N'Picadoor Books', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (239, N'Mostarske kiše i neko drugo more', 1984, N'Mladost', N'Zubac, Pero', N'Porodična večera, Odocnile rime, Neko drugo more, Na drugoj obali, dalekoj, Zakasnela pisma, Večernji razgovori sa gospodinom, Hrist, ljuvene, Sonetni venac, Iz hungarskih katrena, Pesme o Tadju, Kazališstanske osamenke, U bilu detinjstva, Povratak u Kalamoti, Mostarske kiše, Posle mene', N'Biblioteka Zlatno slovo', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (240, N'Drame (Romeo i Đulijeta, Hamlet, Otelo)', 1989, N'Svjetlost', N'Shakespeare, William', N'Posveta Jadran', N'Biblioteka izabranih djela', 1, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (241, N'Čudesni Maurice i njegovi učeni glodavci', 2003, N'Marjan tisak', N'Pratchett, Terry', N'Knj. 28', N'Roman o Svijetu Diska', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (242, N'Mort', 2003, N'Marjan tisak', N'Pratchett, Terry', N'Knj. 4', N'Roman o Svijetu Diska', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (243, N'Umijeće čitanja lica', 2002, N'Mozaik knjiga', N'Brown, S. G.', NULL, NULL, 0, 11)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (244, N'501 must-read Books', 2007, N'Bounty Books', N'Beare, Emma (ed.)', NULL, N'501 series', 0, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (245, N'The tin soldier (junior level)', 1986, N'Oxford University Press', N'Andersen, Hans Christian', NULL, N'Oxford graded readers', 1, 3014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (246, N'The black case (senior level)', 1989, N'Oxford University Press', N'Cox, Alwyn', NULL, N'Oxford graded readers', 0, 3014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (247, N'Twice Shy (Penguin English level 2)', 1992, N'Penguin Books', N'Francis, Dick', NULL, N'Penguin readers', 0, 3014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (248, N'Computers: from beads to bytes (level 3)', 1989, N'Collins', N'Dewar, Peter', N'Level 3 Reader', N'Collins English library', 0, 3014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (249, N'The stranger (elementary level)', 1986, N'Heinemann', N'Whitney, Norman', NULL, N'Heinmann guided readers', 0, 3014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (250, N'The Sacrifice (Level 5)', 1989, N'Oxford University Press', N'Iggulden, Margaret', NULL, N'Streamline graded readers', 0, 3014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (251, N'Hannah and her dad (level 4)', 1994, N'Macmillan', N'Caisley, Raewyn', NULL, N'Voyages', 1, 3014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (252, N'Pasquale''s gift (level 4)', 1994, N'Macmillan', N'Lukic, Marie', NULL, N'Voyages', 0, 3014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (253, N'Sleepin beauty/Bluebeard (junior level)', 1986, N'Oxford University Press', N'Perrault, Charles', NULL, N'Oxford graded readers', 1, 3014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (254, N'Beauty and the beast (junior level)', 1985, N'Oxford University Press', N'Beaumont de, J.', NULL, N'Oxford graded readers', 1, 3014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (255, N'Juan''s eyes (level 1)', 1991, N'Macmillan', N'Christian, Carol', NULL, N'Rangers', 0, 3014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (256, N'Johnny Ring (level 4)', 1989, N'Macmillan', N'Christian, Carol', NULL, N'Rangers', 0, 3014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (257, N'Red shoes (junior level)', 1986, N'Oxford University Press', N'Andersen, Hans Christian', NULL, N'Oxford graded readers', 1, 3014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (258, N'Cindarella/The sisters (junior level)', 1986, N'Oxford University Press', N'Grimm, Jakob i Wilhelm', NULL, N'Oxford graded readers', 1, 3014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (259, N'Waitapu', 1985, N'Mladost', N'Horvat, Joža', NULL, N'Biblioteka Vjeverica', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (260, N'Taras Buljba', 2010, N'Europapress holding', N'Gogolj, Nikolaj Vasiljevič', N'Knj. 9', N'Biblioteka Jutarnjeg lista : ruski klasici', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (261, N'Tri sestre/Ujak Vanja/Višnjik', 2010, N'Europapress holding', N'Čehov, Anton Pavlovič', N'Knj. 3', N'Biblioteka Jutarnjeg lista : ruski klasici', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (262, N'Obiteljska sreća/Dva husara', 2010, N'Europapress holding', N'Tolstoj, Lav Nikolajevič', N'Knj. 16', N'Biblioteka Jutarnjeg lista : ruski klasici', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (263, N'Galeb Johnatan Livigston', 1977, N'Znanje', N'Bach, Richard', N'Lektira', N'Biblioteka Hit', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (264, N'Mrtve duše', 2005, N'Globus Media', N'Gogolj, Nikolaj Vasiljevič', N'Knj. 8 
Lektira', N'Jutarnji list : lektira popularni klasici', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (265, N'Švabica i druge pripovetke', 1973, N'Veselin Masleša', N'Lazarević, L.', N'GS', N'Biblioteka Lektira', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (266, N'Dobar protiv sjeverca', 2009, N'Znanje', N'Glattauer, Daniel', NULL, N'Biblioteka HIT', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (267, N'Zvonar crkve Notre-Dame', 2005, N'Globus Media', N'Hugo, Victor', N'Knj. 19', N'Biblioteka Jutarnjeg lista : najveća djela', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (268, N'Good fiction guide', 2002, N'Oxford University Press', N'Rogers, Jane (ed.)', N'Adventure / Robert McCrum --
Africa / Anthony Chennells --
Australia and New Zealand / Jane Rogers --
Black and white / Rita Christian --
Canada / Aritha van Herk --
Caribbean / E.A. Markham --
Childhood / Jan Dalley --
Classics / John Sutherland --
Crime / Michael Dibdin --
Family saga / Sherry Ashworth --
Fantasy / Tom Shippey --
Film adaptations / Mike Harris --
France / Michele Roberts --
Germany / Michael Hulse --
Glamour / Kate Saunders --
Historical / Boyd Tonkin --
Humour / Nigel Williams --
Indian / Shirley Chew --
Ireland / Patricia Craig --
Magic realism / Carol Birch --
Romance / Elizabeth Buchan --
Russia/ Lesley Chamberlain --
Science fiction / Livi Michael --
The sea / Tony Tanner --
Sexual politics / Maureen Freely --
Short stories / Lesley Glaister --
Social issues / Valentine Cunningham --
Spy / Michael Shea. Supernatural / Michael Cox --
Teen / Adele Geras --
Thrillers / Val McDermid --
United States of America / Richard Francis --
War / Mike Harris --
Western / Lee Clark Mitchell', NULL, 0, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (269, N'501 must-see movies', 2007, N'Bantam Books', N'Beare, Emma (ed.)', NULL, N'501 series', 0, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (270, N'Djetinjstvo, dječaštvo, mladost', 1961, N'Matica hrvatska', N'Tolstoj, Lav Nikolajevič', N'Knj. 11', N'Izabrana djela L. N. Tolstoja', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (271, N'Kreutzerova sonata', 1961, N'Matica hrvatska', N'Tolstoj, Lav Nikolajevič', N'Knj. 10', N'Izabrana djela L. N. Tolstoja', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (272, N'Mali princ', 2012, N'Školska knjiga', N'Saint-Exupery, Antoine de', N'Posveta.
', N'Moja knjiga - metodički obrađena lektira', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (273, N'Sanjin', 2010, N'Disput', N'Arcibašev, Mihail', N'Poznata uspješnica razdoblja belle epoque, "Sanjin" Mihaila Arcibaševa, roman je s famom najvećeg književnog skandala XX. stoljeća. Premda izniklo iz duha "buđenja masa" između dviju ruskih revolucija, ovo je djelo, prepuno "obnaženih tijela i slika sladostrašća", bilo kultnom knjigom više naraštaja europske inteligencije, a duboko se dojmilo, kao što je poznato, i slavnog prozaika D. H. Lawrencea. U zemljama tzv. istočnog bloka Arcibašev je bio zabranjen sve do 1990, zajedno s "okorjelim erotomanima" Millerom i Nabokovom.
', N'Biblioteka Na tragu klasika', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (274, N'Villette', 1974, N'Nakladni zavod MH', N'Brontë, Charlotte', N'Roman Villette potvrđuje autoričin smisao za univerzalne teme, obrađujući problem jedinstva dobrih ljudi u tom nepravednom svijetu. Lucy Snowe, nepouzdana propovjedačica iznosi priču o svom životu punom prepreka, ali i malih radosti. Kako se snalazi Engleskinja u Francuskoj koja je bez ičega i ikog?', N'Sestre Brontë', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (275, N'Vile suđenice', 2004, N'Marjan tisak', N'Pratchett, Terry', N'Knj. 6', N'Roman o Svijetu Diska', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (276, N'Piramide', 2008, N'Marjan tisak', N'Pratchett, Terry', N'Knj. 7', N'Roman o Svijetu Diska', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (277, N'Zlatna knjiga svjetske ljubavne poezije', 1967, N'Nakladni zavod MH', N'Nikola Milićević (ur.)', N'Posveta', N'Biblioteka Zlatna knjiga', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (278, N'Reading Lolita in Tehran', 2004, N'Fourth Estate', N'Nafisi, Azar', NULL, N'Non-fiction', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (279, N'The golden compass', 2007, N'Scolastic', N'Pullman, Phillip', N'Knjiga 1', N'His dark materials', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (280, N'The complete cronicles of Narnia', 1998, N'Harper Collins', N'Lewis, Clive Staples', N'Magician''s nephew --The lion, the witch and the wardrobe --Horse and his boy --Prince Caspian --Voyage of the Dawn Treader --The silver chair --The last battle.', N'100 Years of CS Lewis', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (281, N'Uz genealogiju morala ', 2004, N'AGM', N'Nietzsche, Friedrich', N'Posveta', N'Biblioteka Meta', 0, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (282, N'William Shakespeare and his dramatic act', 2004, N'Hippo', N'Donkin, Andrew', N'Posuđeno: Jasminka Batagelj listopad 2014.', NULL, 0, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (283, N'The subtle knife', 1997, N'Random house ', N'Pullman, Phillip', N'Knj. 2', N'His dark materials', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (284, N'The Amber Spyglass', 2007, N'Scolastic', N'Pullman, Phillip', N'Knjiga 3', N'His dark materials', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (285, N'The ultimate teen book guide', 2006, N'A&C Black', N'Almond, David', NULL, N'The ultimate book guide', 0, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (286, N'The Albatross book of short stories', 1936, N'The Albatross', N'Wegner, Max Christian (ed.)', N'The Widow of Ephesus (M. Armstrong), The Partner (J. Conrad), The Almond tree (W. de la Mare), The first and the last (J. Galsworthy), Bare-knuckle lover (L. Golding), Little Mexicxan (A. Huxley), The dead (J. Joyce), The white stocking (D. H. Lawrence), Mr. Strenberry''s tale (J. B. Priestley), Her son (V. Sackville-West), His ship comes home (O. Sitwell), The burial race (L. A. G. Strong), The last trump (H. Walpole), Orange blossom (F. B. Young)', N'The Albatross modern continental library', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (287, N'Mansfield park', 1994, N'Penguin Books', N'Austen, Jane', NULL, N'Penguin Popular Classics', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (288, N'Great Ideas - Listening and Speaking activities for students of AmE', 1987, N'Cambridge University Press', N'Jones, Leo/Kimbrough Victoria', NULL, NULL, 0, 11)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (289, N'Feng Shui za neznalice', 2013, N'Naklada Uliks', N'Kennedy, David Daniel', N'Prijevod Ivona Matković', NULL, 0, 11)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (290, N'Stanarka napuštene kuće', 1975, N'Nakladni zavod MH', N'Brontë, Anne', N'Gilbert Markham, pripovjedač, piše pismo svoje prijatelju o tajanstvenoj ženi koja se sa svojim sinom doselila u do tada napušteni dvorac Wildfell Hall u malom mjestu u pokrajini Yorkshire. Iako mlada žena živi povučeno, Markhamovim društvenim krugovima uskoro počinju kružiti informacije o njoj – ime joj je Helen Graham i udovica je. Uskoro o njoj počinju kružiti i mračnije glasine u koje Markham odbija povjerovati jer je u nekoliko kratkih susreta s tom ženom zaključio da je ona časno i plemenito biće. Postupno i samome njemu postaje jasno da javno staje u njezinu obranu i zbog drugog razloga – polako mu je postala iznimno draga ta tiha, inteligentna žena. Počinje joj se udvarati, ali ne razumije njeno pristojno, ali čvrsto odbijanje za koje ona nikada ne nudi jasne razloge, stoga on ostaje ustrajan. Helen na koncu, smatrajući da će ta gesta biti upozorenje, ali i jasna poruka da ne mogu imati zajedničke budućnosti, daje Markhamu svoj dnevnik. On se konačno upoznaje s njenom gorkom i bolnom prošlosti, ali i sa izrazito teškim trenutnim položajem.', N'Sestre Brontë', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (291, N'Kineska knjiga čuda', 2010, N'Planet Zoe', N'Hinsdale Pitman, Norman', N'Zlatna buba, Zvono svih zvona, Kudravi liječnik, Duh lisice, Brbljava riba, Bambus i kornjača, Luda guska i tigrova šuma, Savjesni tigar, Princeza Guanyin, Dva žonglera, Fantomski brod, Duh iz kutije, Grumen zlata, Čovjek patka, Priča o Lusan', NULL, 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (292, N'The wind in the willows', 1993, N'Wordsworth Editions', N'Grahame, Kenneth', NULL, N'Wordsworth Classics', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (293, N'Alica u Zemlji čudesa i iza zrcala', 1985, N'Nakladni zavod MH', N'Carroll, Lewis', N'Knj. 4', N'Omladinska biblioteka', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (294, N'700 Clasroom Activities', 2005, N'Macmillan Books', N'Seymour, D./Popova, M.', NULL, NULL, 0, 2)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (295, N'Književnost-školski leksikon', 1965, N'Panorama', N'Čubelić, Tvrtko', NULL, NULL, 0, 5)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (296, N'Povijest čitanja', 2001, N'Prometej', N'Manguel, Alberto', NULL, N'Biblioteka Rara Avis', 0, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (297, N'Vlak u snijegu', 1975, N'Mladost', N'Lovrak, Mato', N'Lektira', N'Biblioteka Vjeverica', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (298, N'Aslak, dječak sa sjevera', 1970, N'Mladost', N'Wahlstedt, Viola', NULL, N'Biblioteka Vjeverica', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (299, N'Heidi', 1986, N'Mladost', N'Spyri, Johanna', NULL, N'Biblioteka Vjeverica', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (300, N'Povijest filozofije', 1980, N'Školska knjiga', N'Kalin, Boris', NULL, NULL, 0, 4)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (301, N'O čitateljskim grupama', 2014, N'Balans', N'Bašić, Ivana', NULL, NULL, 1, 10)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (302, N'Soundtrack života', 2011, N'Znanje', N'Jurkas, Anđelo', NULL, NULL, 0, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (303, N'Good Wives', 1995, N'Penguin Books', N'Alcott, Louisa May', N'Knj. 2
Three years on from Little Women, the four March girls have developed into young adults, with their eyes directed towards the future.', N'Little Women series', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (304, N'U tami svjetlo', 1977, N'Mladost', N'Ivanac, Ivica', N'Potpis autora', N'Biblioteka Jelen', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (305, N'The cat who came in off the roof', 2014, N'Pushkin Children''s books', N'Schmidt, Annie Maria Geertruida', N'Posudila Jasminki kolovoz 2016.
Danska književnost', N'Pushkin Children''s', 1, 2014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (306, N'The Letter for the King', 2014, N'Pushkin Children''s books', N'Dragt, Tonke', N'Danska književnost', N'Pushkin Children''s', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (307, N'American literature', 1953, N'Barnes&Noble', N'Crawford, B. V. et al', NULL, NULL, 0, 2)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (308, N'Priče iz davnine', 1973, N'Mladost', N'Brlić-Mažuranić, Ivana', N'Kako je Potjeh tražio istinu, Ribar Palunko i njegova žena, Regoč, Šuma Striborova, Bratac Jaglenac i sestrica Rutvica, Lutonjica Toporko i devet župančića, Sunce djever i Neva Nevičica, Jagor', N'Biblioteka Vjeverica', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (309, N'Svih sedam valova', 2013, N'Znanje', N'Glattauer, David', N'Knj. 164
Serijal-Protiv sjevernog vjetra, 2. dio', N'Knjiga dostupna svima', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (310, N'Vježbanje života', 1990, N'Znanje', N'Fabrio, Nedjeljko', N'Lektira', N'Biblioteka Evergrin', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (311, N'Jelena, žena koje nema', 1967, N'Mladost', N'Andrić, Ivo', N'Ankina vremena, Mara milosnica, Ljubav u kasabi, Ćorkan i Švabica, Žena na kamenu, Igra, Žena od slonove kosti, Bajron u Sintri, Jelena, žena koje nema

Knjiga sedma', N'Sabrana djela Ive Andrića', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (312, N'Pjesme', 1975, N'Mladost', N'Neruda, Pablo', N'Posuđeno Jasminka?
Dvadeset ljubavnih pjesama, Boravište na zemlji, Španjolska u srcu, Sveopći spjev, Elementarne ode, Estravagario, Sto ljubavnih soneta, Podsjetnik iz Isla Negre, Umjetnost ptica', N'Biblioteka Jelen', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (313, N'Velika tvornica riječi', 2013, N'ArTresor naklada', N'Lestrade, Agnes de', N'Slikovnica', N'Biblioteka Mali Medvjed', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (314, N'Rat i mir II', 1960, N'Matica hrvatska', N'Tolstoj, Lav Nikolajevič', N'Knj. 5
Knjiga u 4 sveska', N'Izabrana djela L. N. Tolstoja', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (315, N'Rat i mir III', 1961, N'Matica hrvatska', N'Tolstoj, Lav Nikolajevič', N'Knj. 6
Knjiga u 4 sveska', N'Izabrana djela L. N. Tolstoja', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (316, N'Kaktus bajke', 1970, N'Mladost', N'Škrinjarić, Sunčana', N'Traži se naslov, Njegovo veličanstvo poštar, Čarobnjak i bijeli zec, Slikar pod hrastom, Sve ima svoj kraj, pa i maštarije, Čovječuljak od plamena, Neposlušne tipke, Igra svjetla, Krčag pun snova, Zmaj od stakla, Veličanstveni mačak, Najmanja priča na svijetu, Kaktus bajke za male ježeve, Priča o crvenom maku, Putovanje stare kornjače, Divlji kesten iz moje ulice, Vjetar na ljetovanju, Izlet sa Sivokapom, mGdje je opet taj dječak, Sanja uvijek ima vremena, Veselo, veselije, najveselije, Priča o Braci, Maslačak i modri mak, Neobičan izlet', N'Biblioteka Vjeverica', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (317, N'Priča starog kamena', 1985, N'Mladost', N'Maksimović, Desanka', N'Raspjevane priče, Dečja soba, Čobanin pščela, Ako je vjerovati mojoj baki, Pisma iz šume, Kratkovečna, Medvedova ženidba, Đačko srce, Patuljkova tajna', N'Biblioteka Vjeverica', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (318, N'Sadako hoće živjeti', 1979, N'Mladost', N'Bruckner, Karl', NULL, N'Biblioteka Jelen', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (319, N'Ljubičasti planet', 1981, N'Mladost', N'Gardaš, Anto', NULL, N'Biblioteka Vjeverica', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (320, N'Nebeska reka i druge bajke', 1984, N'Mladost', N'Olujić, Grozdana', N'Zlatoprsta, Nebeska reka, Vrapčev dar, Začarani čičak, Tatagina deca, Zvezdanova tajna, Plačko i Smejačko, Jasenov list, Zlatna kraba, Lokvin cvet, Taško Oraško, Talasi i stene, Vodeni cvet, Galebova stena, Zemlja Vetrova, Kameno jaje, Mali svirači, Kišna ptica, Crvena žaba, Malo voz, Vilini leptiri, Zlatni tanjir, Princ oblaka
Posveta autorice', N'Biblioteka Vjeverica', 1, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (321, N'Malinovac i slamčica/Veliki pljusak', 1985, N'Mladost', N'Janikovszky, Éva', NULL, N'Biblioteka Vjeverica', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (322, N'Djedica Pričalo i čarobni vrutak', 1977, N'Mladost', N'Martić, Anđelka', NULL, N'Biblioteka Vjeverica', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (323, N'Dva smijeha', 2009, N'Mozaik knjiga', N'Škrinjarić, Sunčana', N'Dva smijeha, Priče duginih boja, Priče iz mog dvorišta, Priče uz čaj, Priče Maslačka i mrvice
', N'Biblioteka Zlatna lađa', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (324, N'Izbor iz djela', 1978, N'Mladost', N'Kovačić, Ivan Goran', N'Mladi proroci, Veliki osvetnik, Smrt u čizmama, Mrak na svijetlim stazama, Sedam zvonara Majke Marije, Novela s ratnih dopisnica, Brod na potoku, Sveti psovač, Jama', N'Biblioteka Jelen', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (325, N'Kratki izlet', 2004, N'Večernji list', N'Šoljan, Antun', N'knj. 4, lektira', N'Večernjakova biblioteka', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (326, N'Mećava i druge drame', 1970, N'Matica hrvatska', N'Budak, Pero', N'Mećava, Svjetionik, Zaboravljeni, Žedan izvor, Nakot Balabana
Posveta i potpis autora', N'Suvremeni hrvatski pisci', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (327, N'The picture of Dorian Gray', 1957, N'Penguin Books', N'Wilde, Oscar', NULL, N'Penguin Books', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (328, N'Tao ljubavi', 2000, N'Sara Naklada', N'Chang, S. T.', NULL, NULL, 0, 11)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (329, N'Najljepše želje za rođendan', 2013, N'Naša djeca', N'Čilić Škeljo, Đurđica ', NULL, NULL, 1, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (330, N'Glagoljica za osnovce', 2013, N'Naklada Ljevak', N'Valec-Rebić, Martina', NULL, NULL, 0, 3)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (331, N'Black beauty', 2010, N'Harper Collins', N'Sewell, Anna', N'Posudila Jasminki kolovoz 2016.', N'Collins classics', 1, 2014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (332, N'Odabrana djela T. V. Spiveta', 2010, N'Fraktura', N'Larsen, Reif', N'Posveta', NULL, 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (333, N'Gradska knjižnica Rijeka 1849.- 1930.-1962.-2000.', 2000, N'Gradska knjižnica Rijeka', N'Gradska knjižnica Rijeka', NULL, NULL, 0, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (334, N'Rat i mir I', 1960, N'Matica hrvatska', N'Tolstoj, Lav Nikolajevič', N'Knj. 4
Knjiga u 4 sveska', N'Izabrana djela L. N. Tolstoja', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (335, N'Rat i mir IV', 1960, N'Matica hrvatska', N'Tolstoj, Lav Nikolajevič', N'Knj. 7 
Knjiga u 4 sveska', N'Izabrana djela L. N. Tolstoja', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (336, N'Bijedni ljudi', 1975, N'Znanje', N'Dostojevski, Fjodor Mihajlovič', N'Bijedni ljudi, Dvojnik, Roman u dvet pisama, Gospodin Proharčin, Gazdarica, Polzunkov, Slabo srce, Pošteni lopov, Božićno drvce i svadba, Tuđa žena i muž pod posteljom', N'Djela F. M. Dostojevskoga', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (337, N'Zmajevi nad gradom', 1978, N'Naša djeca', N'Iveljić, Nada', NULL, N'Biblioteka Radost', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (338, N'Hrvatski pravopis', 2013, N'Institut za hrvatski jezik i jezikoslovlje', N'Institut za hrvatski jezik i jezikoslovlje', NULL, NULL, 0, 11)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (339, N'Three men in a boat (simplified)', 1955, N'Longman', N'Jerome, Jerome Klapka', NULL, N'Longman Simplified English Series', 0, 3014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (340, N'Lažeš, Melita', 1994, N'Znanje', N'Kušan, Ivan', N'Lektira', N'Ivan Kušan za mladež', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (341, N'Edda', 1997, N'ArTresor naklada', N'Sturluson, Snorri', N'Knj. 1 
Tekst na staroislandskom i hrvatskom
Posveta', N'Spone', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (342, N'Stubovi društva', 1963, N'Izdavačko preduzeće Rad', N'Ibsen, Henrik', N'Jadran', N'Biblioteka Reč i misao', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (343, N'Zvjezdani glasnik', 2013, N'ArTresor naklada', N'Sis, Peter', N'Slikovnica
Prvo kolo: Sjevernjača, knj. 1', N'Biblioteka Mali Medvjed', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (344, N'Sociolinguistics', 2000, N'Penguin Books', N'Trudgill, Peter', NULL, NULL, 0, 2)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (345, N'Islandski ribari', 1891, N'Knjižara jugoslavenske akademije', N'Lotti, Pierre', N'Stara knjiga', NULL, 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (346, N'Divlji konj', 2007, N'Mozaik knjiga', N'Prosenjak, Božidar', N'Lektira', N'Biblioteka Zlatna lađa', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (347, N'Kalevala: finski narodni epos, prvi dio', 1952, N'Svjetlost', N'Kalevala', N'Jadran', NULL, 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (348, N'Momo', 2009, N'Znanje', N'Ende, Michael', N'Posveta Orbi, lektira', N'Biblioteka Stribor', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (349, N'Smogovci', 1976, N'Mladost', N'Hitrec, Hrvoje', N'Lektira', N'Biblioteka Jelen', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (350, N'Gospođica Skideri', 1967, N'Izdavačko preduzeće Rad', N'Hoffmann,  E. T. A. ', N'Jadran', N'Biblioteka Reč i misao', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (351, N'Čuvari', 1993, N'Mladinska knjiga Zagreb', N'Koontz, Dean', N'Jadran', NULL, 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (352, N'Kapetanova kći', 1982, N'Izdavačko preduzeće Rad', N'Puškin, Aleksandar', N'Jadran', N'Biblioteka Reč i misao', 1, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (353, N'Zov divljine / Jerry otočanin', 2004, N'Globus Media', N'London, Jack', N'Knj. 18', N'Jutarnji list : lektira popularni klasici', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (354, N'Sedmero braće', 1942, N'Nakladni zavod A. Velzek', N'Kivi, Aleksis', N'Jadran
Finska književnost', N'Svjetski pisci', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (355, N'Starac i more', 2004, N'Globus Media', N'Hemingway, Ernest', N'Knj. 3', N'Biblioteka Jutarnjeg lista : XX. stoljeće', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (356, N'Kabanica i druge pripovijetke', 2008, N'Europapress holding', N'Gogolj, Nikolaj Vasiljevič', N'Knj. 16 
Kabanica, Luđakov dnevnik, Nevski prospekt, Nos', N'Biblioteka Jutarnjeg lista : lektira - klasici', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (357, N'The heart is a lonely hunter', 1961, N'Penguin Books', N'McCullers, Carson', NULL, N'Penguin Twenty Century Classics', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (358, N'Anne of the island/ Anne of windy willows', 1994, N'Dean', N'Montgomery, Lucy Maude', N'Anne of green gables 3 & 4', N'Anne of green gables series', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (359, N'Anne of Ingleside', 1992, N'Puffin Books', N'Montgomery, Lucy Maude', N'Anne of green gables 6', N'Puffin Classics', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (360, N'Anne''s house of dreams', 1993, N'Bantam Books', N'Montgomery, Lucy Maude', N'Anne of green gables 5', N'Anne of green gables series', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (361, N'Krug', 1984, N'BIGZ', N'Selimović, Meša', N'Jadran', N'Nove knjige domaćih pisaca', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (362, N'Derviš i smrt', 1967, N'Svjetlost', N'Selimović, Meša', NULL, N'Biblioteka Savremenici', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (363, N'Trubaduri', 2012, N'ArTresor naklada', N'Mrkonjić, Zvonimir/Tomasović', N'Knj. 10 
Stalni oblici trubadurskog pjesništva
Guilhem od Poitiersa, Jaufré Rudel, Marcabrú, Bernard Martí, Peire d''Alvernha
Bernardt de Ventadorn, Rigaut de Barbezieux, Raimbut dAurenga, Giraut de Bornelh, Guilhem de Saint Leidier, Folquet de Marselha, Bertran de Born, Lo Reis Richart d''Anglaterra, Gaucelm Faidit, Raimbaut de Vaqueiras, , Staroprovansalski jezik trubadurskog pjesništva, Grafija i izgovor straroprovansalskoga', N'Spone', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (364, N'Ostrvo', 1983, N'BIGZ', N'Selimović, Meša', N'Jadran', N'Sabrana dela u 10 knjiga', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (365, N'Eaters of the dead', 1992, N'Ballantine Books', N'Crichton, Michael', N'Jadran', N'Ballantine books: fiction', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (366, N'Žabac kraljević', 1980, N'Naša djeca', N'Iveljić, Nada (prir.)', N'Slikovnica', NULL, 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (367, N'Pustolovina iz Knjige o džungli/Slonić Dumbo u cirkusu', 1990, N'Grafički zavod Hrvatske', N'Zinaić, Milan (ur.)', NULL, N'Odaberi svoju pustolovinu', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (368, N'Žudnja za životom', 1985, N'August Cesarec', N'Stone, Irving', N'Knj. 3 
Jadran 
', N'Biblioteka Džepna knjiga', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (369, N'Agonija i ekstaza I', 1985, N'August Cesarec', N'Stone, Irving', N'Knj. 9  
Knjiga u dva sveska 
Jadran', N'Biblioteka Džepna knjiga', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (370, N'Agonija i ekstaza II', 1985, N'August Cesarec', N'Stone, Irving', N'Knj. 10 
Knjiga u dva sveska
Jadran', N'Biblioteka Džepna knjiga', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (371, N'Na zapadu ništa novo', 1965, N'Otokar Keršovani', N'Remarque, Erich Maria', N'Knj. 1 Jadran', N'Djela E. M. Remarquea', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (372, N'Noć u Lisabonu', 1965, N'Otokar Keršovani', N'Remarque, Erich Maria', N'Knj. 10 Jadran', N'Djela E. M. Remarquea', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (373, N'Tri ratna druga ', 1965, N'Otokar Keršovani', N'Remarque, Erich Maria', N'Jadran', N'Djela E. M. Remarquea', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (374, N'Bajke i priče', 1988, N'Grafički zavod Hrvatske', N'Grimm, Jakob i Wilhelm', N'Knj. 14
Snjeguljica i sedam patuljaka, Ivica i Marica, Cvilidreta, Matovilka, Ribar i njegova žena, Crvenkapica, Pepeljuga, Trnoružica, Jorinda i Joringel, Snjeguljica i Ružica, Začarani kraljević, Kraljevna-guščarica, Sedam jednim udarcem, Tri brata od zanata, Zlatna ptica, Zlatna guska, Bremenski svirači, Vuk i jarići, Guščarica na studencu, Četiri brata vrijedna zlata, Nebriga, Čarobni stolić, Suputnici, Palčić, Tri šumska patuljka, Tri prelje, Kralj Kosobrad, Postolar i patuljci, Nebojša, Neobični patuljci, Čarobna ločika, Mlinarski momčić i maca, Nahod-ptica, Siromah i bogataš, Majstor Šilko, Mudra seljanka, Doktor Sveznadar, Srećković, Našla vreća zakrpu, Ima još takvih', N'Omladinska biblioteka', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (375, N'Pustolovine Toma Sawyera', 1987, N'Grafički zavod Hrvatske', N'Twain, Mark', N'Knj. 6', N'Omladinska biblioteka', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (376, N'Djevojčica koja je preskočila nebesa', 2008, N'Knjiga u centru', N'Pongrašić, Zoran', NULL, N'Biblioteka Lektira za 5', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (377, N'Pollyanna', 2009, N'Europapress/Liber', N'Hodgman Porter, Eleanor', NULL, N'Dječja biblioteka', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (378, N'Riđokosa primadona', 1989, N'Mladost', N'Iveljić, Nada', NULL, N'Biblioteka Vjeverica', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (379, N'Soneti i kancone', 1964, N'Izdavačko preduzeće Rad', N'Petrarca, Francesco', N'Jadran', N'Biblioteka Reč i misao', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (380, N'100 zlatnih izreka o knjigama i čitanju', 2008, N'Mozaik knjiga', N'Maljković, Zoran (prir.)', N'Jadran', N'100 zlatnih izreka', 1, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (381, N'Faust: prvi i drugi dio', 1995, N'ABC naklada', N'Goethe, Johann Wolfgang', N'Jadran 
Lektira', N'Biblioteka Lovor', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (382, N'Kad je Findus bio mali i izgubio se', 2013, N'Planet Zoe', N'Nordqvist, Sven', N'Findus i Pettson br. 1', N'Pettson i Findus', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (383, N'Flumen obscura', 2015, N'Hrvatsko društvo pisaca', N'Fluminati', N'Posveta', NULL, 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (384, N'1984.', NULL, N'Alfa', N'Orwell, George', N'Jadran', N'Svjetski pisci', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (385, N'Pripovijesti', 1964, N'Naprijed', N'Tolstoj, Lav Nikolajevič', N'Sevastopoljske pripovijesti, Luzern, Tri smrti, Kozaci, Platnomjer, Smrt Ivana Iljiča, Poslije plesa', N'Svjetski klasici XIII. i XIX. stoljeća', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (386, N'Sedefna ruža i druge bajke', 1979, N'Mladost', N'Olujić, Grozdana', N'Sedefna ruža, Maslačak, Mesečev Cvet, Čovek koji je tražio svoje lice, O Kapljici i Cvetu, Crveni makovi, Ogledalo, Krilati belko, O papagajima i ovcama, Zlatokosa, Marijan i Srebrenka, Strašilo, Dečak i Princeza, Varalica i Smrt, Čarobna metla, Belutak, Zvono koje je opominjalo, Sat s klatnom, Breg svetlosti, Izgubljeni ključ, Stolica sa planine, Carica i zevalica, Zvezda u čijim je grudima nešto kucalo', N'Biblioteka Vjeverica', 1, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (387, N'Stepa', 1961, N'Izdavačko preduzeće Rad', N'Čehov, A. P.', NULL, N' Biblioteka Reč i misao', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (388, N'Dylan Dog: Nepoznati svijet', 2012, N'Ludens', N'Sclavi, Tiziano', N'126
Jadran', N'Dylan Dog', 0, 13)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (389, N'Dylan Dog: Strava na visini', 2013, N'Ludens', N'Sclavi, Tiziano', N'131
', N'Dylan Dog', 0, 13)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (390, N'Dylan Dog: Obiteljski portret', 2013, N'Ludens', N'Sclavi, Tiziano', N'127', N'Dylan Dog', 0, 13)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (391, N'Dylan Dog: Krvave proslave', 2014, N'Ludens', N'Sclavi, Tiziano', N'87', N'Dylan Dog Extra', 0, 13)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (392, N'Dylan Dog: Daleko od svjetla', 2013, N'Ludens', N'Sclavi, Tiziano', N'82', N'Dylan Dog Extra', 0, 13)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (393, N'Dylan Dog: Proždirač kostiju', 2013, N'Ludens', N'Sclavi, Tiziano', N'130', N'Dylan Dog ', 0, 13)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (394, N'Dylan Dog: Killexov mozak', 2012, N'Ludens', N'Sclavi, Tiziano', N'80', N'Dylan Dog Extra', 0, 13)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (395, N'Dylan Dog: Posljednji čovjek na zemlji', 2012, N'Ludens', N'Sclavi, Tiziano', N'77', N'Dylan Dog Extra', 0, 13)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (396, N'Dylan Dog: Koljač', 2011, N'Ludens', N'Sclavi, Tiziano', N'75', N'Dylan Dog Extra', 0, 13)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (397, N'Dylan Dog: Dugački pozdrav', 2011, N'Ludens', N'Sclavi, Tiziano', N'74', N'Dylan Dog Extra', 0, 13)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (398, N'Dylan Dog: Posljednji uštap', 2011, N'Ludens', N'Sclavi, Tiziano', N'72', N'Dylan Dog Extra', 0, 13)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (399, N'Dylan Dog: Pećinska zvijer', 2010, N'Ludens', N'Sclavi, Tiziano', N'65', N'Dylan Dog Extra', 0, 13)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (400, N'Dylan Dog: Misterij Ramblyna', 2009, N'Ludens', N'Sclavi, Tiziano', N'64', N'Dylan Dog Extra', 0, 13)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (401, N'Dylan Dog: Maelstrom', 2009, N'Ludens', N'Sclavi, Tiziano', N'63', N'Dylan Dog Extra', 0, 13)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (402, N'Dylan Dog: Vampiri', 2009, N'Ludens', N'Sclavi, Tiziano', N'62', N'Dylan Dog Extra', 0, 13)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (403, N'Dylan Dog: Priča o vukodlacima', 2013, N'Ludens', N'Sclavi, Tiziano', N'20', N'Dylan Dog Specijal', 0, 13)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (404, N'Dylan Dog: Homo homini lupus', 2011, N'Ludens', N'Sclavi, Tiziano', N'117', N'Dylan Dog', 0, 13)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (405, N'Dylan Dog: Broj 200', 2011, N'Ludens', N'Sclavi, Tiziano', N'118', N'Dylan Dog', 0, 13)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (406, N'Dylan Dog: Magla', 2012, N'Ludens', N'Sclavi, Tiziano', N'124', N'Dylan Dog', 0, 13)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (407, N'Dylan Dog: Priča o jadnome vragu', 2013, N'Ludens', N'Sclavi, Tiziano', N'86', N'Dylan Dog Extra', 0, 13)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (408, N'Zagor: Čovjek s dva mozga', 2010, N'Ludens', N'Nolitta, Guido', N'182', N'Zagor', 0, 13)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (409, N'Zagor: Rakova obratnica', 2012, N'Ludens', N'Nolitta, Guido', N'204', N'Zagor', 0, 13)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (410, N'Zagor: Noćna mora na moru', 2007, N'Ludens', N'Nolitta, Guido', N'5', N'Zagor Maxi', 0, 13)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (411, N'Zagor: Ocean', 2011, N'Ludens', N'Nolitta, Guido', N'22', N'Zagor Klasik', 0, 13)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (412, N'Zagor: Vudu', 2011, N'Ludens', N'Nolitta, Guido', N'21', N'Zagor Klasik', 0, 13)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (413, N'Zagor: Sniježni sokoli', 2009, N'Ludens', N'Nolitta, Guido', N'14', N'Zagor Klasik', 0, 13)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (414, N'Zagor: Cvijet koji ubija', 2008, N'Ludens', N'Nolitta, Guido', N'9', N'Zagor Klasik', 0, 13)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (415, N'Zagor: Ples duhova', 2011, N'Ludens', N'Nolitta, Guido', N'29', N'Zagor Specijal', 0, 13)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (416, N'Zagor: Moj prijatelj Jim Gitara', 2012, N'Ludens', N'Nolitta, Guido', N'25', N'Zagor Klasik', 0, 13)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (417, N'Zagor: Pobunjenici iz Luisiane', 2011, N'Ludens', N'Nolitta, Guido', N'23', N'Zagor Klasik', 0, 13)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (418, N'Zagor: Pruga', 2010, N'Ludens', N'Nolitta, Guido', N'16', N'Zagor Klasik', 0, 13)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (419, N'Bajke', 1964, N'Mladost', N'Grimm, Jakob i Wilhelm', N'Ukleti kraljević i Čelik-Henrik, Klatež, Priča o čovjeku koji je htio da nauči strahovati, Palčić, Vuk i sedmoro jaradi, Tri čovječuljka u šumi, Vjerni Ivan, Nahod-ptica, Dvanaestorica braće, Mudra Jelka, Šestorica obilaze svijetom, Pas i vrabac, Pepeljuga, Mirko i Milka, Crvenkapica, Sedam gavrana, Bremenski gradski svirači, Trnoružica, Siromah i bogataš, Mudra seljanka, Doktor sveznalica, Kralj Bradonja, Snjeguljica, Mudri ljudi, Braco i seka, Siromašni mlinarski momčić i maca, Sretni Ivo', N'Biblioteka Vjeverica', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (420, N'The hitchhiker''s guide to the galaxy : triology in four parts', 2005, N'Picador', N'Adams, Douglas', N'Knj 1-4
The hitchhiker''s guide to the galaxy, 
The restaurant at the end of the world, 
Life, universe and everything, 
So long and thanks for all the fish.', N'Hitchhiker''s Guide series', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (421, N'Izabrane bajke', 1990, N'Izdavačko preduzeće Beograd', N'Andersen, Hans Christian', N' Kresivo, Princeza na zrnu graška, Palčica, Mala sirena, Carevo novo odelo, Tratinčica, Postojani olovni vojnik, Divlji labudovi, Rode, Slavuj, Ružno pače, Baka, Pastirica i dimnjačar, Devojčica sa šibicama, Kap vode, Priča o godini, Petoro iz graškove mahune, Zli knez, Dvanaest putnika, Sneško, Kako je vetar ispremešao firma na radnjama, Žaba krastača, Dani u nedelji, Priče sunčanog zraka, Najneverojatnije, Šta je rekla cela porodica, Igraj, igraj lutkice, Upitaj amagerku, Velika morska zmija, Figure od karata', N'Mladinska knjiga', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (422, N'Izabrane bajke', 1990, N'Izdavačko preduzeće Beograd', N'Grimm, Jakob i Wilhelm', N'Kralj-žaba ili gvozdeni Hajnrih, Bajka o mladiću koji je krenuo u svet da nauči šta je strah, , Vuk i sedam jarića, Verni Johanes, Bratac i sestrica, Motovilka, Tri čovječuljka u šumi, Hans i Gretica, Hrabri krojač, Pepeljuga, Crvenkama, Bremenski muzikanti, Mudra Elza, Stočiću, postavi se, zlatni magarac i batina iz vreće, Gospođa Truda, Trnova ružica, Kralj Drozdobrad, Snežana, Mirko i Katica, RetkozverkaŠestorica se probijaju kroz svet, ševa koja peva i skakuće, Duh iz boce, Plava svetiljka, Neustrašivi kraljević, Zvjezdani taliri, Bajka o zemlji Dembeliji, Guščarica kraj studenca, Lopov-umetnik, Cipele igrom pohabane, Zlatna ptica, Srećni Hans, Zlatna guska, Jorinda i Joringel', N'Mladinska knjiga', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (423, N'Penelopijada : mit o Penelopi i Odiseju', 2005, N'Geopoetika', N'Atwood, Margaret', N'U Homerovoj Odiseji Penelopa – Odisejeva supruga i sestra lepe Helene Trojanske – oslikana je kao oličenje bračne vernosti. Njeno dvadesetogodišnje opiranje proscima koji je opsedaju na Itaki, dok Odisej u Troji ratuje, a potom luta morima, vekovni je primer snage ljubavi i vere. Margaret Atvud u svom viđenju ovoga mita uglavnom govori glasom Penelope i hora njenih dvanaest sluškinja, problematizujući neke od Odisejevih (i Telemahovih) postupaka.', N'Edicija Mitovi', 1, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (424, N'Angus od snova', 2006, N'Geopoetika', N'McCall Smith, Alexander', N'Angus je rado spominjani junak najranijih priča iz irske i škotske keltske mitologije. Uz najvažnije detalje Angusovog života fikcionalno uobličene na osnovu irskih mitoloških izvora, autor Angusa dovodi u savremeni svet kroz niz povezanih pripovesti koje se najvećim delom događaju u modernoj Škotskoj. Za razliku od drugih mitskih figura, Angus ne daje pouku niti podučava, već nam rešenja, odgovore i ostvarenja nudi u snovima koje nam sam daje. On je, dakle, Angus sanjar i davalac snova; on je i eros – personifikacija mladosti i snažne, strastvene ljubavi.', N'Edicija Mitovi', 1, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (425, N'Lavlji med : mit o Samsonu', 2006, N'Geopoetika', N'Grossman, David', N'"Malo je priča u Bibliji koje toliko obiluju dramom i akcijom, narativnim vatrometom i sirovim emocijama kao što je to slučaj sa Samsonom. Ipak, izvan te divlje impulsivnosti, meteža i vreve, nazire se životna priča koja je, u osnovi, paćenički put jedne usamljene, samotne, uzburkane duše koja nikada, nigde na svetu nije uspela da pronađe pravi dom, čije je i samo telo mesto okrutnog egzila. Za mene je ovo otkriće, ovo priznanje, tačka sa koje mit neprimetno prelazi u svakodnevicu svakoga od nas, u naše najintimnije trenutke, i naše najveće tajne."', N'Edicija Mitovi', 1, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (426, N'Zvezda noćnog jastreba i druge priče', 2004, N'Odin', N'Miyazawa, Kenji ', N'Sudija ris i žirevi, Vrane i Veliki medved, April planinskog čoveka, Zvezda noćnog jastreba, Medvedi sa Nametoko planine, Vučja šuma, Košara šuma i Kradi šuma, Restoran sa mnogo narudžbi, ', N'Biblioteka Svetlucanja', 1, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (427, N'Teret : mit o Atlasu i Heraklu', 2005, N'Geopoetika', N'Winterson, Jeanette', N'U drevnoj helenskoj mitologiji Atlas, pripadnik „rase’’ Titana, gubi bitku u pobuni protiv olimpskih bogova. Za kaznu prisiljen je da na svojim plećima večito nosi teret sveta. Dok čuva zlatne jabuke vrta Hesperida, snažni Herakle lukavošću i iskušavanjem Atlasa, privremeno mu pridržavši teret, pribavlja sebi ovo voće. Dženet Vinterson je ovaj mit ispričala na originalno intimističan način zainteresovana za ispitivanje suštine usamljenosti, izolacije, odgovornosti, tereta i slobode. Prenela ga je u 21. vek.', N'Edicija Mitovi', 1, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (428, N'Šlem užasa : kreativ o Tezeju i Minotauru', 2006, N'Geopoetika', N'Pelevin, Viktor', N'Večna Peljevinova pitanja ko sam ja i gde se to nalazim dobila su novu formu – internet-čet, u kojem sedam veličanstvenih likova, zarobljenih u Lavirintu prošlosti, sadašnjosti i budućnosti, čeka Tezeja koji će ih izvesti napolje. A Lavirinta u stvari nema. I šlem užasa nije na glavi, nego u njoj. Zar zaista mislite da ste vi taj Betmen što vas gleda u oči dok stojite ispred ogledala s njegovom maskom na licu?', N'Edicija Mitovi', 1, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (429, N'Binu : legenda o plaču Mengđijangnu zbog Kineskog zida', 2006, N'Geopoetika', N'Tong, Su', N'Priča o plaču Mengđijangnu zbog Velikog zida u Kini se pripoveda već dve hiljade godina. Kako ispričati priču koja je svima poznata, za pisca uvek predstavlja poteškoću. U svakom čoveku krije se po jedna Mengđijangnu, a moje razumevanje tog lika zapravo je i moje poimanje pola, prostodušnosti i davno zaboravljenih osećanja. Sudbina Mengđijangnu je u stvari moja spoznaja patnje i postojanja. Priča o njoj jeste bajkovita, mada to možda nije bajka o ženi skromnog porekla, već o čitavom jednom staležu. U romanu sam pokušao da Mengđijangnu dobacim konopac kojim bi se premostilo vreme i prostor od dve hiljade godina kako bi me ta žena povela, jer i ja, baš kao i ona, moram da odem na Veliki zid!
Su Tong', N'Edicija Mitovi', 1, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (430, N'More tišine', 2008, N'Geopoetika', N'Trudel, Sylvain', N'Bogojavljenja, Dva lica, Grom-ptica, Kadril Mame Kukuruz, Lale i bulke, More tišine, Kamfor kao talisman, Srećna smrt, Crnačka lađa
Evo devet priča, moćnih i uznemirujućih kao voda u dubokom bunaru; u njima se mešaju humorno i tragično, himera i katastrofa, sećanje i strepnja. Devet priča, međusobno u kontrastu, u kojima ljudi, spokojni i blagi, ili pak slomljeni nasiljem i fatalnošću, tragaju za srećom u životu i nadaju se mirnoj smrti. Nakon svog gorko potresnog romana Živa pod jezikom, Silven Tridel nam nudi priče jednako čarobnog stila, u kojima mašta, erudicija i osećajnost zajedno čine opčinjavajući buket. Za ovu knjigu piscu je dodeljena Guvernerova nagrada za 2007. godinu.

Danas je malo knjiga koje umeju da vas navedu da se zaustavite usred stranice i da, omamljeni jezikom, duboko udahnete. To nam pruža Tridel, čije pisanje, velike poetske lucidnosti, smešta ovog autora među potomke čarobnjaka.', N'Edicija Svet proze', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (431, N'Lovac u žitu', 2007, N'Šareni dućan', N'Salinger, Jerome David', NULL, N'Hej Joe 18', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (432, N'Sjeverozapadni vjetar : o vilenjacima i elementarnim bićima sjeverozapadnog dijela Medvednice pa do Samoborskog kraja', 2012, N'Planetopija', N'Bašić, Zdenko', N'Posveta', N'Biblioteka Dodo', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (433, N'Mjesečeve sjene : o vješticama i pričama noćnih sati sjeverozapadnog dijela Medvednice i Samoborskog kraja', 2013, N'Planetopija', N'Bašić, Zdenko', N'Posveta', N'Biblioteka Dodo', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (434, N'Zemlja vuka i vjetra', 2014, N'Lupus', N'Rac, Krunoslav', N'Jadran', NULL, 0, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (435, N'Anne of Green Gables/A little princess/The wizard of Oz', 1999, N'Parragon', N'Montgomery, Lucy Maude/Burnett, F. H./Baum, L. F.', NULL, N'Children''s classic conpendium', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (436, N'Gospođica', 1988, N'Matica hrvatska', N'Andrić, Ivo', N'Knj. 27', N'Biblioteka Vijenac', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (437, N'Ljubav je vječna', 1986, N'August Cesarec', N'Stone, Irving', N'Knj. 22 
Jadran', N'Biblioteka Džepna knjiga', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (438, N'Poslednji svet', 2003, N'Geopoetika', N'Ransmayr, Christoph', N'"Publije Ovidije Nazon, slavan još za života i do danas jedan od najčitanijih pisaca antike, deceniju pre svoje smrti je po carskom naređenju prognan iz Rima. Pogođen time, spalio je tekst svog najvažnijeg dela Metamorfoze. Na svu sreću, bio je to samo prepis gotovo dovršenog rukopisa, tako nam je ostala epska pesma od preko petnaest tomova. Kristof Ransmajer nam predočava šta se moglo dogoditi da je Ovidije svoje delo poneo sa sobom u progonstvo i da je ono tamo nestalo zajedno sa svojim autorom. Ransmajer šalje Kotu, obožavaoca i površnog Nazonovog prijatelja da pronađe nestalog pesnika. On putuje u "poslednji svet", u Tome, gvozdeni grad na obali Crnog mora. To putovanje se pretvara u san koji postepeno postaje noćna mora. Ransmajer piše knjigu o preobraženjima i od toga pravi furiozno delo."', N'Edicija Svet proze', 1, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (439, N'Magla i mjesečina', 2005, N'Civitas', N'Selimović, Meša', NULL, N'Biblioteka Dani', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (440, N'Koliko knjiga!', 2005, N'Algoritam', N'Zaid, Gabriel', N'Zbirka eseja o temama vezanima za lanac pisac-urednik-izdavač-menadžer-čitatelj-knjižar. Autor, meksički pjesnik i esejist, na ležeran i zavodljiv način komentira naš život s knjigama u doba "obilja" jer ljudska vrsta danas objavi jednu knjigu svakih 30 sekundi, a istodobno pisanje postaje ljudima zanimljivije od čitanja. Usprkos tom paralizirajućem stanju autor ističe da je najveća snaga izdavačke industrije njezina raznovrsnost: knjiga namijenjena i malom broju čitatelja lako može biti objavljena a ako je pročitaju pravi ljudi to može promijeniti način našeg razgovora, granice književnosti ili naš intelektualni život.', N'Facta', 1, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (441, N'Edip na drumu', 2001, N'Paideia', N'Bauchau, Henry', N'Svrgnut i slep, Edip napušta Tebu kao prosjak. Njegova kći Antigona kreće za njim, bez oklevanja. Ubrzo će pred njih iskrsnuti razbojnik Klios, za čiju svirepost zna čitava Atika. Tako počinje lutanje jednog ukletog poluboga, njegove kćeri i njihovog saputnika. Ne naslućujući vrstu osećanja koja ih povezuju - ne znajući čak ni da ih usud odvodi ka Kolonu, gde će Edip ući u legendu - ovo troje lutalica će doživeti zagonetnu, nezaboravnu pustolovinu. No, da li je reč o pustolovnom romanu? Svakako, jer nas Anri Bošo prenosi u vreme pre vremena i nagoni da zajedno sa njegovim likovima podelimo mnogobrojna teška iskušenja. Do središta antičkog mita pripovedač će nas voditi zavojitim putevima, prizivaće slikarstvo i snove, ples i skulpturu, ludilo i nežnost, bunilo i pojanje. I kad tragika grune svom snagom, njegova razmišljanja odjeknuće u nama najsnažnije. Obeležen umetničkom zrelošću i istkan u vekovnoj zapitanosti evropskog kulturnog nasleđa, ovaj roman (možda i najzrelije umetničko delo Anrija Bošoa) opravdano pobuđuje divljenje".

', N'Biblioteka Maštarije', 1, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (442, N'Morbus Khitara', 1999, N'Geopoetika', N'Ransmayr, Christoph', N'"Mir u Oranijenburgu" jeste naziv za godine i decenije nakon velikog evropskog rata. Ovo ime ne obeležava, medjutim, epohu nove izgradnje, već se odnosi na kaznu, odmazdu i osvetu. Po volji pobednika, potučeni neprijatelj mora da se iz svojih razrušenih gradova i industrijskih postrojenja vrati na pašnjake i polja repe, nazad u prošli vek. Troje ljudi se susreće u Moru, opusteloj varošici kraj jezera u senci visokih planina. Ambras, "kralj pasa" i nekadašnji logoraš, postaje nekoliko godina posle svog oslobadjanja upravnik istog kamenoloma u kome je patio kao robijaš. Mrze ga i plaše ga se dok sa svojim čoporom podivljalih pasa živi u nekadašnjem sjaju Vile Flora. Lili, "Brazilka", sanja - dok ilegalno prelazi granicu između okupacionih zona - o miru na obali daleke zemlje, i živi povučeno u ruševinama predratne banje. Ponekad pak odlazi do svog planinskog skrovišta, s oružjem iz bivšeg rata i pretvara se u snajperistu koji ubija neprijatelje. I Bering, "čovek-ptica", kovač iz Mora, napušta svoj dom, svoj u korov zarastao gvozdeni otpad, kako bi najpre postao vozač kralja pasa, potom njegov naoružan, na sve spreman, telohranitelj. Ali u ovom svom drugom životu postaje žrtva zagonetnog očnog oboljenja po imenu Morbus Kitahara: postepeno pomračenje vida.', N'Edicija Svet proze', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (443, N'Mostly harmless', 2002, N'Picador', N'Adams, Douglas', N'Knj. 5', N'Hitchhiker''s Guide Series', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (444, N'Timmy Failure : mistakes were made', 2013, N'Walker Books', N'Pastis, Stephan', N'Knj. 1', N'Timmy Failure', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (445, N'Agnes Grey : with a memoir of her sister by Charlotte Brontë', 1988, N'Penguin Books', N'Brontë, Anne', NULL, N'Penguin Classics', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (446, N'Timmy Failure : now look what you''ve done', 2014, N'Walker Books', N'Pastis, Stephan', N'Posudila Jasminka prosinac 2016
Knj. 2', N'Timmy Failure', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (447, N'American literature : teacher''s handbook and key', 1965, N'Ginn and Company', N'Porter, Andrew J.', N'The sense of place, The Individual, The American Dream, The Virginia Colony, The Puritans, Independence, A National Culture, The American Novel, The Twentieth Century', N'Ginn literature series', 0, 2)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (448, N'Zagreb, Hratska : korak po korak', 2009, N'TZ grada Zagreba', N'Petrinović, Martina', N'Vodič kroz Zagreb', N'Korak po korak', 0, 11)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (449, N'Rilla of Ingleside', 1993, N'Penguin Books', N'Montgomery, Lucy Maude', N'Anne of green gables 8', N'Anne of green gables series', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (450, N'Chronicles of Avonlea', 1994, N'Penguin Books', N'Montgomery, Lucy Maude', N'Anne of green gables extra 1', N'Anne of green gables series', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (451, N'Road to Avonlea', 1990, N'Bantam Books', N'Montgomery, Lucy Maude', N'Anne of green gables extra 2', N'Anne of green gables series', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (452, N'The handmaid''s tale', 1996, N'Vintage', N'Atwood, Margaret', NULL, N'Contemporary classics', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (453, N'Dylan Dog: Almanah straha : knjiga XII', 2014, N'Ludens', N'Sclavi, Tiziano', N'Dossier Edgar Allan Poe', N'Dylan Dog', 0, 13)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (454, N'Dylan Dog: Znakovi kraja', 2015, N'Ludens', N'Sclavi, Tiziano', N'Br. 314', N'Dylan Dog', 0, 13)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (455, N'Rainbow Valley', 1993, N'Penguin Books', N'Montgomery, Lucy Maude', N'Anne of green gables 7', N'Puffin Classics', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (456, N'Braća Karamazovi I', 1976, N'Znanje', N'Dostojevski, Fjodor Mihajlovič', N'Knjiga u dva sveska', N'Djela F. M. Dostojevskoga', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (457, N'Braća Karamazovi II', 1976, N'Znanje', N'Dostojevski, Fjodor Mihajlovič', N'Knjiga u dva sveska, prvi i drugi dio', N'Djela F. M. Dostojevskoga', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (458, N'Bijele noći', 1976, N'Znanje', N'Dostojevski, Fjodor Mihajlovič', N'Treći svezak 
Bijele noći, Netočka Nezvanova, Mali junak, Selo Stepančikovo i njegovi žitelji
', N'Djela F. M. Dostojevskoga', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (459, N'Poniženi i uvrijeđeni', 1976, N'Znanje', N'Dostojevski, Fjodor Mihajlovič', N'Drugi svezak 
Ujakov san, Poniženi i uvrijeđeni', N'Djela F. M. Dostojevskoga', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (460, N'High fidelity', 2000, N'Penguin Books', N'Hornby, Nick', NULL, N'Penguin Fiction', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (461, N'Kratka istorija mita', 2005, N'Geopoetika', N'Armstrong, Karen', N'Edicija Mitovi počinje Kratkom istorijom mita Karen Armstrong, sažetim ali studioznim istraživanjem o mitu, i to od njegovog nastanka pa do pitanja zašto nam je mit još uvek potreban. Istorija mita ujedno je i istorija čovečanstva. Mitologija, kao i umetnost, proizvod je stvaralačke mašte koja nam kroz promene, iscepkanost i tragičnost sveta pomaže da uočimo nove mogućnosti. Mitovi nam pomažu da kosmos shvatimo kao nešto što ima smisla.', N'Edicija Mitovi', 1, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (462, N'Siročad Eldorada', 2009, N'Geopoetika', N'Hatoum, Milton', N'U proteklih stotinak godina u brazilskoj književnosti nastao je niz dela različitih žanrova koja čine zaseban tematski korpus posvećen Amazoniji.

Za jedne "zeleni pakao", za druge zemaljski raj ili "poslednja stranica Postanja, koju tek treba napisati", ova ogromna oblast ne prestaje da privlači pažnju istraživača i umetnika, zahvaljujući pre svega svojim geografskim osobenostima, zadivljujućoj i zastrašujućoj bujnosti prirode i bogatom folklornom nasledju.

Jedini način ljudskog opstanka u okruženju koje ga ugrožava svojim preobiljem, jeste da ga podražava ili odražava, stvarajući jedan pararelni, imaginarni i hiperbolički svet. I kao što se u "amazonskom moru" mešaju slatke i slane vode, tako je i u kolektivnom pamćenju naroda Amazonije, nemoguće razlučiti istoriju i legendu, stvarno od irealnog, doživljeno od snevanog. Isto važi i za roman Siročad Eldorada, u kome se mešaju mit i realnost, prošlost i sadašnjost, život i priča.

Pošto individualno sećanje nikad ne teče hronološki i pravolinijski, vreme u romanu Miltona Hatuma organizuje se prvenstveno oko asocijacija pripovedačevog pamćenja. Osobeno kretanje pamćenja pak uslovilo je i osoben narativni postupak koji brojnim digresijama lomi i prekida linearni tok naracije. Tako se životna ispovest Miltonovog glavnog junaka razliva u bezbroj rukavaca, kanala i mrtvaja, kao da svojim tokom oponaša krivudavi i razuđeni tok Amazona.', N'Edicija Mitovi', 1, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (463, N'Orkanska pijanka', 2010, N'Geopoetika', N'Östergren, Klas', N'Hank Orn je vuk samotnjak, moralni i pravedni junak koji doživljava iskonsku, nesavladivu ličnu tragediju. U potrazi za istinom, on saznaje za "orkansku pijanku" - pir silnika - i osveta postaje njegova zvezda vodilja. Jedan od najpoznatijih švedskih pisaca napisao je za ediciju Mitovi apokaliptičnu sliku bliske budućnosti, brutalnu distopiju u kojoj se sve istinske vrednosti sunovraćuju, a spregu vlasti i mafije dramatično pojačavaju neumoljivi bogovi i čudovita bića nordijskog panteona. Atmosferu romana boje pogubne klimatske promene, beskrajni rijaliti šou, kao program iz kulture sa seksom kao jedinim sadržajem, pustoš bezakonja, zaraze, siromaštvo i glad. Estergren vešto i pripovedački ubedljivo povezuje mafijaške bosove i mitove o Asima i, kao razrešenje, udahnjuje život Lokiju, Mefistu skandinavske mitologije. Surova i opominjuća, a uzbudljiva i neodoljiva, ovo je iznad svega priča o roditeljskoj ljubavi i beskompromisnoj borbi za nju, ali i o pisanju, odnosno umetničkom stvaralaštvu kao odgovoru kako na ličnu tragediju, tako i na uznemirujuću budućnost koja nam već kuca na vrata.', N'Edicija Mitovi', 1, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (464, N'Euripidova smrt', 2002, N'Filip Višnjić', N'Gatalica, Aleksandar', N'Knj. 91', N'Biblioteka Albatros', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (465, N'Leteća planina', 2008, N'Geopoetika', N'Ransmayr, Christoph', N'Četvrti roman austrijskog pisca Kristofa Ransmajera jeste putovanje po vodi, ostrvlju i planinama. Dva brata sa irskog ostrva Hors Ajlend upućuju se na Tibet da savladaju vrh Leteće planine (na visini od sedam hiljada metara). Kinezi, zemlja Kamp, njeni stanovnici - nomadi Kampi, grad Lasa, Mont Everest, scenografija su za priču o cilju, upornosti, čežnji, nostalgiji za sobom, za mestom u svetu, za „belom mrljom negde u daljini." I o ljubavi.
Naročito o ljubavi. Leteća planina (Phur-Ri) glavni je junak ove knjige. Kao i sva priroda, uostalom. Osama o kojoj se govori nije povlačenje iz sveta već, po autorovom uverenju, napredovanje „korak po korak sve više, a nikada naniže ili nadole." Ova porodična priča i porodično putovanje razoružavaju dubinom intime, filozofskom upitanošću, moralnom čistotom. I opet - ljubavlju.
', N'Edicija Svet proze', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (466, N'Antigona/Diotima i lavovi', 2001, N'Paideia', N'Bauchau, Henry', NULL, N'Biblioteka Maštarije', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (467, N'Bijeli jelen', 2000, N'Mozaik knjiga', N'Nazor, Vladimir', NULL, N'Biblioteka Zlatna lađa', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (468, N'Vavilonski mudraci', 1998, N'Geopoetika', N'Miraš Martinović', N'Vavilonski mudraci je druga knjiga istorijsko-metafizičke tetralogije Miraša Martinovića. U prvoj knjizi (Poslednji Eshilov dan, Centar za geopoetiku, 1995.) on piše o egzilu, večitoj životnoj i literarnoj temi. Vavilonski mudraci, drugi deo ove tetralogije, koji za okvir ima Knjigu proroka Danila zapravo je aktuelna i univerzalna priča o tiraniji i mudrosti transponovana u vreme cara Navukodonosora.', N'Mala edicija proze', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (469, N'Osvajanje vrha', 2001, N'Geopoetika', N'Homel, David', N'Roman Osvajanje vrha nije lako ukratko predstaviti zbog slojevitosti koja će, verujemo, biti primamljiva kako čitaocima-ljubiteljima literature, tako i onima koji se književnošu profesionalno bave. Homel priču smešta u neobičan, pomalo bizaran predeo američke provincije, a njenu osnovu čine niske ljudske strasti - zavist u porodici, ljubomora, incest. Glavni akteri ovog dela, Sabita Hanter i Nejtan Gazara predstavljaju, u najmanju ruku, čudan par izgubljenih duša koje lutaju kvazi-biblijskim predelima Amerike. Gazarin ugao gledanja na stvari jeste muška vizura, egocentrična, iako često dobronamerna, dok Sabita, ženski Mesija, predstavlja ženu lišenu svih emocija, ali koja poseduje snagu i zastrašujuću autodestruktivnost. Naizgled bezočna i gruba priča puna dubokog pronicanja u prirodu zla i ljubavi, koja čitaoca zbunjuje i začuđuje, čini ovaj roman D. Homela iznenađujuće originalnim, oštrim i iskrenim.
', N'Edicija Svet proze', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (470, N'The fire gospel', 2008, N'Canongate', N'Faber, Michael', N'Biblioteka Mitovi', N'Canongate Myth Series', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (471, N'Girl meets boy', 2008, N'Canongate', N'Smith, Ali', N'Biblioteka Mitovi', N'Canongate Myth Series', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (472, N'Where three roads meet', 2007, N'Canongate', N'Vickers, Salley', N'Biblioteka Mitovi', N'Canongate Myth Series', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (473, N'The good man Jesus and the scoundrel Christ', 2010, N'Canongate', N'Pullman, Philip', N'Biblioteka Mitovi', N'Canongate Myth Series', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (474, N'Zagor: Dvoboj na oceanu', 2015, N'Ludens', N'Nolitta, Guido', N'Br. 236', N'Zagor', 0, 13)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (475, N'Zagor: Ljudi i vukovi', 2014, N'Ludens', N'Nolitta, Guido', N'Br. 218', N'Zagor', 0, 13)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (476, N'Gospodar prstenova : dvije kule', 2005, N'Algoritam', N'Tolkien, John Ronald Reuel', N'Drugi dio triologije
Jadran', N'NAJbiblioteka', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (477, N'A long way down', 2006, N'Penguin Books', N'Hornby, Nick', NULL, N'Penguin Fiction', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (478, N'Klanica pet', 1973, N'BIGZ', N'Vonnegut, Kurt', NULL, N'Fest-romani', 1, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (479, N'Bijeli klaun', 1990, N'Mladost', N'Miloš, Damir', NULL, N'Biblioteka Vjeverica', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (480, N'Baba Jaga i div Zaborav', 2015, N'Profil', N'Simić Bodrožić, Roman/Šumberac, Manuel', N'Slikovnica', NULL, 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (481, N'Fahrenheit 451', 2014, N'Reclam', N'Bradbury, Ray', N'Posudila Jasminki kolovoz 2016.
Br. 9270', N'Universal-Bibliothek Englisch', 0, 2014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (482, N'Brave new world', 2004, N'Vintage', N'Huxley, Aldous', NULL, N'Vintage Classics', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (483, N'Ragnarok : the end of gods', 2011, N'Canongate', N'Byatt, Antonia Susan', NULL, N'Canongate Myth Series', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (484, N'The goddess chronicle', 2014, N'Canongate', N'Kirino, Natsuo', NULL, N'Canongate Myth Series', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (485, N'Alias Grace', 1996, N'Bloomsbury', N'Atwood, Margaret', NULL, NULL, 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (486, N'Baba Jaga je snijela jaje', 2008, N'Vuković&Runjić', N'Ugrešić, Dubravka', NULL, N'Biblioteka Mitovi', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (487, N'The land of painted caves', 2011, N'Hodder&Stoughton', N'Auel, Jean M.', N'Knj. 6', N'Earth''s Children', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (488, N'Vuk koji je htio obići svijet', 2013, N'Algoritam', N'Lallemand, Orianne/Thuiller, Eleonore', N'Slikovnica', N'Slikovnice o vuku', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (489, N'Vuk koji je htio biti druge boje', 2009, N'Algoritam', N'Lallemand, Orianne/Thuiller, Eleonore', N'Slikovnica', N'Slikovnice o vuku', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (490, N'Čiča Goriot', 2008, N'Europapress Holding', N'Balzac, Honore de', N'Knj. 11', N'Lektira Klasici', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (491, N'Matilda', 1998, N'Mozaik knjiga', N'Dahl, Roald', NULL, N'Biblioteka Slon', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (492, N'Nedovršene pripovijesti', 2007, N'Algoritam', N'Tolkien, John Ronald Reuel', N'Zbirka djelomično nedovršenih pripovijesti, prvi put obajvljena 1977. godine. Knjiga koja će razveseliti poklonike Tolkienove mitologije jer donosi priče koje su iscrpnije razrađene nego u "Silmarillionu": pripovijest o Tuoru i Túrinu, dramatizacija Númenora, podrobno predstavljanje već poznatih likova, različite bitke za prsten, te druge pripovijesti koje upotpunjuju sliku mašte i zamišljenog svijeta koji je autor ostavio u ostavštini svijetu.', NULL, 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (493, N'Gospodar prstenova : povratak kralja', 2005, N'Algoritam', N'Tolkien, John Ronald Reuel', N'Knj. 5
Treći dio', N'NAJbiblioteka', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (494, N'Na rubu pameti', 2004, N'Globus Media', N'Krleža, Miroslav', N'Knj. 9', N'Biblioteka Jutarnjeg lista : XX. stoljeće', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (495, N'More trolova', 2005, N'Naklada Ljevak', N'Farmer, Nancy', N'Knj. 1', N'SMS biblioteka', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (496, N'Čudesni putevi postanka I', 1985, N'August Cesarec', N'Stone, Irving', N'Knjiga u dva sveska, knj. 7', N'Džepna knjiga', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (497, N'Čudesni putevi postanka II', 1985, N'August Cesarec', N'Stone, Irving', N'Knjiga u dva sveska, knj. 8', N'Džepna knjiga', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (498, N'The hunger games', 2009, N'Scholastic', N'Collins, Suzanne', N'Posuđeno Jasminka siječanj 2017.
Prva knjiga serijala', N'Scholastic Children''s Books', 1, 2014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (499, N'Zemljina dječica', 2000, N'Katarina Zrinski', N'Iveljić, Nada', N'Zemljina dječica su dva gomoljčića Grumen i Grudica, a ovo je priča o njihovim pustolovinama. Potaknuti pričama starog hrasta poželjeli su upoznati svjetlost Sunca, Mjeseca i zvijezda. No, kada su doista upoznali svjetlost prekršili su vjekovni zakon podzemlja. Kako ne bi bili kažnjeni i pretvoreni u prah, morali su se iskupiti. Valjalo im je pronaći Zlatnu pticu i pronaći dragi kamen, čudesni hijacint. Tako je započela njihova velika, neobičnu avantura', N'Biblioteka Pčelica', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (500, N'The great big treasury of Beatrix Potter', 1996, N'Leopard', N'Potter, Beatrix', N'Tale of Peter Rabbit --
Tailor of Gloucester --
Tale of Squirrel Nutkin --
Tale of Benjamin Bunny --
Tale of two bad mice --
Tale of Mrs. Tiggy-Winkle
Pie and the patty-pan --
Tale of Mr. Jeremy Fisher --
Story of a fierce bad rabbit --
Story of Miss Moppet --
Tale of Tom Kitten --
Tale of Jemima Puddle-Duck --
Roly-poly pudding --
Tale of the Flopsy bunnies --
Tale of Mrs. Tittlemouse --
Tale of Timmy Tiptoes --
Tale of Mr. Tod --
Tale of Pigling Bland --
Ginger and Pickles.', NULL, 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (501, N'MaddAddam', 2013, N'Bloomsbury', N'Atwood, Margaret', N'Knj. 3', N'The MaddAddam triology', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (502, N'The year of the flood', 2019, N'Bloomsbury', N'Atwood, Margaret', N'Knj. 2', N'MaddAddam triology', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (503, N'Oryx and Crake', 2003, N'Bloomsbury', N'Atwood, Margaret', N'Knj. 1', N'MaddAddam triology', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (504, N'Krivotvoreni kupon', 1982, N'Matica hrvatska', N'Tolstoj, Lav Nikolajevič', N'Jutro jednog vlastelina, Iz zabilježaka kneza Nehljudova, Markerove zabilješke, Platnomjer, Dva husara, Kavkaski zarobljenik, Krivotvoreni kupon, Zapisi starca Fjodora Kuzmiča, Zašto?', N'Izabrana djela L. N. Tolstoja', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (505, N'Kozaci', 1982, N'Matica hrvatska', N'Tolstoj, Lav Nikolajevič', N'Kavkaske pripovijetke: Napadaj, Sječa šume, Iz kavkaskih uspomena(Degradirani)); Sevastopoljske pripovijetke: Sevastopolj u prosincu 1854., svibnju 1855. kolovozu 1855; Kozaci', N'Izabrana djela L. N. Tolstoja', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (506, N'Hrvatski vladari : knezovi, kraljevi, biskupi', 2013, N'VBZ', N'Budak, Neven', N'Jadran', N'Biblioteka Posebna izdanja', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (507, N'Hobit', 2004, N'Algoritam', N'Tolkien, John Ronald Reuel', NULL, N'Biblioteka Arboretum', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (508, N'Radost', 1996, N'Naša djeca', N'Skok, Joža (ur.)', N'God XLVI, br. 4', N'Radost', 0, 14)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (509, N'Radost', 1988, N'Naša djeca', N'Skok, Joža (ur.)', N'God. XXXVII, br. 6', N'Radost', 0, 14)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (510, N'Arapi između juče i sutra', 1973, N'BIGZ', N'Milenković, Milutin', N'Jadran', N'Džepna knjiga', 0, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (511, N'Peterburški dnevnik 1919.', 1989, N'Sfairos', N'Hipius, Zinaida', N'Jadran
Knj. 2', N'Tabu sfera', 0, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (512, N'Umoran od života i smrti', 2014, N'Laguna', N'Yan, Mo', N'Ovaj svoj možda najkontemplativniji roman, inspiriran budističkim shvaćanjem da ’umor od života i smrti (tj. od stalnog reinkarniranja) nastaje zbog pretjeranih želja’, Mo Jen je napisao za svega četrdeset tri dana, i to četkicom na tradicionalnom kineskom papiru. Priču pripovijeda nekadašnji zemljoposjednik koji je strijeljan za vrijeme zemljišne reforme 1950. godine. Ne želeći priznati da je izvršio bilo kakav zločin osim da je bio bogat, on se redom reinkarnira u magarca, vola, svinju, psa i majmuna koji su svjedoci društvenih promjena nastalih u njegovom zavičaju tokom narednih pedeset godina. Konačno, u noći dočeka novog milenijuma on će se ponovo roditi kao hemofilično dijete koje će u petoj godini svog života ispričati ukućanima dugu zemljoposjednikovu priču koju smo prethodno pročitali. U pogledu narativne tehnike, Mo Jen se u velikoj meri oslanjao na formu klasičnog kineskog romana podijeljenog na poglavlja-epizode, kao i na narodne priče. S druge strane, ova maštovita, crnohumorna hronika kineske povijesti druge polovine XX. vijeka obiluje i postmodernističkim sredstvima, kao što je metafikcijsko poigravanje koje ima za cilj da pokaže da je istina mnogostruka i složena.', N'Odabrana dela Mo Jena', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (513, N'Principles of object-oriented programming in JavaScript', 2014, N'Leanpub', N'Zakas, Nicholas C.', N'Kopija', NULL, 0, 1014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (514, N'Professional: JavaScript® for Web Developers', 2012, N'Wrox', N'Zakas, Nicholas C.', N'Kopija
Dio: Language basics (Ch.3) - Function expressions (Ch. 7)', NULL, 0, 1014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (515, N'Pablo''s SOLID Software development', 2009, N'LosTechies.com', N'Ocampo, Joe et al', N'Kopija', NULL, 0, 1014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (516, N'Umbraco User''s Guide', 2011, N'Wrox', N'Sterling, Paul/ Wahlberg Nik ', N'Chapter 2-12
Kopija', NULL, 0, 1014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (517, N'The ultimate guitar chord chart II', 0, N'Sun.com', N'Facoline, Phillip J', N'Kopija', NULL, 0, 11)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (518, N'Umbraco User''s Guide', 2011, N'Wrox', N'Sterling, Paul/ Wahlberg Nik ', N'Chapter 2-12
Kopija', NULL, 0, 1014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (519, N'Encodo C# handbook', 2009, N'Encodo', N'Ballomos, Marco von et al', N'Kopija', NULL, 0, 1014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (520, N'GoF design patterns with examples using Java and UML2', 2008, NULL, N'Christiansson, Benneth et al.', N'Kopija', NULL, 0, 1014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (521, N'Security practices ASP.NET 2.0', 2005, N'Microsoft Corporation', N'Meier, J. D. et al.', N'Kopija', NULL, 0, 1014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (522, N'Agnesa', 2002, N'Paideia', N'Stamm, Peter', NULL, N'Biblioteka Maštarije', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (523, N'Divlji labudovi', 2002, N'Geopoetika', N'White, Kenneth', N'Prvi putopis na srpskom jeziku tvorca pojma "geopoetika" Keneta Vajta. Na tristotu godišnjicu putovanja Macua Bašoa, najvećeg japanskog haiku pjesnika i putopisca, od juga do sjevera Japana, Kenet Vajt ide njegovim stopama. Ova knjiga je slika o drevnom i modernom Japanu. Pravi pjesnici su istraživači, a Kenet Vajt je to u punom smislu riječi. Nije on mistik koga ne dotiče stvarnost. Vajt spaja zapad i istok, blisko i daleko, poeziju i svakodnevni život.', N'Edicija Geopoetika', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (524, N'The princess diaries', 2001, N'Pan Macmillan', N'Cabot, Meg', NULL, NULL, 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (525, N'Evropske skitnje', 1985, N'Znanje', N'Peić, Matko', NULL, N'Posebna izdanja', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (526, N'Priče sa Dona', 1967, N'Mlado pokoljenje', N'Šolohov, Mihail', NULL, NULL, 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (527, N'Najbolji način da odeš', 2007, N'Samizdat B92', N'Spence, Alan', NULL, N'Edicija Busola', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (528, N'Mesec od hartije', 1977, N'BIGZ', N'Brown, Joe David', NULL, N'Fest-romani', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (529, N'Književni voz : Evropa 2000', 2002, N'Geopoetika', N'Ognjenović, Vida et al. (prir.)', NULL, N'Edicija Balkan ekspres', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (530, N'Persijsko ogledalo', 2001, N'Geopoetika', N'Petrović, Miomir', NULL, N'Edicija Krug', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (531, N'Sećanja : moj život uz Če Gevaru', 2007, N'Geopoetika', N'March, Aleida', NULL, N'Edicija Intimna istorija', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (532, N'Eleanor&Park', 2015, N'Znanje', N'Rowell, Rainbow', N'Posveta
Knj. 351', N'Knjiga dostupna svima', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (533, N'Great ghost stories', 2008, N'Chancellor Press', N'Huxley, Aldous et al.', N'The diver / A.J. Alan --
The ghoul of Golders Green / Michael Arlen --
The murder of the Mandarin / Arnold Bennett --
Powers of the air / J.D. Beresford --
Keeping his promise / Algernon Blackwood --
Dearth''s farm / Gerald Bullett --
The hammer of God / G.K. Chesterton --
--
The secret sharer / Joseph Conrad --
The tiger / A.E. Coppard --
The looking glass / Walter de la Mare --
The hostelry / Guy de Maupassant --
A large diamond / Lord Dunsany --
The cupboard / Jeffery Farnol --
The other sense / J.S. Fletcher --
Ghost of honour / Pamela Hansford Johnson --
Roads of destiny / O. Henry --
The trapdoor / C.D. Heriot --
Ben Blower''s story / C.F. Hoffman --
The shadow of a shade / Tom Hood --
The dwarfs / Aldous Huxley --
Guests from Gibbet Island / Washington Irving --
The mezzotint / M.R. James --
The dancing partner / Jerome K. Jerome --
The woman who rode away / D.H. Lawrence --
Honolulu / Somerset Maugham --
Rooum / Oliver Onions --
The green light / Barry Pain --
The iron pineapple / Eden Phillpotts --
The demon king / J.B. Priestley --
The queen of spades / Alexander Pushkin --
The seventh man / Sir Arthur Quiller-Couch --
Laura / Saki --
Goat-cry, girl-cry / W.B. Seabrook --
The mahatma''s story / May Sinclair --
Deep in the forest / H. de Vere Stacpoole --
The Island of Voices / R.L. Stevenson --
Man of the night / Edgar Wallace --
Major Wilbraham / Hugh Walpole --
The inexperienced ghost / H.G. Wells --
The confessions of Charles Linkworth / E.F. Benson --
A visitor from down under / L.P. Hartley --
The voice in the night / W.H. Hodgson --
Berenice / Edgar Allen Poe.
', N'Bounty Books', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (534, N'Izabrane bajke', 2005, N'ABC naklada', N'Perrault, Charles', N'Pepeljuga, Vile, Mačak u čizmama, Kraljević Čuperak, Ljepotica i zvijer', NULL, 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (535, N'Franny i Zoey', 2004, N'Šareni dućan', N'Salinger, Jerome David', NULL, N'Biblioteka Hey Joe', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (536, N'Timmy Failure : we meet again', 2016, N'Walker Books', N'Pastis, Stephan', N'Knj. 3', N'Timmy Failure', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (537, N'The bell jar', 1988, N'Faber and Faber', N'Plath, Sylvia', N'Američka pjesnikinja Sylvia Plath (1932-1963) svojim je jedinim romanom i pjesmama posthumno snažno utjecala na alternativi sklone generacije šezdesetih i sedamdesetih godina. U ovom ispovijednom, nadasve poetskom romanu, autorica nas vodi u svijet adolescencije i teškoće ulaska osjetljivih bića u svijet lažnih vrijednosti i duhovnog siromaštva provincijalnog života tipiziranog u prigradskom naselju Bostona. U tom se svijetu devetnaestogodišnja Esther osjeća poput trkaćeg konja bez hipodroma.', NULL, 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (538, N'Tišine', 2014, N'Connectum', N'Selimović, Meša', N'Jadran', N'Biblioteka Vrtovi', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (539, N'Čekanje', 2001, N'Clio', N'Jin, Ha', NULL, N'Edicija Graf', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (540, N'Patnje mladog Werthera/Vilinski kralj i druge pjesme', 1999, N'Školska knjiga', N'Goethe, Johann Wolfgang', NULL, N'Moja knjiga - metodički obrađena lektira', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (541, N'Pobuna pisaca : nestašna povijest engleske književnosti (a i šire)', 1997, N'Mozaik knjiga', N'Dicks, Terrance', NULL, NULL, 0, 2)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (542, N'Američki bogovi', 2003, N'Algoritam', N'Gaiman, Neil', NULL, NULL, 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (543, N'Tiffany protiv vilinske kraljice', 2012, N'Lumen', N'Pratchett, Terry', N'Knj. 1 Tiffany Posveta
Knj. 30 Discworld', N'Svijet Diska', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (544, N'Grimmove bajke', 2015, N'Vuković&Runjić', N'Pullman, Philip', N'Posveta', NULL, 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (545, N'Samo ne Ivy Pocket', 2016, N'Profil', N'Krisp, Caleb', N'Posveta', NULL, 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (546, N'Hobit : anotirani', 2014, N'Algoritam', N'Tolkien, John Ronald Reuel', N'Posveta', NULL, 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (547, N'Noćni pjev', 2015, N'ArTresor naklada', N'Berk, Ari/Long, Loren', NULL, N'Mali medvjed', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (548, N'Ottolina ide u školu', 2016, N'Profil', N'Riddel, Chris', N'Posveta', N'Ottolina', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (549, N'Noćni vrtlar', 2016, N'Meandar', N'Fan, Terry', N'Slikovnica
Posveta', NULL, 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (550, N'Bilješke jedne gimnazijalke', 2005, N'Naklada Ljevak', N'Mihelčić, Nada', NULL, N'Biblioteka Sms', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (551, N'Zeleni pas', 2013, N'Alfa', N'Mihelčić, Nada', N'Posveta', N'Knjiga za mladež', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (552, N'Princeza i čarobnjak', 2016, N'Profil', N'Donaldson, Julia', NULL, NULL, 1, 5014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (553, N'Timmy Failure : sanitized for your protection', 0, NULL, N'Pastis, Stephan', NULL, N'Timmy Failure', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (554, N'Crveno stablo', 2015, N'ArTresor naklada', N'Tan, Shaun', NULL, N'Mali medvjed', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (555, N'Triologija o ljetovanju', 2008, N'ArTresor naklada', N'Goldoni, Carlo', NULL, N'Spone', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (556, N'Lais : pjesni', 1999, N'ArTresor naklada', N'France, Marie de', NULL, N'Spone', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (557, N'Dolina konja', 1985, N'ČGP Delo/Globus', N'Auel, Jean M.', N'Knj. 2 Djeca zemlje', N'Biblioteka Globus', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (558, N'Ex ponto/Nemiri/Novele', 2003, N'Mosta', N'Andrić, Ivo', N'Knj. 2', N'Hrvatski klasici', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (559, N'Čiča Tomina koliba', 2004, N'Globus Media', N'Beecher Stoew, Harriet', NULL, N'Lektira Popularni klasici', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (560, N'Život je san', 2005, N'Školska knjiga', N'Calderon de la Barca, Pedro ', NULL, N'Moja knjiga - metodički obrađena lektira', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (561, N'Silos', 2013, N'Znanje', N'Howey, Hugh', N'Knj. 1', N'Silos', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (562, N'Smjena', 2014, N'Znanje', N'Howey, Hugh', N'Knj. 2', N'Silos', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (563, N'Jabuke gospodina Peabodyja', 2003, N'Izvori', N'Madonna', NULL, N'Madonnine knjige za djecu', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (564, N'Autsajderi', 2001, N'Sysprint', N'Hinton, S. E.', NULL, N'Biblioteka Puls', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (565, N'Otok plavih dupina', 2013, N'Lektira d. o. o.', N'O''Dell, Scott', NULL, N'Biblioteka Lektira', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (566, N'Besmrtna žena', 1986, N'August Cesarec', N'Stone, Irving', NULL, N'Biblioteka Džepna knjiga', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (567, N'Orkanski visovi', 2004, N'Večernji list', N'Brontë, Emily', NULL, N'Večernjakova biblioteka Ljubavni romani', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (568, N'Kako živi AntunTun', 2015, N'Mozaik knjiga', N'Vitez, Grigor', N'Slikovnica', NULL, 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (569, N'Grubzonovo dijete', 2005, N'Ibis Grafika', N'Donaldson, Julia', NULL, NULL, 1, 5014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (570, N'The song of king Gesar', 2013, N'Canongate', N'Alai', NULL, N'Myths', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (571, N'Idi, postavi stražara', 2015, N'Znanje', N'Lee, Harper', NULL, N'Biblioteka HIT', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (572, N'Dobra, nježna Baka Snježna', 1994, N'Školska knjiga', N'Kanižaj, Pajo/ Kolanović, Dubravka', NULL, NULL, 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (573, N'Legendarni Tuhobić', 2000, N'Adamić', N'Kovačević, Ivan', N'Jadran', NULL, 0, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (574, N'Koralina', 2003, N'Algoritam', N'Gaiman, Neil', NULL, N'Biblioteka Arboretum', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (575, N'Dalmacja : stanovništvo i naselja', 2005, N'Naklada Jesenski i Turk', N'Marković, Mirko', N'Jadran', N'Znanost u džepu', 0, 10)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (576, N'Sarajevski atentat', 1965, N'Stvarnost', N'Mićanović, Slavko', N'Jadran', N'Biblioteka Vremeplov', 0, 10)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (577, N'Natko Veliki: Nitko kao Natko', 2014, N'Denona', N'Peirce, Lincoln', N'Knj. 1', N'Natko Veliki', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (578, N'Goth girl and the pirate queen', 2015, N'Pan Macmillan', N'Riddel, Chris', NULL, N'Goth girl', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (579, N'Goth Girl and the Ghost of a Mouse', 2013, N'Pan Macmillan', N'Riddel, Chris', NULL, N'Goth girl', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (580, N'Goth Girl and the fete worse than death', 2014, N'Pan Macmillan', N'Riddel, Chris', NULL, N'Goth girl', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (581, N'Ottoline and the yellow cat', 2007, N'Pan Macmillan', N'Riddel, Chris', NULL, N'Ottoline', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (582, N'The hunger games : catching fire', 2011, N'Scholastic', N'Collins, Suzanne', NULL, N'Hunger games', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (583, N'Freddie and the fairy', 2010, N'Pan Macmillan', N'Donaldson, Julia', NULL, NULL, 1, 5014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (584, N'The Gruffalo', 1999, N'Pan Macmillan', N'Donaldson, Julia', NULL, NULL, 1, 5014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (585, N'The Dr. Seuss story book', 1997, N'Harper Collins', N'Seuss, Dr.', N'McElligot''s Pool; The Zax; The Lorax; Scrambled Eggs Super!
', NULL, 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (586, N'Reading is Fun with Dr. Seuss', 2001, N'Harper Collins', N'Seuss, Dr.', N'Hop on pop; Marvin K. Mooney will you please go now!; Oh, the thinks you can think,; I can read with my eyes shut.', N'Beginner Books', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (587, N'The complete Cat in the hat', 2004, N'Harper Collins', N'Seuss, Dr.', NULL, NULL, 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (588, N'Oh, the places you''ll go!', 1990, N'Random house', N'Seuss, Dr.', NULL, NULL, 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (589, N'How the Grinch stole Christmas', 1997, N'Harper Collins', N'Seuss, Dr.', NULL, NULL, 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (590, N'The graveyard book', 2008, N'Bloomsbury', N'Gaiman, Neil', NULL, NULL, 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (591, N'S onu stranu Gustiborske šume', 2004, N'Naklada Fran', N'Stewart, Paul/Chris Riddell', N'Knj. 4 Twig 1', N'The edge chronicles', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (592, N'Knjiga izgubljenih stvari', 2008, N'Profil', N'Connolly, John', NULL, N'Biblioteka Zvjezdarnica', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (593, N'Mali princ se vratio', 1998, N'Izvori', N'Davidts, Jean-Pierre', NULL, N'Biblioteka Plava ptica', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (594, N'Bila jednom jedna patka', 1994, N'Naklada Pavičić', N'Andersen, Hans Christian', NULL, N'Biblioteka za mladež', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (595, N'Velebit : iskustvo planine', 0, N'Profil', N'Rac, Krunoslav', NULL, N'Biblioteka Impressum', 0, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (596, N'Velebit : iskustvo planine', 2010, N'Profil', N'Rac, Krunoslav', NULL, N'Biblioteka Impressum', 0, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (597, N'Ottoline goes to school', 2008, N'Pan Macmillan', N'Riddel, Chris', NULL, N'Ottoline', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (598, N'The secrets of the Wild Wood', 2016, N'Pushkin Childrens Books', N'Dragt, Tonke', N'Nastavak The Letter for the King', NULL, 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (599, N'The madwoman in the attic', 1984, N'Yale Universiry Press', N'Gilbert, Sandra M/Susan Gubar', NULL, NULL, 0, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (600, N'Prijelaz', 2011, N'Lumen', N'Cronin, Justin', N'Knjiga 1. serijala', NULL, 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (601, N'Blefsikon : filozofija', 1995, N'Mozaik knjiga', N'Hankinson, Jim', NULL, N'Blefsikon', 0, 10)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (602, N'Vodič kroz galaksiju za autostopere ', 2004, N'Zagrebačka naklada', N'Adams, Douglas', N'Knj. 1', N'Vodič kroz galaksiju serijal', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (603, N'Put velikog rastanka', 2005, N'ISKCON', N'Swami, Sacinandana', NULL, NULL, 0, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (604, N'Izum Hugoa Cabreta', 2011, N'Profil', N'Selznick, Brian', NULL, N'Profil Zvjezdarnica', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (605, N'Djevojka iz voćnjaka', 2015, N'Krug knjiga', N'Montgomery, Lucy Maude', NULL, NULL, 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (606, N'Đuka Begović', 2001, N'Konzor', N'Kozazac, Ivan', NULL, NULL, 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (607, N'Of mice and men', 2000, N'Penguin Books', N'Steinbeck, John', NULL, N'Penguin Fiction', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (608, N'The hunger games :mockingjay', 2010, N'Scholastic', N'Collins, Suzanne', N'Knj. 3', N'Hunger games', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (609, N'Clash of the sky galleons', 2007, N'Corgi Books', N'Stewart, Paul/Chris Riddell', N'Knj. 3 Quint 3', N'The edge chronicles', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (610, N'The curse of the Gloamglozer', 2002, N'Corgi Books', N'Stewart, Paul/Chris Riddell', N'Knj. 1 Quint 1', N'The edge chronicles', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (611, N'The winter nights', 2006, N'Corgi Books', N'Stewart, Paul/Chris Riddell', N'Knj. 2 Quint 2', N'The edge chronicles', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (612, N'Night monkey, day monkey', 2002, N'Egmont', N'Donaldson, Julia', NULL, NULL, 1, 5014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (613, N'The highway rat', 2011, N'Scholastic', N'Donaldson, Julia', NULL, NULL, 1, 5014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (614, N'Ciconia Ciconia', 2003, N'Kašmir promet', N'Petrlik Huseinović, Andrea', N'Slikovnica', N'Biblioteka Oblak', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (615, N'Timmy Failure : the cat stole my pants', 2017, N'Walker Books', N'Pastis, Stephan', N'Knj. 6', N'Timmy Failure', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (616, N'Timmy Failure : the book you''re not supposed to have', 2016, N'Walker Books', N'Pastis, Stephan', N'Knj. 5', N'Timmy Failure', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (617, N'Omerpaša Latas', 1977, N'Svjetlost', N'Andrić, Ivo', NULL, N'Sabrana djela Ive Andrića', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (618, N'Povijest knjige', 2006, N'Matica hrvatska', N'Stipčević, Aleksandar', NULL, N'Biblioteka Peristil', 0, 10)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (619, N'Priča iz Japana i druge odabrane', 2003, N'Konzor', N'Andrić, Ivo', NULL, NULL, 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (620, N'Pleme spiljskog medvjeda', 1985, N'Globus', N'Auel, Jean M.', N'Serijal Djeca zemlje, knj. 1', N'Biblioteka Globus', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (621, N'Do androids dream of electric sheep', 2011, N'Gollancz', N'Dick, Phillip K.', NULL, N'The Gollancz 50 Top Ten', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (622, N'Emily of the new moon', 1990, N'Puffin Books', N'Montgomery, Lucy Maude', N'Knj. 1', N'Emily series', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (623, N'Emily climbs', 1990, N'Puffin Books', N'Montgomery, Lucy Maude', N'Knj. 2', N'Emily series', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (624, N'Emily''s quest', 1990, N'Puffin Books', N'Montgomery, Lucy Maude', N'Knj. 3', N'Emily series', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (625, N'An Old-Fashioned girl', 1991, N'Puffin Books', N'Alcott, Louisa May', N'The book revolves around Polly Milton, the old-fashioned girl of the title, who visits the wealthy family of her friend Fanny Shaw in the city and is overwhelmed by their fashionable life they lead and disturbed to see how the family members fail to understand one another and demonstrate little affection.', N'Puffin Classics', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (626, N'The Chase', 1995, N'Century', N'Alcott, Louisa May', N'"I''d gladly sell my soul to Satan for a year of freedom," cries Rosamond Vivian to her callous grandfather. A brooding stranger seduces her from the remote island onto his yacht. Trapped in a web of intrigue, cruelty, and deceit, she flees to Italy, France, Germany, from Paris garret to mental asylum, from convent to chateau - stalked by obsessed Phillip Tempest.', N'Louisa May Alcott''s thriller stories', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (627, N'Eight Cousins', 1995, N'Puffin Books', N'Alcott, Louisa May', N'Knj. 1
When Rose Campbell, a shy orphan, arrives at "The Aunt Hill" to live with her six aunts and seven boisterous male cousins, she is quite overwhelmed. How could such a delicate young lady, used to the quiet hallways of a girls'' boarding school, exist in such a spirited home? It is the arrival of Uncle Alec that changes everything. ', N'Eight Cousins series', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (628, N'The quiet little woman/Tilly''s Christmas/Rosa''s tale', 1999, N'Eagle', N'Alcott, Louisa May', N'The quiet little woman,
Tilly''s Christmas,
Rosa''s tale.', N'Louisa May Alcott''s Short Stories', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (629, N'Jane Eyre', 1992, N'Everyman', N'Brontë, Charlotte', NULL, N'Everyman Classics', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (630, N'Anne of Green Gables/Anne of Avonlea', 1999, N'Sebastian Kelly', N'Montgomery, Lucy Maude', NULL, N'Classic Library', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (631, N'Na razmeđu civilizacija', 2013, N'Izvori', N'Dadić, Žarko', N'Jadran', NULL, 0, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (632, N'The story girl', 1990, N'Bantam Books', N'Montgomery, Lucy Maude', N'Knj. 1', N'Road to Avonlea series', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (633, N'The fault in our stars', 2012, N'Dutton books', N'Green, John', NULL, NULL, 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (634, N'Kuća duhova', 2001, N'Mozaik knjiga', N'Allende, Isabel', NULL, NULL, 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (635, N'Povijest čovječanstva', 2003, N'Mozaik knjiga', N'Willem van Loon, Hendrik', NULL, NULL, 0, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (636, N'Buddhism for sheep', 1996, N'Ebury Press', N'Riddel, Chris', NULL, NULL, 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (637, N'Na putu', 1988, N'Književna zajednica Novog Sada', N'Jack Kerouac', N'Knj 52', N'Biblioteka Džepna knjiga', 1, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (638, N'Glad', 2007, N'Šareni dućan', N'Hamsun, Knut', NULL, N'Biblioteka Život je lijep', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (639, N'Kratke aktivnosti za rad nakon čitanja', 2008, N'Ostvarenje', N'Witmer, Laura', NULL, NULL, 0, 10)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (640, N'Indonezija', 1956, N'Kultura', N'Bro, Margueritte H.', N'Jadran', NULL, 0, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (641, N'Osnove vedske književnosti', 2015, N'Balkanski književni glasnik', N'Goswami, Satsvarupa dasa', N'Jadran', N'Edicija Studije o književnosti', 0, 10)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (642, N'Oslušni tišinu', 2005, N'Samizdat B92', N'Sullivan, Mary', NULL, N'Edicija Busola', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (643, N'Sedam princeza', 2002, N'Zlatni zmaj', N'Nizami', NULL, N'Biblioteka Ružićnjak', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (644, N'The princess diaries : take two', 2001, N'Macmillan', N'Cabot, Meg', N'Knj. 2', N'Princess Diaries', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (645, N'Naivan.Super.', 2005, N'AGM', N'Loe, Erlend', NULL, N'Biblioteka Jako dobra knjiga', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (646, N'Antonio Vivaldi', 2007, N'24 sata', N'Chabenat, Stephanie', N'+ CD', N'Veliki skladatelji', 0, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (647, N'Sofijin svijet', 2010, N'Znanje', N'Gaarner, Jostein', NULL, NULL, 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (648, N'Fantastične leteće knjige g. Morrissa Lessmorea', 2015, N'Meandarmedia', N'Joyce, W. E.', N'Slikovnica', NULL, 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (649, N'Vina Vina i prijatelj', 2017, N'Planet Zoe', N'Wieslander, Jujja', N'Posveta i potpis autora i prevoditelja', NULL, 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (650, N'Iva se skriva', 2017, N'Meandarmedia', N'Woodcock, Fiona', N'Slikovnica', NULL, 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (651, N'Imam ideju - i što sad s njom?', 2015, N'Planetopija', N'Yamada, Kobi', N'Slikovnica', N'Biblioteka Dodo', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (652, N'Dolina mlinova', 2017, N'Znanje', N'Blanco, Noelia', N'Slikovnica', NULL, 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (653, N'Šešir pun neba', 2017, N'Lumen', N'Pratchett, Terry', N'Knj. 2', N'Tiffany serijal', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (654, N'Knjiga godine', 2017, N'Edicije Božićević', N'Cruz, Afonso', NULL, NULL, 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (655, N'100 najljepših pjesama hrvatske književnosti', 2009, N'Mozaik knjiga', N'Mihaljević, Romeo, ur.', NULL, NULL, 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (656, N'Začini za psihologiju', 2010, N'Fintrade&tours', N'Arar, Ljiljana', NULL, NULL, 0, 10)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (657, N'Talking as fast as I can', 2017, N'Virago', N'Graham, Lauren', NULL, NULL, 1, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (658, N'Priče za laku noć za mlade buntovnice', 2017, N'Znanje', N'Favilli, Elena/Cavallo, Francesca', NULL, NULL, 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (659, N'Povijest svijeta u 6 čaša', 2011, N'Naklada Jesenski i Turk', N'Standage, Tom', NULL, N'Prvi plan', 0, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (660, N'The book of dust: volume one La Belle Sauvage', 2017, N'David Fickling Books', N'Pullman, Philip', N'knj. 1', N'The Book of Dust triology', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (661, N'Vodič kroz galaksiju za autostopere svezak 2', 1997, N'Koan', N'Adams, Douglas', N'Knj. 4, 4.5, 5 
Zbogom, i hvala na ribama, 
Mladi Zaphod igra na sigurno, 
Uglavnom bezopasni', N'Vodič kroz galaksiju serijal', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (662, N'Drugi svjetski rat u memoarima Winstona Churchila', 1952, N'Školska knjiga', N'Krizman, Bogdan', N'Jadran', N'Mala historijska knjižnica', 0, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (663, N'Grčko blago', 1991, N'August Cesarec', N'Stone, Irving', N'Jadran', N'Džepna knjiga', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (664, N'Čudesne bajke 3', 1971, N'Stvarnost', N'Carruth, Jane, prir.', NULL, N'Čudesne bajke', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (665, N'I još nešto', 2012, N'Zagrebačka naklada', N'Colfer, Eoin', N'Knj. 6 ', N'Vodič kroz galaksiju serijal', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (666, N'Vodič kroz galaksiju za autostopere svezak 1', 1996, N'Koan', N'Adams, Douglas', N'Knj. 1-3 
Vodič kroz galaksiju za autostopere, 
Restoran na kraju svemira, 
Život, svemir i sve ostalo.', N'Vodič kroz galaksiju serijal', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (667, N'Restoran na kraju svemira', 2005, N'Zagrebačka naklada', N'Adams, Douglas', N'Knj. 2', N'Vodič kroz galaksiju serijal', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (668, N'In a sunburned country', 2001, N'Broadway Books', N'Bryson, Bill', NULL, NULL, 0, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (669, N'Rose in Bloom', 1990, N'Virago', N'Alcott, Louisa May', N'Knj. 2
In this sequel to Eight Cousins, Rose Campbell returns to the "Aunt Hill" after two years of traveling around the world. Suddenly, she is surrounded by male admirers, all expecting her to marry them. But before she marries anyone, Rose is determined to establish herself as an independent young woman. Besides, she suspects that some of her friends like her more for her money than for herself. ', N'Eight Cousins series', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (670, N'Under the Lilacs', 1996, N'Little, Brown and Company', N'Alcott, Louisa May', N'Ben and his trained dog, Sancho, run away from the circus and soon find a warm welcome in a kind community where spirited games are played. Theatricals and imaginative pageantry are all part of the fun.', NULL, 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (671, N'Don''t panic : Douglas Adams & The hitchhiker''s guide to the galaxy', 1993, N'Titan Books', N'Gaiman, Neil', N'Companion to The Hitchhiker', N'Hitchhiker series', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (672, N'Stormchaser', 2006, N'Corgi Books', N'Stewart, Paul/Chris Riddell', N'The edge chronicles knj. 8
Twig triology knj. 2', N'The edge chronicles', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (673, N'Midnight over Sanctaprax', 2001, N'Corgi Books', N'Stewart, Paul/Chris Riddell', N'The Edge chronicles knj. 9
The Twig triology knj 3', N'The edge chronicles', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (674, N'Tvrđava', 1974, N'Svjetlost', N'Selimović, Meša', N'Jadran', N'Biblioteka izabranih djela', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (675, N'Kockar', 2008, N'Europapress Holding : Novi Liber', N'Dostojevski, Fjodor Mihajlovič', NULL, N'Lektira Klasici', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (676, N'Val', 2017, N'ArTresor naklada', N'Lee, Suzy', N'Slikovnica', N'Biblioteka Mali medvjed', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (677, N'Jadnici : dio prvi', 2005, N'Globus Media', N'Hugo, Victor', N'Knj.1', N'Biblioteka Jutarnjeg lista : najveća djela', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (678, N'Jadnici : dio drugi', 2005, N'Globus Media', N'Hugo, Victor', N'Knj. 2', N'Biblioteka Jutarnjeg lista : najveća djela', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (679, N'Trubač u pustinji duha', 1986, N'Globus', N'Čengić, Enes', N'Knj. 2', N'S Krležom iz dana u dan', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (680, N'Ples na vulkanima', 1986, N'Globus', N'Čengić, Enes', N'Knj. 3', N'S Krležom iz dana u dan', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (681, N'Balade u životu koji teče', 1986, N'Globus', N'Čengić, Enes', N'Knj. 1', N'S Krležom iz dana u dan', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (682, N'U sjeni smrti', 1986, N'Globus', N'Čengić, Enes', N'Knj. 4', N'S Krležom iz dana u dan', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (683, N'Donesite mi glavu Ivy Pocket', 2017, N'Profil', N'Krisp, Caleb', N'Knj. 3', N'Ivy Pocket', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (684, N'Zaustavite Ivy Pocket', 2017, N'Profil', N'Krisp, Caleb', N'Knj. 2', N'Ivy Pocket', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (685, N'Pastele u štrajku', 2016, N'Profil', N'Daywalt, Drew', N'Slikovnica', NULL, 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (686, N'The legacy', 2010, N'Bloomsbury', N'Malley, Gemma', N'Deklaracija knj. 3', N'The Declaration Series', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (687, N'The land of the silver apples', 2007, N'Simon&Shoester', N'Farmer, Nancy', N'More trolova, knj. 2', N'The sea of trolls series', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (688, N'Doodle a day', 2015, N'Pan Macmillan', N'Riddel, Chris', N'Knjiga za crtanje', NULL, 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (689, N'The white witch', 2009, N'Roaring Brook Press', N'Graber, Janet', NULL, NULL, 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (690, N'Zovem se Crveno', 2008, N'Geopoetika', N'Pamuk, Orhan', NULL, N'Edicija Svet proze', 1, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (691, N'Sidarta', 1975, N'BIGZ', N'Hesse, Herman', NULL, N'Džepna knjiga - beletristika', 1, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (692, N'Rashomon', 2004, N'Civitas', N'Akutagawa, Ryunosuke', N'Jadran
Svjetska književnost', N'Biblioteka Dani', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (693, N'Cloud Wolf', 2001, N'Corgi Books', N'Stewart, Paul/Chris Riddell', NULL, N'The edge chronicles', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (694, N'The blue castle', 2013, N'Hesperus', N'Montgomery, Lucy Maude', NULL, NULL, 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (695, N'The knife of never letting go', 2008, N'Walker Books', N'Ness, Patrick', N'Knj. 1', N'Chaos walking ', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (696, N'Putujući cirkus', 2018, N'Naklada Val', N'Homel, David', N'Potpis autora', N'Biblioteka Dječji pisci', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (697, N'Stepski vuk', 1985, N'BIGZ', N'Hesse, Herman', NULL, N'Džepna knjiga', 1, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (698, N'Clover Twig and the magical cottage', 2009, N'Roaring Brook Press', N'Umansky, Kaye', N'Knj. 1', N'Clover Twig series', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (699, N'Jane of Lantern Hill', 2014, N'Virago', N'Montgomery, Lucy Maude', NULL, N'Virago Books', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (700, N'The Long Dark Tea-Time of the Soul ', 1989, N'Pan Macmillan', N'Adams, Douglas', N'Knj. 2', N'Dirk Gently series', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (701, N'Pat of the Silver Bush', 1981, N'Angus&Robertson', N'Montgomery, Lucy Maude', N'Knj. 1', N'Pat series', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (702, N'Freeglader', 2005, N'Corgi Books', N'Stewart, Paul/Chris Riddell', N'Knj. 9', N'The edge chronicles', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (703, N'Interworld', 2008, N'Harper Collins', N'Gaiman, Neil', N'Knj. 1', N'Interworld series', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (704, N'The last of the sky pirates', 2002, N'Random house', N'Stewart, Paul/Chris Riddell', N'Knj. 7', N'The edge chronicles', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (705, N'The salmon of doubt', 2003, N'Pan Macmillan', N'Adams, Douglas', N'Knj. 3', N'Dirk Gently series', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (706, N'Dirk Gently''s holistic detective agency', 1988, N'Pan Macmillan', N'Adams, Douglas', N'Knj. 1', N'Dirk Gently series', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (707, N'Surfacing', 2014, N'Virago', N'Atwood, Margaret', NULL, NULL, 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (708, N'Oprostite, jeste li vi vještica?', 2003, N'Školska knjiga', N'Horn, Emily/Pawlak, Pavel', N'Slikovnica', N'Serija slikovnica Pričam ti priču', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (709, N'The immortals', 2010, N'Corgi Books', N'Stewart, Paul/Chris Riddell', N'Knj. 10 End plot for 1-9', N'The edge chronicles', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (710, N'Vox', 2003, N'Doubleday', N'Stewart, Paul/Chris Riddell', N'Knj. 8, Knj. 2 Rook trilogy', N'The edge chronicles', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (711, N'Zia', 2010, N'Houghton Mifflin Harcourt', N'O''Dell, Scott', N'Otok plavih dupina 2', N'Sandpiper', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (712, N'The stone pilot', 2006, N'Corgi Books', N'Stewart, Paul/Chris Riddell', NULL, N'The edge chronicles', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (713, N'Magic for Marigold', 2014, N'Sourcebooks', N'Montgomery, Lucy Maude', NULL, NULL, 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (714, N'Deutsche Novellen', 1966, N'Naučna knjiga', N'Bukumirović-Ricker, Renate', N'Priče na njemačkom s vokabularom', NULL, 0, 4015)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (715, N'Die Brüder Karamasow', 0, N'dtv', N'Dostojevski, Fjodor Mihajlovič', NULL, NULL, 0, 4015)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (716, N'The dictionary of classical and literary allusions', 1987, N'Wordsworth', N'Lass, A. H.', NULL, N'Wordsworth Reference', 0, 2)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (717, N'Mistress Pat', 2014, N'Sourcebooks', N'Montgomery, Lucy Maude', N'Knj. 2', N'Pat series', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (718, N'The lost barkscrolls', 2008, N'Corgi Books', N'Stewart, Paul/Chris Riddell', NULL, N'The edge chronicles', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (719, N'The story giant', 2002, N'Harper Collins', N'Petten, Brian/Chris Riddell', NULL, NULL, 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (720, N'Clover Twig and the perilous path', 2010, N'Bloomsbury', N'Umansky, Kaye', N'Knj. 2', N'Clover Twig series', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (721, N'Gathering blue', 2002, N'Houghton Mifflin Harcourt', N'Lowry, Lois', N'Knj. 2', N'Giver series', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (722, N'The resistance', 2009, N'Bloomsbury', N'Malley, Gemma', N'knj. 2', N'Declaration series', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (723, N'Der Fremde Gott', 1975, N'Ullstein Buch', N'Steinbeck, John', NULL, NULL, 0, 4015)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (724, N'Postaja jedanaest', 2015, N'Znanje', N'St. John Mandel, Emily', NULL, N'Biblioteka HIT', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (725, N'The sleeper and a spindle', 2014, N'Bloomsbury', N'Gaiman, Neil/Chris Riddell', NULL, NULL, 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (726, N'Elizabetinska slika svijeta', 2006, N'ArTresor naklada', N'Tillyard, Eustace M. W.', N'Knj. 14', N'Biblioteka Putokazi', 0, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (727, N'The wish factory', 1990, N'Guild Publishing', N'Riddel, Chris', N'Slikovnica', NULL, 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (728, N'The emperor of Absurdia', 2006, N'Macmillan', N'Riddel, Chris', N'Slikovnica', N'Macmillan Children''s Books', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (729, N'Cave baby', 2010, N'Macmillan', N'Donaldson, Julia', NULL, N'Macmillan Children''s Books', 1, 5014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (730, N'The snow child', 2012, N'Headline Review', N'Eowyn Ivey', NULL, N'Headline review fiction', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (731, N'Doppler', 2013, N'Naklada Jesenski i Turk', N'Loe, Erlend', N'Knj. 1', N'Beletrina', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (732, N'Hugo Pepper', 2007, N'Corgi Books', N'Stewart, Paul/Chris Riddell', NULL, N'Far-flung Adventures', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (733, N'Fergus Crane', 2005, N'Corgi Books', N'Stewart, Paul/Chris Riddell', NULL, N'Far-flung Adventures', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (734, N'Corby Flood', 2005, N'Doubleday', N'Stewart, Paul/Chris Riddell', NULL, N'Far-flung Adventures', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (735, N'Scavenger Zoid', 2014, N'Macmillan', N'Stewart, Paul/Chris Riddell', N'Knj. 1', N'Scavenger series', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (736, N'Magarci', 2013, N'Ibis Grafika', N'Dahimene, Adelheid/Heide Stöllinger', N'Slikovnica', NULL, 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (737, N'Bajka o leptiru', 1973, N'Jugoreklam', N'Andersen, Hans Christian', N'Slikovnica', N'Andersenove bajke', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (738, N'Djevojke', 1988, N'Prva književna komuna', N'Alcott, Louisa May', N'Slikovnica', N'Biblioteka Spektar', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (739, N'The nameless one', 2014, N'Corgi', N'Stewart, Paul/Chris Riddell', N'Knj. 11', N'The edge chronicles', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (740, N'Doombringer', 2015, N'Corgi Books', N'Stewart, Paul/Chris Riddell', N'Knj. 12', N'The edge chronicles', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (741, N'The song of seven', 2016, N'Pushkin Childrens Books', N'Dragt, Tonke', NULL, NULL, 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (742, N'Under my hat : tales from the cauldron', 2012, N'Hot Key Books', N'Strahan, Jonathan, ur.', N'Stray magic / Diana Peterfreund --
Payment due / Frances Hardinge --
A handul of ashes / Garth Nix --
Little gods / Holly Black --
Barrio girls / Charles De Lint --
Felidis / Tanith Lee --
Witch work / Neil Gaiman --
The education of a witch / Ellen Klages --
The threefold world / Ellen Kushner --
The witch in the wood / Delia Sherman --
Which witch / Patricia A. McKillip --
The carved forest / Tim Pratt --
Burning castles / M. Rickert --
The stone witch / Isobelle Carmody --
Andersen''s witch / Jane Yolen --
B is for Bigfoot / Jim Butcher --
Great-grandmother in the cellar / Peter S. Beagle --
Crow and caper, caper and crow / Margo Lanagan.', NULL, 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (743, N'Fragile things : short fictions & wonders', 2007, N'Headline Review', N'Gaiman, Neil', N'A study in emerald --
The fairy reel --
October in the chair --
The hidden chamber --
Forbidden brides of the faceless slaves in the secret house of the night of dread desire --
The flints of memory lane --
Closing time --
Going wodwo --
Bitter grounds --
Other people --
Keepsakes and treasures --
Good boys deserve favors --
The facts in the case of the departure of Miss Finch --
Strange little girls --
Harlequin valentine --
Locks --
The problem of Susan --
Instructions --
How do you think it feels? --
My life --
Fifteen painted cards from a vampire tarot --
Feeders and eaters --
Diseasemaker''s group --
In the end --
Goliath --
Pages from a journal found in a shoebox left in a Greyhound bus somewhere between Tulsa, Oklahoma, and Louisville, Kentucky --
How to talk to girls at parties --
The day the saucers came --
Sunbird --
Inventing Aladdin --
The monarch of the glen --
Credits.', N'Headline review fiction', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (744, N'Short stories', 1996, N'Dover Publications', N'Alcott, Louisa May', N'From Hospital Sketches,
My Contraband,
Happy Women,
How I Went Out to Service', N'Louisa May Alcott''s Short Stories', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (745, N'Odd and frost giants', 2008, N'Bloomsbury', N'Gaiman, Neil', NULL, NULL, 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (746, N'Neverwhere', 2013, N'Headline', N'Gaiman, Neil', NULL, N'Headline fiction', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (747, N'M is for magic', 2007, N'Bloomsbury', N'Gaiman, Neil', N'Instructions --
The case of the four and twenty blackbirds --
Troll bridge --
Don''t ask Jack --
How to sell the Ponti Bridge --
October in the chair --
Chivalry --
The price --
How to talk to girls at parties --
Sunbird --
The witch''s headstone.', NULL, 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (748, N'Scavenger Chaos Zone', 2015, N'Macmillan', N'Stewart, Paul/Chris Riddell', NULL, N'Scavenger series', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (749, N'An Old-Fashioned Thanksgiving', 2005, N'Harper Collins', N'Alcott, Louisa May', N'Slikovnica', N'Louisa May Alcott''s Short Stories', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (750, N'The tragical comedy or comical tragedy of Mr. Punch', 1994, N'Victor Gollanz', N'Gaiman, Neil', N'Strip', N'VG graphics', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (751, N'Hazarski rečnik', 1983, N'Prosveta', N'Pavić, Milorad', NULL, NULL, 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (752, N'Tristan i izolda', 1998, N'Marjan tisak', N'Bedier, Joseph', N'Svjetska književnost', N'Biblioteka Svjetski klasici', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (753, N'Moraš donijeti šešir', 2017, N'Profil', N'Phillip, Simon/ Kate Hindley', N'Slikovnica', NULL, 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (754, N'Umijeće utrkivanja po kiši', 2011, N'Ljevak', N'Stein, Garth', NULL, N'Biblioteka Graham Greene', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (755, N'Plodovi gneva', 1977, N'Slovo ljubve', N'Steinbeck, John', NULL, N'Nobelova nagrada', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (756, N'Zaljubljeni žabac', 2005, N'Golden marketing', N'Velthuijs, Max', N'Slikovnica', N'Biblioteka Žabica', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (757, N'Kad sanjam', 2017, N'Kašmir promet', N'Petrlik Huseinović, Andrea', N'Slikovnica', NULL, 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (758, N'Ja koja imam nevinije ruke', 2010, N'Naklada Zoro', N'Parun, Vesna', N'Poezija', NULL, 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (759, N'Matovilko, operi svoju zlaćanu kosu', 2017, N'Turistička naklada', N'Smallman, Steve', N'Slikovnica', N'Biblioteka Loptica', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (760, N'Avanture Petra Zecimira', 2017, N'Mozaik knjiga', N'Potter, Beatrix', NULL, NULL, 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (761, N'Vuk koji je ispao iz knjige', 2017, N'Planetopija', N'Roberrecht, Thierry', N'Slikovnica', N'Biblioteka Dodo', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (762, N'Vuk koji je zalutao u zemlju bajki', 2018, N'Znanje', N'Lallemand, Orianne/Thuiller, Eleonore', N'Slikovnica', N'Serijal o Vuku', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (763, N'Island', 2015, N'Caboodle Books', N'Singer, Nick/Chris Riddell', NULL, NULL, 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (764, N'How the Marquis got his coat back', 2015, N'Headline', N'Gaiman, Neil', NULL, NULL, 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (765, N'Little men : life at Plumfield with Jo''s boys', 1984, N'Puffin Books', N'Alcott, Louisa May', N'Knj. 3
With two sons of her own, and twelve rescued orphan boys filling the informal school at Plumfield, Jo March -- now Jo Bhaer -- couldn''t be happier. But despite the warm and affectionate help of the whole March family, boys have a habit of getting into scrapes, and there are plenty of troubles and adventures in store.', N'Little Women series', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (766, N'Smoke and Mirrors', 2000, N'Headline', N'Gaiman, Neil', NULL, NULL, 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (767, N'Dracula''s daughter', 1988, N'Heinmann', N'Hoffman, Mary/ Chris Riddell', NULL, N'Banana books', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (768, N'Jo''s boys', 1994, N'Puffin Books', N'Alcott, Louisa May', N'Knj. 4
Beginning ten years after Little Men, Jo’s Boys revisits Plumfield, the New England school still presided over by Jo and her husband, Professor Bhaer. Jo remains at the center of the tale, surrounded by her boys—including rebellious Dan, sailor Emil, and promising musician Nat—as they experience shipwreck and storm, disappointment and even murder', N'Little Women series', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (769, N'Behind a mask or A woman''s power', 2005, N'Wildside Press', N'Alcott, Louisa May', N'Set in Victorian era Britain, the story follows Jean Muir, the deceitful governess of the wealthy Coventry family. With expert manipulation, Jean Muir obtains the love, respect, and eventually the fortune of the Coventry family.', N'Louisa May Alcott''s thriller stories', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (770, N'The little bear stories', 2001, N'Walker Books', N'Waddell, Martin', N'Slikovnica', NULL, 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (771, N'Bird''s new shoes', 1987, N'Andersen Press', N'Riddel, Chris', N'Slikovnica', NULL, 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (772, N'The trouble with elephants', 1997, N'Walker Books', N'Riddel, Chris', N'Slikovnica', NULL, 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (773, N'Castle diary', 2001, N'Walker Books', N'Platt, Richard/ Chris Riddell', NULL, NULL, 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (774, N'When the walrus comes', 1989, N'Walker Books', N'Riddel, Chris', N'Slikovnica', NULL, 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (775, N'Neko se uselio u onu staru vilu : Stimpank roman u zagonetkama', 2018, N'Laguna', N'Petrović, Uroš', NULL, NULL, 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (776, N'Molitva moru', 2018, N'Laguna', N'Hosseini, Khaled', NULL, NULL, 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (777, N'Agi i Ema', 2018, N'Laguna', N'Kolarov, Igor', NULL, N'Mala Laguna', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (778, N'Biblioteka noću', 2008, N'Geopoetika', N'Manguel, Alberto', NULL, N'Edicija Intimna istorija', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (779, N'Karavan čudesa', 2018, N'Laguna', N'Petrović, Uroš', NULL, NULL, 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (780, N'Zakotrljaj me oko sveta', 2018, N'Laguna', N'Radojičić, Snežana', N'Jadran', N'Biblioteka Meridijan', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (781, N'Fvonk', 2012, N'Geopoetika', N'Loe, Erlend', NULL, N'Edicija Svet proze', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (782, N'Stivenson pod palmama', 2006, N'Geopoetika', N'Manguel, Alberto', NULL, N'Edicija Pisac o piscu', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (783, N'Teuta', 2004, N'Geopoetika', N'Miraš Martinović', NULL, N'Edicija Svet proze', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (784, N'Popis', 2015, N'Geopoetika', N'Loe, Erlend', NULL, N'Edicija Svet proze', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (785, N'Kraj nama poznatog sveta', 2017, N'Geopoetika', N'Loe, Erlend', N'Doppler 3', N'Edicija Svet proze', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (786, N'Povratak kući', 2009, N'Samizdat B92', N'Olafsson, Olaf', NULL, N'Edicija Busola', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (787, N'Žene koje trče s vukovima', 2017, N'Nova knjiga', N'Pinkola Estes, Clarissa', NULL, N'Biblioteka Posebna izdanja', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (788, N'Nordijska mitologija', 2017, N'Laguna', N'Gaiman, Neil', NULL, NULL, 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (789, N'Lasica i njih devetoro', 2017, N'Agora', N'Jaaskelainen, Pasi Ilmari', NULL, NULL, 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (790, N'Volvo kamioni', 2017, N'Geopoetika', N'Loe, Erlend', N'Doppler 2', N'Edicija Svet proze', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (791, N'Mi', 2017, N'Nova knjiga', N'Zamjatin, Jevgenij', NULL, N'Biblioteka Kult', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (792, N'Mulej', 2018, N'Geopoetika', N'Loe, Erlend', NULL, N'Edicija Svet proze', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (793, N'Baba Jaga leteća veštica', 2009, N'IPS Media ', N'Davidson, Suzana', NULL, N'Edicija Moja prva knjiga', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (794, N'Joga Nidra', 1990, N'Partizan', N'Satyanada Saraswati, Swami', N'Jadran', NULL, 0, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (795, N'Osvajanje', 2008, N'Geopoetika', N'Murray, Yxta Maya', NULL, N'Edicija Svet proze', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (796, N'Destruktivne emocije', 2017, N'Geopoetika', N'Goleman, Daniel', N'Jadran', N'Edicija Krug', 0, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (797, N'Majstor i Margarita', 2015, N'Vulkan', N'Bulgakov, Mihail', NULL, NULL, 1, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (798, N'Mesečev kamen', 2017, N'Geopoetika', N'Sjon', NULL, N'Edicija Svet proze', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (799, N'Dva brata', 2011, N'Geopoetika', N'Hatoum, Milton', NULL, N'Edicija Svet proze', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (800, N'Sa Borhesom', 2005, N'Geopoetika', N'Manguel, Alberto', NULL, N'Edicija Pisac o piscu', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (801, N'The princess diaries : Mia goes fourth', 2004, N'Macmillan', N'Cabot, Meg', N'Knj. 4', N'Princess Diaries', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (802, N'Mjesta ima na metli svima', 2017, N'Ibis Grafika', N'Donaldson, Julia', N'Slikovnica', NULL, 1, 5014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (803, N'Bajka je bajka', 2007, N'Simetriks', N'Goljački, Višnja', N'Slikovnica', NULL, 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (804, N'Vuk koji je želio postati umjetnik', 2018, N'Znanje', N'Lallemand, Orianne/Thuiller, Eleonore', N'Slikovnica', N'Serijal o Vuku', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (805, N'Vuk koji se bojao vlastite sjene', 2018, N'Znanje', N'Lallemand, Orianne/Thuiller, Eleonore', N'Slikovnica', N'Serijal o Vuku', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (806, N'Dan kada sam se pretvorio u pticu', 2018, N'Planetopija', N'Chabbert Guridi, Ingrid', N'Slikovnica', N'Biblioteka Dodo', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (807, N'Lazy days', 2013, N'Head of Zeus', N'Loe, Erlend', NULL, NULL, 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (808, N'Blueberry Girl', 2010, N'Bloomsbury', N'Gaiman, Neil', N'Slikovnica', N'Bloomsbury Children''s Books', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (809, N'Volpone', 1999, N'ArTresor naklada', N'Jonson, Ben', NULL, N'Spone', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (810, N'Doktor Crveni Nos', 2013, N'Crveni nosevi', N'Pervan, Jelena', N'Slikovnica', NULL, 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (811, N'Englesko-hrvatski slikovni rječnik', 2000, N'Egmont', N'Disney, Walt', NULL, NULL, 1, 5)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (812, N'Hrkalo', 2015, N'Naša djeca', N'Pervan, Jelena', N'Slikovnica', NULL, 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (813, N'Hrkalo i Kamilica', 2015, N'Naša djeca', N'Pervan, Jelena', N'Slikovnica', NULL, 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (814, N'Atlas uplašenog čoveka', 2014, N'Geopoetika', N'Ransmayr, Christoph', NULL, N'Edicija Svet proze', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (815, N'Hrkalo i Drijemalo', 2015, N'Naša djeca', N'Pervan, Jelena', N'Slikovnica', N'Serijal o Hrkalu', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (816, N'Žirafe plesati ne znaju', 2017, N'Profil', N'Andreae, Giles', N'Slikovnica', NULL, 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (817, N'Suli u avanturi : prijateljstvo', 2017, N'Profil', N'Šimleša, Maja', N'Slikovnica', NULL, 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (818, N'Što je bubamara čula ', 2015, N'Profil', N'Donaldson, Julia', N'Slikovnica', NULL, 1, 5014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (819, N'Što je bubamara čula na odmoru', 2018, N'Profil', N'Donaldson, Julia', N'Slikovnica', NULL, 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (820, N'Šećerko i Jednoroga', 2017, N'Profil', N'Donaldson, Julia', N'Slikovnica', NULL, 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (821, N'Raspjevana sirena', 2016, N'Profil', N'Donaldson, Julia', NULL, NULL, 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (822, N'Kućicu treba dijeliti', 2017, N'Profil', N'Donaldson, Julia', N'Slikovnica', NULL, 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (823, N'Dug put kući', 2016, N'Profil', N'Jeffers, Oliver', N'Slikovnica', NULL, 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (824, N'Yoga : Harmonija duha i tela', 1983, N'Sportska knjiga Beograd', N'Puljo, Jasmina', N'Jadran', NULL, 0, 11)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (825, N'Meditacija : prva i posljednja sloboda', 2016, N'Harša', N'Osho', N'Jadran', NULL, 0, 11)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (826, N'Beaded jewellery : create your own style', 2006, N'DK', N'Brenner, Maya', NULL, NULL, 0, 11)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (827, N'Earrings : 20 beading projects', 2011, N'Lark Crafts', N'Lark Crafts', NULL, N'Simply Series', 0, 11)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (828, N'Vedska kozmologija : hijerarhija svemira', 1999, N'Bhaktivedanta', N'Đurđević, Krunoslav', N'Jadran', NULL, 0, 11)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (829, N'Filozofija osećanja', 2007, N'Geopoetika', N'Grelland, Hans H.', NULL, N'Edicija Teorija', 0, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (830, N'Reading, how to.', 1976, N'Penguin Books', N'Kohl, Herbert', NULL, N'Penguin Education', 0, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (831, N'Začaravanje', 2005, N'Samizdat B92', N'Miljković, Mina', NULL, N'Edicija Busola', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (832, N'From the mouth of the whale', 2011, N'Telegram', N'Sjon', NULL, NULL, 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (833, N'The melancholy death of Oyster boy & other stories', 2005, N'Faber and Faber', N'Burton, Tim', NULL, NULL, 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (834, N'The princess diaries : third time lucky', 2007, N'Macmillan', N'Cabot, Meg', N'Knj. 3', N'Princess Diaries', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (835, N'Girling up . how to be strong, smart and spectacular', 2017, N'Philomel Books', N'Bialik, Mayim', NULL, NULL, 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (836, N'The princess diaries : give me five', 2003, N'Macmillan', N'Cabot, Meg', N'Knj. 5', N'Princess Diaries', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (837, N'The wolves in the walls', 2003, N'Bloomsbury', N'Gaiman, Neil', N'Slikovnica', NULL, 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (838, N'The edge chronicles : the descenders', 2019, N'Corgi Books', N'Stewart, Paul/Chris Riddell', N'Knj 13, Knj. 3 Cade', N'The edge chronicles', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (839, N'Pirate diary : the journey of Jake Carpenter', 2014, N'Walker Books', N'Platt, Richard/ Chris Riddell', NULL, N'Diary Series', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (840, N'The princess diaries : sixsational', 2004, N'Macmillan', N'Cabot, Meg', N'Knj. 6', N'Princess Diaries', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (841, N'Tyrannosaurus Drip', 2007, N'Macmillan', N'Donaldson, Julia', N'Slikovnica', NULL, 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (842, N'Tabby McTat', 2010, N'Allison Green Books', N'Donaldson, Julia', N'Slikovnica', NULL, 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (843, N'The rhyming rabbit', 2012, N'Macmillan', N'Donaldson, Julia', N'Slikovnica', NULL, 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (844, N'The snake who came to stay', 2013, N'Barrington Stoke', N'Donaldson, Julia', NULL, NULL, 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (845, N'The dinosaur''s day', 2002, N'Puffin Books', N'Donaldson, Julia', NULL, NULL, 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (846, N'Medvjed i slavuj', 2018, N'Mitopeja', N'Arden, Katherine', N'Knj. 1', N'Serijal Zimska noc', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (847, N'Ilustrirani leksikon joge', 2017, N'Mozaik knjiga', N'Orlić, Domagoj', NULL, NULL, 0, 11)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (848, N'Mjesečeva splav', 2004, N'Školska knjiga', N'Lovrenčić, Sanja', N'Slikovnica', N'Krijesnice', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (849, N'Nebo i pakao', 2015, N'Fraktura', N'Stefanson, Jan Kalman', NULL, N'Serijal Nebo i pakao', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (850, N'Nisi ružno, pače', 2017, N'Turistička naklada', N'Smallman, Steve', N'Slikovnica', N'Biblioteka Loptica', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (851, N'The giver', 1994, N'Bantam Books', N'Lowry, Lois', N'Knj. 1', N'Giver series', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (852, N'Mother Goose', 1994, N'Wordsworth', N'Rackham, Arthur (ur.)', NULL, NULL, 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (853, N'Čudesne bajke 4', 1971, N'Stvarnost', N'Carruth, Jane, prir.', NULL, N'Čudesne bajke', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (854, N'Pepeljugina čarobna pustolovina', 1987, N'Grafički zavod Hrvatske', N'Disney, Walt', NULL, N'Odaberi svoju pustolovinu', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (855, N'Trnoružica i princ', 1987, N'Grafički zavod Hrvatske', N'Disney, Walt', NULL, N'Odaberi svoju pustolovinu', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (856, N'Rosie''s hat', 2010, N'Macmillan', N'Donaldson, Julia', N'Slikovnica', NULL, 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (857, N'The magic paintbrush', 2004, N'Macmillan', N'Donaldson, Julia', N'Slikovnica', NULL, 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (858, N'Follow the swallow', 2000, N'Egmont', N'Donaldson, Julia', NULL, N'Blue bananas', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (859, N'The rights of the reader', 2006, N'Walker books', N'Pennac, Daniel', NULL, NULL, 1, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (860, N'100 hugs', 2017, N'Macmillan', N'Riddell, Chris', NULL, NULL, 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (861, N'The jungle house', 2005, N'Barrington Stoke', N'Donaldson, Julia', NULL, NULL, 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (862, N'Alienography 2', 2012, N'Macmillan', N'Riddell, Chris', NULL, NULL, 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (863, N'The swan''s stories', 1997, N'Walker books', N'Andersen, Hans Christian', NULL, NULL, 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (864, N'Someday, someday maybe', 2014, N'Ballantine books', N'Graham, Lauren', NULL, NULL, 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (865, N'The rabbits'' rebellion', 2001, N'Doubleday', N'Dorfman, Ariel', NULL, NULL, 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (866, N'The Fibbs', 1989, N'Walker books', N'Riddell, Chris', N'Slikovnica', NULL, 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (867, N'Monstees of men', 2010, N'Walker books', N'Ness, Patrick', N'Knj.3', N'Chaos walking', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (868, N'The ask and the answer', 2009, N'Walker books', N'Ness, Patrick', N'Knj.2', N'Chaos walking', 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (869, N'Plava lisica', 2016, N'VBZ', N'Sjon', NULL, N'Europom u 30 knjiga', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (870, N'The paper dolls', 2013, N'Macmillan', N'Donaldson, Julia', NULL, NULL, 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (871, N'The giant jumperee', 2017, N'Puffin Books', N'Donaldson, Julia', N'Slikovnica', NULL, 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (872, N'Mr. Underbed', 2011, N'Andersen Press', N'Riddel, Chris', N'Slikovnica', NULL, 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (873, N'Monkey puzzle', 2000, N'Macmillan', N'Donaldson, Julia', N'Slikovnica', NULL, 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (874, N'The smartest giant in town', 2002, N'Macmillan', N'Donaldson, Julia', N'Slikovnica', NULL, 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (875, N'The stick man annual', 2018, N'Allison Green Books', N'Donaldson, Julia', NULL, NULL, 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (876, N'Sanja', 1992, N'Dečje novine', N'Kapor, Momo', N'Slikovnica', NULL, 1, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (877, N'Kaktusi', 1990, N'Mladinska knjiga', N'Kutanjac, Miroslav (ur.)', NULL, N'Moje sobno bilje', 0, 11)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (878, N'Lovci na mamute I', 1989, N'Globus', N'Auel, Jean M.', N'Pleme spiljskog medvjeda, knj. 3, dio 1', N'Biblioteka Globus', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (879, N'Lovci na mamute II', 1989, N'Globus', N'Auel, Jean M.', N'Serijal Pleme spiljskom medvjeda, knj. 3, dio 2', N'Biblioteka Globus', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (880, N'Deca Bestragije', 2019, N'Laguna', N'Petrović, Uroš', NULL, NULL, 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (881, N'Urnebesna fizika', 2018, N'Laguna', N'Paunović, Svetislav i dr.', NULL, NULL, 0, 11)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (882, N'Mortina 1 : da pukneš od smeha', 2018, N'Evrobook', N'Cantini, Barbara', NULL, N'Mortina', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (883, N'Mortina 2 . Mortina i dosadni rođak', 2018, N'Evrobook', N'Cantini, Barbara', NULL, N'Mortina', 1, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (884, N'Baš kako treba', 2018, N'Geopoetika', N'Gaarder, Jostein', NULL, N'Edicija Svet proze', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (885, N'Svi su ljudi lažljivci', 2013, N'Geopoetika', N'Manguel, Alberto', NULL, N'Edicija Svet proze', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (886, N'Pisac kao profesija', 2019, N'Geopoetika', N'Murakami, Haruki', NULL, N'Edicija Pisac o piscu', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (887, N'Ja sam Akiko', 2019, N'Laguna', N'Tićmi, Stefan', NULL, N'Edicija Malo gnezdo', 1, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (888, N'Dvanaesto more', 2019, N'Laguna', N'Kolarov, Igor', NULL, NULL, 1, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (889, N'Kuća hiljadu maski', 2019, N'Laguna', N'Kolarov, Igor', NULL, N'Mala Laguna', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (890, N'Životinje u Africi', 2019, N'Geopoetika', N'Loe, Erlend', NULL, N'Edicija Svet proze', 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (891, N'Peti leptir', 2018, N'Laguna', N'Petrović, Uroš', NULL, NULL, 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (892, N'O krilima i čudima', 2019, N'Laguna', N'Filipović, Aleksandra', NULL, NULL, 0, 9)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (893, N'Pirulito i Rozalija', 2015, N'ArTresor naklada', N'Bibiou, Athina', NULL, N'Mali medvjed', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (894, N'Ibn Batuta', 2016, N'ArTresor naklada', N'Sharafeddine, Fatima', NULL, N'Mali medvjed', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (895, N'Sve je to obitelj!', 2913, N'ArTresor naklada', N'Maxeiner, Alexandra', N'Slikovnica', N'Mali medvjed', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (896, N'Ukuhane jabuke', 2013, N'ArTresor naklada', N'Verplancke, Klaus', N'Slikovnica', N'Mali medvjed', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (897, N'Independent people', 2008, N'Vintage', N'Laxness, Halldor', NULL, NULL, 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (898, N'Rainbow fish to the rescue', 1995, N'NorthSouth', N'Pfister, Marcus', N'Slikovnica', N'Rainbow Fish', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (899, N'Just the way you are', 2002, N'NorthSouth', N'Pfister, Marcus', N'Slikovnica', NULL, 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (900, N'The house with chicken legs', 2018, N'Usborne', N'Anderson, Sophie', NULL, NULL, 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (901, N'Once upon a wild wood', 2019, N'Macmillan', N'Riddell, Chris', N'Slikovnica', NULL, 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (902, N'Web (level 4)', 1991, N'Penguin Books', N'Whyndham, John', NULL, N'Penguin English', 0, 3014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (903, N'Wishtree', 2007, N'Macmillan', N'Riddell, Chris', N'Slikovnica', NULL, 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (904, N'Coffee at Luke''s', 2007, N'Benbella Books', N'Crusie, Jennifer', NULL, N'Smart Pop', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (905, N'Ben and the bear', 1986, N'Walker Books', N'Riddell, Chris', N'Slikovnica', N'Fun to read picture books', 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (906, N'Gospođica Škarica', 2015, N'ArTresor naklada', N'Belhassen, Nathalie', N'Slikovnica', N'Mali medvjed', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (907, N'Život na rubu dimenzija', 2016, N'Harša', N'Rachele, Sal', N'Jadran', NULL, 0, 10)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (908, N'Vuk koji je tražio ljubav', 2018, N'Znanje', N'Lallemand, Orianne/Thuiller, Eleonore', N'Slikovnica', N'Serijal o Vuku', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (909, N'Vjeverice svađalice', 2019, N'Profil', N'Bright, Rachel', N'Slikovnica', NULL, 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (910, N'Wilderness tips', 2004, N'Virago', N'Atwood, Margaret', NULL, NULL, 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (911, N'One Ted falls out of bed', 2012, N'Macmillan', N'Donaldson, Julia', N'Slikovnica', NULL, 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (912, N'The giants and the Joneses', 2004, N'Egmont', N'Donaldson, Julia', NULL, NULL, 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (913, N'Charlie Cook''s favourite book', 2006, N'Macmillan', N'Donaldson, Julia', NULL, NULL, 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (914, N'One mole digging a hole', 2010, N'Macmillan', N'Donaldson, Julia', NULL, NULL, 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (915, N'Tiddler', 2007, N'Scolastic', N'Donaldson, Julia', N'Slikovnica', NULL, 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (916, N'Songbirds (6 in 1)', 2012, N'Oxford', N'Donaldson, Julia', NULL, NULL, 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (917, N'The complete Eurovision song contest companion', 1998, N'Pavilion', N'Gambaccini, Paul et. al.', NULL, NULL, 0, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (918, N'Alienography', 2010, N'Macmillan', N'Riddell, Chris', NULL, NULL, 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (919, N'The scarecrows'' wedding', 2014, N'Allison Green Books', N'Donaldson, Julia', N'Slikovnica', NULL, 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (920, N'Superworm', 2012, N'Allison Green Books', N'Donaldson, Julia', N'Slikovnica', NULL, 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (921, N'Zimnik', 2018, N'Lumen', N'Pratchett, Terry', N'Tiffany 3', N'Svijet diska', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (922, N'Zločesta sjemenka', 2019, N'Harfa', N'John, Jory', N'Slikovnica', NULL, 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (923, N'Sretan Božić, mala krtice!', 2019, N'Znanje', N'Lallemand, Orianne', NULL, NULL, 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (924, N'Mali žir', 2019, N'Znanje', N'Joyce, Melanie', NULL, NULL, 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (925, N'Duboko zamrzavanje i pripremanje duboko zamrznutih jela', 1979, N'Nolit', N'Burda', N'Jadran', NULL, 0, 10)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (926, N'Cinnamon', 2019, N'Bloomsbury', N'Gaiman, Neil', N'Slikovnica', NULL, 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (927, N'The graveyard book comic', 2014, N'Harper Collins', N'Gaiman, Neil', NULL, NULL, 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (928, N'Eurovision!', 2017, N'Melville House', N'West, Chris', NULL, NULL, 0, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (929, N'The day I swapped my dad for two goldfish', 2005, N'Bloomsbury', N'Gaiman, Neil', NULL, NULL, 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (930, N'Silver dream', 2014, N'Harper Collins', N'Gaiman, Neil', N'Interworld 2', NULL, 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (931, N'Crazy hair', 2009, N'Bloomsbury', N'Gaiman, Neil', N'Slikovnica', NULL, 1, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (932, N'Islandsko zvono', 1959, N'Svjetlost', N'Laxness, Halldor', NULL, N'Biblioteka svjetske književnosti Feniks', 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (933, N'Djedov tajni div', 2019, N'Mozaik knjiga', N'Litchfield, David', N'Slikovnica', NULL, 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (934, N'Vuk koji je ovladao svojim osjećajima', 2020, N'Znanje', N'Lallemand, Orianne', N'Slikovnica', N'Serijal o Vuku', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (935, N'Medo i klavir', 2018, N'Mozaik knjiga', N'Litchfield, David', N'Slikovnica', NULL, 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (936, N'Koala koja može sve', 2020, N'Profil', N'Bright, Rachel', N'Slikovnica', NULL, 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (937, N'Vodič kroz osobni narcizam', 2013, N'Omega lan', N'Kolega, Kristijan', N'Jadran', NULL, 0, 11)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (938, N'Lady Susan and other works', 2013, N'Wordsworth Editions', N'Austen, Jane', NULL, NULL, 0, 8)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (939, N'Priča o plavom planetu', 2020, N'Znanje', N'Magnason, Andri Snaer', NULL, NULL, 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (940, N'Dugo putovanje maloga vuka', 2020, N'Profil', N'Bright, Rachel', N'Slikovnica', NULL, 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (941, N'Integracija duše', 2013, N'Harša', N'Rachele, Sal', N'Jadran', NULL, 0, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (942, N'Osnovni principi slobodne volje', 2016, N'Omega lan', N'Kolega, Kristijan', N'Jadran', N'Biblioteka Um caruje', 0, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (943, N'Tajne neograničene energije', 2020, N'Harša', N'Rachele, Sal', N'Jadran', NULL, 0, 6)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (944, N'Riba duginih boja', 2019, N'VBZ', N'Pfister, Marcus', N'SLikovnica', N'Biblioteka Bubamara', 1, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (945, N'Lav i ptica', 2016, N'Harfa', N'Dubuc, Marianne', NULL, NULL, 1, 5014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (946, N'Slonić po imenu Ja', 2020, N'Profil', N'Andreae, Giles', NULL, NULL, 1, 5014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (947, N'Kabirove pjesme', 2006, N'Paralele', N'Kabir', N'Jadran', NULL, 0, 1)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (948, N'Mali princ', 2019, N'Artresor', N'Lestrade, Agnes', NULL, N'Mali medvjed', 1, 5014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (949, N'Oblak u žutom kaputu', 2019, N'Evenio', N'Manojlović Vračar, Nikolina', N'Ilus. Jelena Brezovec', NULL, 1, 5014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (950, N'Jedrenjak na kraju ulice', 2020, N'Školska knjiga', N'Bakran, Tamara', N'Il. Vendi Vernić', NULL, 0, 5014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (951, N'Jedrenjak na kraju ulice', 2020, N'Školska knjiga', N'Bakran, Tamara', N'Il. Vendi Vernić', NULL, 1, 5014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (952, N'Prutimir', 2018, N'Ibis grafika', N'Donaldson, Julia', N'Il. Alex Scheffler', NULL, 1, 5014)
GO
INSERT [dbo].[Book] ([Id], [Title], [Year], [Publisher], [Author], [Note], [Collection], [Read], [CategoryId]) VALUES (953, N'Evo nas, tu smo', 2018, N'Profil', N'Jeffers, Oliver', NULL, NULL, 1, 5014)
GO
SET IDENTITY_INSERT [dbo].[Book] OFF
GO
