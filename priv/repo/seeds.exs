# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Bookify.Repo.insert!(%Bookify.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

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
