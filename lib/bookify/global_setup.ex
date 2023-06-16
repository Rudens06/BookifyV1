defmodule Bookify.GlobalSetup do
  def seeds() do
    Bookify.Repo.insert!(%Bookify.Author{
      id: "7pD90s8iiPrPd",
      name: "Ernest Hemingway",
      birth_year: 1899,
      bio: "Ernest Hemingway was an American author and journalist known for his economical and understated writing style, including the novels The Old Man and the Sea and A Farewell to Arms.",
      author_pic_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/28/ErnestHemingway.jpg/220px-ErnestHemingway.jpg",
      wikipedia_url: "https://en.wikipedia.org/wiki/Ernest_Hemingway"
    })

    Bookify.Repo.insert!(%Bookify.Author{
      id: "8xM50b5kkJfXq",
      name: "Jane Austen",
      birth_year: 1775,
      bio: "Jane Austen was an English novelist known primarily for her six major novels, which interpret, critique and comment upon the British landed gentry at the end of the 18th century.",
      author_pic_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/CassandraAusten-JaneAusten%28c.1810%29_hires.jpg/400px-CassandraAusten-JaneAusten%28c.1810%29_hires.jpg",
      wikipedia_url: "https://en.wikipedia.org/wiki/Jane_Austen"
    })

    Bookify.Repo.insert!(%Bookify.Author{
      id: "9mT70c9jjOgAd",
      name: "Mark Twain",
      birth_year: 1835,
      bio: "Mark Twain was an American writer, humorist, entrepreneur, publisher, and lecturer. He is best known for his novels The Adventures of Tom Sawyer and Adventures of Huckleberry Finn.",
      author_pic_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/Mark_Twain_by_AF_Bradley.jpg/440px-Mark_Twain_by_AF_Bradley.jpg",
      wikipedia_url: "https://en.wikipedia.org/wiki/Mark_Twain"
    })

    Bookify.Repo.insert!(%Bookify.Author{
      id: "6sL80d4hhHcNe",
      name: "Emily Bronte",
      birth_year: 1818,
      bio: "Emily Bronte was an English novelist and poet who is best known for her only novel, Wuthering Heights, now considered a classic of English literature.",
      author_pic_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Emily_Bront%C3%AB_by_Patrick_Branwell_Bront%C3%AB_restored.jpg/440px-Emily_Bront%C3%AB_by_Patrick_Branwell_Bront%C3%AB_restored.jpg",
      wikipedia_url: "https://en.wikipedia.org/wiki/Emily_Bront%C3%AB"
    })

    Bookify.Repo.insert!(%Bookify.Author{
      id: "4gP89sJkLpTfD",
      name: "Arthur Conan Doyle",
      birth_year: 1859,
      bio: "Sir Arthur Ignatius Conan Doyle was a British writer and physician, best known for creating the fictional detective Sherlock Holmes. He wrote four novels and 56 short stories featuring Holmes, which are now considered classics of detective fiction.",
      author_pic_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Conan_doyle.jpg/440px-Conan_doyle.jpg",
      wikipedia_url: "https://en.wikipedia.org/wiki/Arthur_Conan_Doyle"
    })

    Bookify.Repo.insert!(%Bookify.Book{
      id: "7lK12ioiQPrPK",
      title: "The Old Man and the Sea",
      author_id: "7pD90s8iiPrPd",
      page_count: 127,
      publish_year: 1952,
      genre: ["Literary Fiction"],
      anotation: "The Old Man and the Sea is a novella written by the American author Ernest Hemingway in 1951 in Cayo Blanco (Cuba), and published in 1952. It was the last major work of fiction written by Hemingway that was published during his lifetime. One of his most famous works, it tells the story of Santiago, an aging Cuban fisherman who struggles with a giant marlin far out in the Gulf Stream off the coast of Cuba.

      In 1953, The Old Man and the Sea was awarded the Pulitzer Prize for Fiction, and it was cited by the Nobel Committee as contributing to their awarding of the Nobel Prize in Literature to Hemingway in 1954.",
      cover_pic_url: "https://upload.wikimedia.org/wikipedia/en/7/73/Oldmansea.jpg"
    })

    Bookify.Repo.insert!(%Bookify.Book{
      id: "9sD18gsdRtPqG",
      title: "For Whom the Bell Tolls",
      author_id: "7pD90s8iiPrPd",
      page_count: 480,
      publish_year: 1940,
      genre: ["War Fiction", "Literary Fiction"],
      anotation: "For Whom the Bell Tolls is a novel by Ernest Hemingway published in 1940. It tells the story of Robert Jordan, a young American in the International Brigades attached to a republican guerrilla unit during the Spanish Civil War. As a dynamiter, he is assigned to blow up a bridge during an attack on the city of Segovia. The novel is regarded as one of Hemingway's best works and is considered a classic of 20th century literature.",
      cover_pic_url: "https://upload.wikimedia.org/wikipedia/en/4/48/ErnestHemmingway_ForWhomTheBellTolls.jpg"
    })

    Bookify.Repo.insert!(%Bookify.Book{
      id: "8kL89ghJkLmPf",
      title: "A Farewell to Arms",
      author_id: "7pD90s8iiPrPd",
      page_count: 355,
      publish_year: 1929,
      genre: ["War Fiction", "Literary Fiction"],
      anotation: "A Farewell to Arms is a novel by Ernest Hemingway published in 1929. Set during World War I, it is a story of an American ambulance driver, Frederic Henry, and his love for an English nurse, Catherine Barkley, against the backdrop of the war. The novel is considered one of Hemingway's best works and is often cited as a classic of 20th century literature.",
      cover_pic_url: "https://upload.wikimedia.org/wikipedia/en/4/48/Hemingway_farewell.png"
    })

    Bookify.Repo.insert!(%Bookify.Book{
      id: "5dF39dhRtJkLp",
      title: "The Adventures of Tom Sawyer",
      author_id: "9mT70c9jjOgAd",
      page_count: 224,
      publish_year: 1876,
      genre: ["Children's Literature"],
      anotation: "The Adventures of Tom Sawyer is a novel by Mark Twain published in 1876. It tells the story of a young boy named Tom Sawyer and his adventures in the fictional town of St. Petersburg, Missouri. The book is considered a classic of American literature and has been adapted into numerous films and TV shows.",
      cover_pic_url: "https://images.ucpress.edu/covers/isbn13/9780520343634.jpg"
    })

    Bookify.Repo.insert!(%Bookify.Book{
      id: "3mK98gsdRtPfL",
      title: "Adventures of Huckleberry Finn",
      author_id: "9mT70c9jjOgAd",
      page_count: 366,
      publish_year: 1884,
      genre: ["Children's Literature"],
      anotation: "Adventures of Huckleberry Finn is a novel by Mark Twain published in 1884. It is the sequel to The Adventures of Tom Sawyer and tells the story of Huck Finn and his friend Jim, a runaway slave, as they travel down the Mississippi River on a raft. The book is considered one of the greatest American novels ever written and has been praised for its realistic portrayal of life in the 19th century South.",
      cover_pic_url: "https://images.ucpress.edu/covers/isbn13/9780520343641.jpg"
    })

    Bookify.Repo.insert!(%Bookify.Book{
      id: "8sT12ioiQPrPK",
      title: "The Adventures of Sherlock Holmes",
      author_id: "4gP89sJkLpTfD",
      page_count: 307,
      publish_year: 1892,
      genre: ["Detective Fiction"],
      anotation: "The Adventures of Sherlock Holmes is a collection of twelve short stories by Arthur Conan Doyle, featuring his fictional detective Sherlock Holmes. It was first published on 14 October 1892 by George Newnes Ltd and has since been adapted into numerous formats, including stage, radio, television, and film. The stories are generally considered to be among the best examples of detective fiction and have had a profound influence on the genre.",
      cover_pic_url: "https://upload.wikimedia.org/wikipedia/commons/b/b9/Adventures_of_sherlock_holmes.jpg"
    })

    Bookify.Repo.insert!(%Bookify.Book{
      id: "4pK98ioiQPdLP",
      title: "The Memoirs of Sherlock Holmes",
      author_id: "4gP89sJkLpTfD",
      page_count: 256,
      publish_year: 1894,
      genre: ["Detective Fiction"],
      anotation: "The Memoirs of Sherlock Holmes is a collection of eleven short stories by Arthur Conan Doyle, featuring his fictional detective Sherlock Holmes. It was first published on 13 December 1893 by George Newnes Ltd and has since been adapted into numerous formats, including stage, radio, television, and film. The stories are generally considered to be among the best examples of detective fiction and have had a profound influence on the genre.",
      cover_pic_url: "https://upload.wikimedia.org/wikipedia/commons/b/be/Memoirs_of_sherlock_holmes.jpg"
    })

    Bookify.Repo.insert!(%Bookify.Book{
      id: "2lN45ioiQPrPK",
      title: "The Hound of the Baskervilles",
      author_id: "4gP89sJkLpTfD",
      page_count: 256,
      publish_year: 1902,
      genre: ["Detective Fiction", "Gothic Fiction"],
      anotation: "The Hound of the Baskervilles is a novel by Arthur Conan Doyle, featuring his fictional detective Sherlock Holmes. It was serialized in The Strand Magazine from August 1901 to April 1902, and then published in book form by George Newnes Ltd in April 1902. The novel is set largely on Dartmoor in Devon in England's West Country and tells the story of an attempted murder inspired by the legend of a fearsome, diabolical hound.",
      cover_pic_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/Cover_%28Hound_of_Baskervilles%2C_1902%29.jpg/440px-Cover_%28Hound_of_Baskervilles%2C_1902%29.jpg"
    })
  end

  def seeds_2() do

    Bookify.Repo.insert!(%Bookify.Author{
      id: "12nG45tyuIkJm",
      name: "David Walliams",
      birth_year: 1971,
      bio: "David Walliams is a British comedian, actor, and children's author. He gained popularity as a member of the comedy duo 'Little Britain' and has since become a well-known author of children's books. His books, such as 'The Boy in the Dress' and 'Gangsta Granny,' have received critical acclaim and have been bestsellers worldwide.",
      author_pic_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Ashleigh_and_David_Walliams_%28the_voice_of_Pudsey_in_the_movie%29_%28cropped%29.JPG/220px-Ashleigh_and_David_Walliams_%28the_voice_of_Pudsey_in_the_movie%29_%28cropped%29.JPG",
      wikipedia_url: "https://en.wikipedia.org/wiki/David_Walliams"
    })

    Bookify.Repo.insert!(%Bookify.Book{
      id: "7bK83qpRtGfDn",
      title: "Gangsta Granny",
      author_id: "12nG45tyuIkJm",
      page_count: 304,
      publish_year: 2011,
      genre: ["Children's Literature", "Humor"],
      anotation: "Gangsta Granny is a hilarious and heartwarming children's novel written by David Walliams. It follows the story of Ben, a boy who discovers that his seemingly boring granny has an exciting secret life as an international jewel thief. Together, they embark on a thrilling adventure that involves heists, disguises, and unexpected twists. With its clever humor and touching moments, Gangsta Granny is a beloved book that appeals to both children and adults.",
      cover_pic_url: "https://upload.wikimedia.org/wikipedia/en/thumb/f/f4/Gangsta_Granny_Cover.png/220px-Gangsta_Granny_Cover.png"
    })

    Bookify.Repo.insert!(%Bookify.Author{
      id: "12nG85tyuIkJm",
      name: "Jānis Zuters",
      birth_year: 1974,
      bio: "Latvijas Universitātes Datorikas fakultātes profesors",
      author_pic_url: "http://home.lu.lv/~janiszu/janis_zuters.jpg",
      wikipedia_url: "http://home.lu.lv/~janiszu/"
    })

    Bookify.Repo.insert!(%Bookify.Book{
      id: "7bK83qp797fDn",
      title: "Programmēšana un C++",
      author_id: "12nG85tyuIkJm",
      page_count: 217,
      publish_year: 2021,
      genre: ["Programming", "Coding"],
      anotation: "'Programmēšana un C++' is an authoritative and comprehensive resource for anyone looking to master the C++ programming language. This book covers all essential aspects of C++ programming, from basic syntax to advanced concepts like templates and memory management. With clear explanations and practical examples, readers can gain a solid understanding of C++ and its application in various domains such as software development and system programming. Whether you are a beginner or an experienced programmer, this book provides the necessary knowledge and guidance to write efficient and robust C++ code.

      Through its in-depth exploration of C++ features, best practices, and real-world examples, 'Programmēšana un C++' equips readers with the skills to tackle complex programming challenges. The author's expertise and insights into language design choices and performance considerations make this book a valuable reference for experienced developers. By studying this book, readers can enhance their C++ proficiency, write high-quality code, and take advantage of the language's extensive capabilities to develop sophisticated software solutions."
    })

    Bookify.Repo.insert!(%Bookify.Author{
      id: "8oP29stKjGfEa",
      name: "John Steinbeck",
      birth_year: 1902,
      bio: "John Steinbeck was an American writer, celebrity, and award laureate. He is best known for his works such as 'The Grapes of Wrath' and 'Of Mice and Men,' which explore themes of social justice, humanity, and the struggles of the individual. Steinbeck also engaged in political activism, standing out as a prominent voice during his time. His literary contributions have left a lasting impact on American literature, earning him numerous accolades and a place among the most revered authors of the 20th century.",
      author_pic_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/John_Steinbeck_1939_%28cropped%29.jpg/220px-John_Steinbeck_1939_%28cropped%29.jpg",
      wikipedia_url: "https://en.wikipedia.org/wiki/John_Steinbeck"
    })

    Bookify.Repo.insert!(%Bookify.Book{
      id: "6dR48klMnGcBn",
      title: "Of Mice and Men",
      author_id: "8oP29stKjGfEa",
      page_count: 107,
      publish_year: 1937,
      genre: ["Fiction", "Classic"],
      anotation: "Set during the Great Depression, 'Of Mice and Men' is a compelling novella written by John Steinbeck. The story revolves around the unlikely friendship between two migrant workers, George and Lennie, as they navigate the challenges and hardships of life in rural California. Steinbeck's poignant narrative explores themes of loneliness, dreams, friendship, and the human desire for a sense of belonging. Through vivid characterization and evocative descriptions, the author delves into the struggles faced by individuals striving for a better life amidst a society marked by poverty and societal inequalities. 'Of Mice and Men' is a timeless classic that continues to captivate readers with its profound examination of the human condition.",
      cover_pic_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Of_Mice_and_Men_%281937_1st_ed_dust_jacket%29.jpg/220px-Of_Mice_and_Men_%281937_1st_ed_dust_jacket%29.jpg"
    })

    Bookify.Repo.insert!(%Bookify.Author{
      id: "8oP29stKjGd4r",
      name: "Ēriks Kūlis",
      birth_year: 1941,
      bio: "Ēriks Kūlis (1941) – rakstnieks. Vairāku stāstu, stāstu krājumu, romānu un bērnu pasaku grāmatu autors. Strādājis Liepājas laikrakstā 'Komunists', vēlāk – 'Kurzemes Vārds'.",
      author_pic_url: "https://www.literatura.lv/uploads/persons-files/1299685/kuliseriks.jpg",
      wikipedia_url: "https://www.literatura.lv/personas/eriks-kulis"
    })

    Bookify.Repo.insert!(%Bookify.Book{
      id: "6dR48klMneews",
      title: "Niķa un Riķa stiķi",
      author_id: "8oP29stKjGd4r",
      page_count: 212,
      publish_year: 2022,
      genre: ["Children's Literature"],
      anotation: "Grāmata par zinātkāriem rūķiem, kas grib tikt skaidrībā par to, vai bumbierus taisa no bumbām, vai sniegpulkstenītēm mājas ir sniegā vai pulkstenī, vai spalvaskāts ir ļoti spalvains un kāpēc lasis nemāk lasīt.
      Šajā grāmatā var daudz uzzināt par zinātkāro, labestīgo, nereti palaidnīgo rūķēnu Niķa un Riķa labajiem darbiem un arī nedarbiem.",
      cover_pic_url: "https://www.zvaigzne.lv/images/books/58274/300x0_cover.jpg"
    })

    Bookify.Repo.insert!(%Bookify.Author{
      id: "4gT25juMkFhWd",
      name: "George Orwell",
      birth_year: 1903,
      bio: "George Orwell was an English novelist, essayist, and critic. His works explore themes of social injustice, totalitarianism, and the dangers of political oppression. Orwell's writing style is characterized by clarity and political astuteness, making him one of the most influential writers of the 20th century.",
      author_pic_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/George_Orwell_press_photo.jpg/220px-George_Orwell_press_photo.jpg",
      wikipedia_url: "https://en.wikipedia.org/wiki/George_Orwell"
    })

    Bookify.Repo.insert!(%Bookify.Book{
      id: "2hF47ikLnDsTb",
      title: "Nineteen Eighty-Four",
      author_id: "4gT25juMkFhWd",
      page_count: 328,
      publish_year: 1949,
      genre: ["Dystopian", "Science Fiction"],
      anotation: "Nineteen Eighty-Four is a dystopian novel by George Orwell, depicting a totalitarian regime where Big Brother watches over every aspect of people's lives. Orwell's grim vision of the future explores themes of government surveillance, psychological manipulation, and the erosion of individual freedom. The novel's concepts and language, including terms like 'Big Brother' and 'doublethink,' have become iconic and continue to be referenced in popular culture.",
      cover_pic_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/1984first.jpg/440px-1984first.jpg"
    })

    Bookify.Repo.insert!(%Bookify.Book{
      id: "9fB36tmNkJlRc",
      title: "Animal Farm",
      author_id: "4gT25juMkFhWd",
      page_count: 112,
      publish_year: 1945,
      genre: ["Satire", "Allegory"],
      anotation: "Animal Farm is an allegorical novella by George Orwell, using a group of farm animals to represent events leading up to the Russian Revolution of 1917 and the Stalinist era in the Soviet Union. Orwell's satirical work explores themes of power, corruption, and the dangers of authoritarianism. Through the story of the animals' rebellion against their human farmer, the novel provides a critical commentary on political systems and the manipulation of language for political gain.",
      cover_pic_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fb/Animal_Farm_-_1st_edition.jpg/440px-Animal_Farm_-_1st_edition.jpg"
    })

    Bookify.Repo.insert!(%Bookify.Book{
      id: "5mE29hnQkBsLd",
      title: "Down and Out in Paris and London",
      author_id: "4gT25juMkFhWd",
      page_count: 224,
      publish_year: 1933,
      genre: ["Autobiographical", "Social Commentary"],
      anotation: "Down and Out in Paris and London is a semi-autobiographical work by George Orwell, recounting his experiences of poverty and homelessness in the two cities. The book provides a firsthand account of the hardships faced by the working class and explores themes of social inequality, exploitation, and the struggle for survival. Orwell's raw and vivid descriptions shed light on the plight of the marginalized and serve as a critique of societal indifference towards the poor.",
      cover_pic_url: "https://upload.wikimedia.org/wikipedia/en/0/06/Downout_paris_london.jpg"
    })

    Bookify.Repo.insert!(%Bookify.Author{
      id: "6jK34opLmTdSe",
      name: "Fyodor Dostoevsky",
      birth_year: 1821,
      bio: "Fyodor Dostoevsky was a Russian novelist, philosopher, and essayist. His works are characterized by deep psychological insight, moral dilemmas, and philosophical themes. Dostoevsky's writing explores the complexities of the human psyche, addressing themes such as crime, punishment, guilt, and redemption. His contributions to literature have had a profound influence on the development of modern existential and psychological fiction.",
      author_pic_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/Vasily_Perov_-_%D0%9F%D0%BE%D1%80%D1%82%D1%80%D0%B5%D1%82_%D0%A4.%D0%9C.%D0%94%D0%BE%D1%81%D1%82%D0%BE%D0%B5%D0%B2%D1%81%D0%BA%D0%BE%D0%B3%D0%BE_-_Google_Art_Project.jpg/440px-Vasily_Perov_-_%D0%9F%D0%BE%D1%80%D1%82%D1%80%D0%B5%D1%82_%D0%A4.%D0%9C.%D0%94%D0%BE%D1%81%D1%82%D0%BE%D0%B5%D0%B2%D1%81%D0%BA%D0%BE%D0%B3%D0%BE_-_Google_Art_Project.jpg",
      wikipedia_url: "https://en.wikipedia.org/wiki/Fyodor_Dostoevsky"
    })

    Bookify.Repo.insert!(%Bookify.Book{
      id: "7kL45nmPtWsXa",
      title: "Crime and Punishment",
      author_id: "6jK34opLmTdSe",
      page_count: 574,
      publish_year: 1866,
      genre: ["Psychological Fiction", "Crime"],
      anotation: "Crime and Punishment is a psychological novel by Fyodor Dostoevsky. It explores the story of Rodion Raskolnikov, a young intellectual who commits a murder and grapples with the psychological consequences of his actions. The novel delves into themes of morality, guilt, and the pursuit of redemption, offering a profound exploration of the human condition.",
      cover_pic_url: "https://upload.wikimedia.org/wikipedia/en/4/4b/Crimeandpunishmentcover.png"
    })

    Bookify.Repo.insert!(%Bookify.Book{
      id: "9hM56plNqAsZb",
      title: "The Brothers Karamazov",
      author_id: "6jK34opLmTdSe",
      page_count: 796,
      publish_year: 1880,
      genre: ["Philosophical Fiction", "Drama"],
      anotation: "The Brothers Karamazov is a philosophical novel by Fyodor Dostoevsky. It tells the intricate story of the Karamazov family and explores themes of faith, morality, and the nature of existence. The novel delves into the complexities of human relationships, exploring the dynamics between fathers and sons, brothers, and lovers. Through its rich characters and thought-provoking narrative, it presents a deep examination of human nature and the search for meaning in life.",
      cover_pic_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2d/Dostoevsky-Brothers_Karamazov.jpg/440px-Dostoevsky-Brothers_Karamazov.jpg"
    })

    Bookify.Repo.insert!(%Bookify.Book{
      id: "4fP98qnKgVwRe",
      title: "Notes from Underground",
      author_id: "6jK34opLmTdSe",
      page_count: 136,
      publish_year: 1864,
      genre: ["Philosophical Fiction", "Existentialism"],
      anotation: "Notes from Underground is a novella by Fyodor Dostoevsky, written in the form of a fragmented memoir. It delves into the dark and introspective mind of an unnamed narrator, referred to as the Underground Man, who shares his cynical and contradictory thoughts on society, free will, and the human condition. The novella is considered a pioneering work of existentialist literature and a profound exploration of alienation and the complexities of human consciousness.",
      cover_pic_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/%D0%97%D0%B0%D0%BF%D0%B8%D1%81%D0%BA%D0%B8_%D0%B8%D0%B7_%D0%BF%D0%BE%D0%B4%D0%BF%D0%BE%D0%BB%D1%8C%D1%8F._%D0%9F%D0%BE%D0%B2%D0%B5%D1%81%D1%82%D1%8C_%D0%A4.%D0%9C._%D0%94%D0%BE%D1%81%D1%82%D0%BE%D0%B5%D0%B2%D1%81%D0%BA%D0%BE%D0%B3%D0%BE_%281866%29_%D0%BE%D0%B1%D0%BB%D0%BE%D0%B6%D0%BA%D0%B0.jpg/440px-%D0%97%D0%B0%D0%BF%D0%B8%D1%81%D0%BA%D0%B8_%D0%B8%D0%B7_%D0%BF%D0%BE%D0%B4%D0%BF%D0%BE%D0%BB%D1%8C%D1%8F._%D0%9F%D0%BE%D0%B2%D0%B5%D1%81%D1%82%D1%8C_%D0%A4.%D0%9C._%D0%94%D0%BE%D1%81%D1%82%D0%BE%D0%B5%D0%B2%D1%81%D0%BA%D0%BE%D0%B3%D0%BE_%281866%29_%D0%BE%D0%B1%D0%BB%D0%BE%D0%B6%D0%BA%D0%B0.jpg"
    })

    Bookify.Repo.insert!(%Bookify.Author{
      id: "8iL39nkPmQwFd",
      name: "Virginia Woolf",
      birth_year: 1882,
      bio: "Virginia Woolf was an English writer and one of the foremost modernists of the 20th century. Known for her innovative narrative techniques and lyrical prose, Woolf's works often explore themes of gender, consciousness, and the complexities of human experience. Her writing challenged traditional narrative conventions and contributed significantly to the development of modernist literature.",
      author_pic_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/George_Charles_Beresford_-_Virginia_Woolf_in_1902_-_Restoration.jpg/440px-George_Charles_Beresford_-_Virginia_Woolf_in_1902_-_Restoration.jpg",
      wikipedia_url: "https://en.wikipedia.org/wiki/Virginia_Woolf"
    })

    Bookify.Repo.insert!(%Bookify.Book{
      id: "9jK48nmQtWsYa",
      title: "Mrs. Dalloway",
      author_id: "8iL39nkPmQwFd",
      page_count: 194,
      publish_year: 1925,
      genre: ["Modernist Fiction"],
      anotation: "Mrs. Dalloway is a novel by Virginia Woolf that takes place in a single day in the life of Clarissa Dalloway, an upper-class woman in post-World War I England. Through the interior monologues of various characters, Woolf explores themes of identity, societal constraints, and the impact of the past on the present. The novel is known for its stream-of-consciousness narrative style and its nuanced portrayal of human emotions.",
      cover_pic_url: "https://upload.wikimedia.org/wikipedia/en/thumb/6/67/Mrs._Dalloway_cover.jpg/440px-Mrs._Dalloway_cover.jpg"
    })

    Bookify.Repo.insert!(%Bookify.Book{
      id: "6kL35opLnQsZc",
      title: "To the Lighthouse",
      author_id: "8iL39nkPmQwFd",
      page_count: 209,
      publish_year: 1927,
      genre: ["Modernist Fiction"],
      anotation: "To the Lighthouse is a novel by Virginia Woolf that explores the lives of the Ramsay family and their guests during two separate trips to the Isle of Skye. The novel delves into themes of memory, perception, and the passage of time. Through its poetic prose and intricate character portraits, Woolf examines the complexities of human relationships and the fleeting nature of existence.",
      cover_pic_url: "https://upload.wikimedia.org/wikipedia/en/thumb/8/8c/ToTheLighthouse.jpg/440px-ToTheLighthouse.jpg"
    })

    Bookify.Repo.insert!(%Bookify.Book{
      id: "4hP66pnNgXwRe",
      title: "A Room of One's Own",
      author_id: "8iL39nkPmQwFd",
      page_count: 112,
      publish_year: 1929,
      genre: ["Non-Fiction", "Feminist Literature"],
      anotation: "A Room of One's Own is an extended essay by Virginia Woolf that explores the relationship between women, literature, and societal limitations. Woolf argues that women must have financial independence and a private space in order to create and express themselves fully. The essay remains a significant feminist work, addressing issues of gender inequality and the importance of women's voices in literature and society.",
      cover_pic_url: "https://upload.wikimedia.org/wikipedia/en/3/31/ARoomOfOnesOwn.jpg"
    })

    Bookify.Repo.insert!(%Bookify.Author{
      id: "7iM49opKmRwEd",
      name: "Daniel Defoe",
      birth_year: 1660,
      bio: "Daniel Defoe was an English writer, journalist, and novelist. He is best known for his novel Robinson Crusoe, which is considered one of the first modern novels in English literature. Defoe's works often explored themes of adventure, survival, and moral dilemmas. His writing style, characterized by realistic detail and vivid storytelling, has had a lasting impact on the development of the novel as a literary form.",
      author_pic_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/Daniel_Defoe_Kneller_Style.jpg/440px-Daniel_Defoe_Kneller_Style.jpg",
      wikipedia_url: "https://en.wikipedia.org/wiki/Daniel_Defoe"
    })

    Bookify.Repo.insert!(%Bookify.Book{
      id: "5hL36npPnQwXe",
      title: "Robinson Crusoe",
      author_id: "7iM49opKmRwEd",
      page_count: 320,
      publish_year: 1719,
      genre: ["Adventure", "Survival"],
      anotation: "Robinson Crusoe is a novel by Daniel Defoe, published in 1719. It tells the story of Robinson Crusoe, a shipwrecked sailor who spends 28 years on a remote island. The novel explores themes of survival, self-reliance, and the human desire for companionship. Considered one of the greatest adventure stories ever written, Robinson Crusoe has captivated readers with its vivid depiction of Crusoe's solitary life and his eventual encounters with cannibals and a shipwrecked companion, Friday.",
      cover_pic_url: "https://cdn.shopify.com/s/files/1/0561/5953/5271/products/RobinsonCrusoe-01.png?v=1666491147"
    })

    Bookify.Repo.insert!(%Bookify.Book{
      id: "9jP45nmPtEsYb",
      title: "Moll Flanders",
      author_id: "7iM49opKmRwEd",
      page_count: 370,
      publish_year: 1722,
      genre: ["Historical Fiction"],
      anotation: "Moll Flanders is a novel by Daniel Defoe, first published in 1722. It follows the life and adventures of Moll Flanders, a woman who struggles through a life of poverty, crime, and social mobility. The novel explores themes of love, survival, and the consequences of one's actions. Moll Flanders is often regarded as one of the earliest examples of a novel with a female protagonist and is considered a significant work of early 18th-century literature.",
      cover_pic_url: "https://upload.wikimedia.org/wikipedia/commons/9/90/Mollflanders.jpg"
    })

    Bookify.Repo.insert!(%Bookify.Book{
      id: "4gK68onLnAsZd",
      title: "A Journal of the Plague Year",
      author_id: "7iM49opKmRwEd",
      page_count: 312,
      publish_year: 1722,
      genre: ["Historical Fiction"],
      anotation: "A Journal of the Plague Year is a historical novel by Daniel Defoe, first published in 1722. It presents a fictionalized account of the Great Plague of London in 1665, drawing on first-hand accounts and historical records. The novel provides a vivid and harrowing portrayal of the impact of the plague on individuals and society, exploring themes of fear, resilience, and human nature in the face of a devastating epidemic.",
      cover_pic_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/Defoe_Journal_of_the_Plague_Year.jpg/440px-Defoe_Journal_of_the_Plague_Year.jpg"
    })

    Bookify.Repo.insert!(%Bookify.Author{
      id: "5jM29npLmRwGd",
      name: "Jerome K. Jerome",
      birth_year: 1859,
      bio: "Jerome K. Jerome was an English writer and humorist. He is best known for his comic novels and essays, which often depict humorous and satirical observations on everyday life. Jerome's works exhibit a lighthearted and witty writing style, making him one of the most popular authors of his time. His humorous writings continue to be enjoyed by readers around the world.",
      author_pic_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Jerome_K._Jerome_%287893553318%29.jpg/440px-Jerome_K._Jerome_%287893553318%29.jpg",
      wikipedia_url: "https://en.wikipedia.org/wiki/Jerome_K._Jerome"
    })

    Bookify.Repo.insert!(%Bookify.Book{
      id: "3hL75nmQtEsGb",
      title: "Three Men in a Boat",
      author_id: "5jM29npLmRwGd",
      page_count: 224,
      publish_year: 1889,
      genre: ["Humor", "Travelogue"],
      anotation: "Three Men in a Boat is a humorous novel by Jerome K. Jerome. It follows the misadventures of three friends as they embark on a boating holiday on the Thames. Filled with comic anecdotes, witty observations, and amusing digressions, the book captures the essence of Victorian England and the quirks of human nature. Three Men in a Boat remains a beloved classic of English literature.",
      cover_pic_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/Cover_Jerome_Three_Men_in_a_Boat_First_edition_1889.jpg/440px-Cover_Jerome_Three_Men_in_a_Boat_First_edition_1889.jpg"
    })

    Bookify.Repo.insert!(%Bookify.Book{
      id: "7gP48pnLsQwHc",
      title: "Idle Thoughts of an Idle Fellow",
      author_id: "5jM29npLmRwGd",
      page_count: 180,
      publish_year: 1886,
      genre: ["Essays", "Humor"],
      anotation: "Idle Thoughts of an Idle Fellow is a collection of humorous essays by Jerome K. Jerome. The book offers a series of witty and whimsical reflections on various topics, ranging from love and friendship to work and leisure. With his signature humor and keen observations, Jerome entertains readers with his amusing anecdotes and light-hearted musings on life's absurdities.",
      cover_pic_url: "https://upload.wikimedia.org/wikipedia/en/thumb/e/e3/Jerome_-_Idle.jpg/440px-Jerome_-_Idle.jpg"
    })

    Bookify.Repo.insert!(%Bookify.Book{
      id: "4fM97qnPgVxRe",
      title: "Diary of a Pilgrimage",
      author_id: "5jM29npLmRwGd",
      page_count: 232,
      publish_year: 1891,
      genre: ["Humor", "Travelogue"],
      anotation: "Diary of a Pilgrimage is a humorous travelogue by Jerome K. Jerome. It chronicles the author's journey to Germany and the Holy Land, recounting his experiences and encounters along the way. Through his humorous and satirical observations, Jerome offers a light-hearted perspective on the challenges and peculiarities of travel, making for an entertaining read.",
      cover_pic_url: "https://upload.wikimedia.org/wikipedia/en/c/c6/DiaryOfAPilgrimage.jpg"
    })

    Bookify.Repo.insert!(%Bookify.Author{
      id: "8jN39npAmRwFd",
      name: "Charles Dickens",
      birth_year: 1812,
      bio: "Charles Dickens was an English writer and social critic. He is regarded as one of the greatest novelists of the Victorian era, known for his rich storytelling, memorable characters, and vivid depiction of social injustices. Dickens' works often portrayed the struggles of the lower class and shed light on the harsh realities of 19th-century England. His novels continue to be widely read and have had a profound influence on literature and social consciousness.",
      author_pic_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Dickens_Gurney_head.jpg/440px-Dickens_Gurney_head.jpg",
      wikipedia_url: "https://en.wikipedia.org/wiki/Charles_Dickens"
    })

    Bookify.Repo.insert!(%Bookify.Book{
      id: "9kL48npPnQwCa",
      title: "Great Expectations",
      author_id: "8jN39npAmRwFd",
      page_count: 544,
      publish_year: 1861,
      genre: ["Historical Fiction", "Coming-of-Age"],
      anotation: "Great Expectations is a novel by Charles Dickens that follows the life of Pip, an orphan who aspires to become a gentleman. Set in Victorian England, the novel explores themes of social class, ambition, love, and identity. Through its compelling characters and intricate plot, Great Expectations delves into the moral and psychological development of its protagonist, offering a profound examination of human nature.",
      cover_pic_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/Greatexpectations_vol1.jpg/400px-Greatexpectations_vol1.jpg"
    })

    Bookify.Repo.insert!(%Bookify.Book{
      id: "6hP35onLnEsBc",
      title: "A Tale of Two Cities",
      author_id: "8jN39npAmRwFd",
      page_count: 448,
      publish_year: 1859,
      genre: ["Historical Fiction"],
      anotation: "A Tale of Two Cities is a historical novel by Charles Dickens, set in London and Paris before and during the French Revolution. The novel intertwines the lives of several characters, capturing the turbulence and conflicts of the era. It explores themes of sacrifice, redemption, and the power of love and compassion amidst social upheaval. A Tale of Two Cities is known for its iconic opening line and its powerful depiction of the French Revolution.",
      cover_pic_url: "https://upload.wikimedia.org/wikipedia/commons/3/3c/Tales_serial.jpg"
    })

    Bookify.Repo.insert!(%Bookify.Book{
      id: "4fK97onPgVsLe",
      title: "Oliver Twist",
      author_id: "8jN39npAmRwFd",
      page_count: 496,
      publish_year: 1838,
      genre: ["Social Novel"],
      anotation: "Oliver Twist is a novel by Charles Dickens that tells the story of an orphan boy named Oliver Twist and his experiences in the harsh realities of 19th-century London. The novel explores themes of poverty, crime, and the struggle for justice and compassion in a society marked by social inequality. Oliver Twist is known for its memorable characters, including the cunning Artful Dodger and the villainous Fagin, and it continues to be widely read and adapted for stage and screen.",
      cover_pic_url: "https://m.media-amazon.com/images/I/81QGqaKWjXL._AC_UF1000,1000_QL80_.jpg"
    })

    Bookify.Repo.insert!(%Bookify.Author{
      id: "9lN39npAmRwGd",
      name: "Jo Nesbo",
      birth_year: 1960,
      bio: "Jo Nesbo is a Norwegian writer and musician. He is best known for his crime novels featuring the detective Harry Hole. Nesbo's gripping and atmospheric thrillers have garnered international acclaim and have been translated into numerous languages. His intricate plots, complex characters, and gritty settings have made him one of the most popular authors in the genre. Nesbo's works continue to captivate readers with their suspenseful storytelling and psychological depth.",
      author_pic_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/Jo_Nesbo.jpg/440px-Jo_Nesbo.jpg",
      wikipedia_url: "https://en.wikipedia.org/wiki/Jo_Nesb%C3%B8"
    })

    Bookify.Repo.insert!(%Bookify.Book{
      id: "5kL48npPnQwHd",
      title: "The Snowman",
      author_id: "9lN39npAmRwGd",
      page_count: 480,
      publish_year: 2007,
      genre: ["Crime Fiction", "Thriller"],
      anotation: "The Snowman is a crime thriller by Jo Nesbo, featuring detective Harry Hole. In this chilling novel, Hole investigates a series of gruesome murders where the killer leaves behind a snowman as his calling card. As the body count rises, Hole finds himself embroiled in a complex and dangerous case that leads him to confront his own demons. The Snowman is a suspenseful and atmospheric thriller that keeps readers on the edge of their seats.",
      cover_pic_url: "https://upload.wikimedia.org/wikipedia/en/5/5b/The_Snowman_%28Nesb%C3%B8_novel%29.jpg"
    })

    Bookify.Repo.insert!(%Bookify.Book{
      id: "7mP35onLnEsVc",
      title: "The Redbreast",
      author_id: "9lN39npAmRwGd",
      page_count: 656,
      publish_year: 2000,
      genre: ["Crime Fiction", "Thriller"],
      anotation: "The Redbreast is a crime thriller by Jo Nesbo, featuring detective Harry Hole. In this complex and multi-layered novel, Hole investigates a conspiracy involving neo-Nazis and wartime secrets. The investigation takes him from present-day Oslo to the battlefields of World War II, uncovering a web of deception and betrayal. The Redbreast is a gripping and intricately plotted thriller that showcases Nesbo's skill in crafting suspenseful narratives.",
      cover_pic_url: "https://upload.wikimedia.org/wikipedia/en/e/ed/TheRedbreast.jpg"
    })

    Bookify.Repo.insert!(%Bookify.Book{
      id: "4kK97onPgVsWe",
      title: "The Bat",
      author_id: "9lN39npAmRwGd",
      page_count: 448,
      publish_year: 1997,
      genre: ["Crime Fiction", "Thriller"],
      anotation: "The Bat is the first book in the Harry Hole series by Jo Nesbo. In this gripping crime novel, Hole is sent to Sydney, Australia to assist in the investigation of the murder of a young Norwegian woman. As he delves into the case, he uncovers a trail of violence and corruption that spans continents. The Bat introduces readers to the enigmatic and flawed character of Harry Hole, setting the stage for the thrilling series that follows.",
      cover_pic_url: "https://upload.wikimedia.org/wikipedia/en/6/64/The_Bat_--_book_cover.jpg"
    })

  end

end
