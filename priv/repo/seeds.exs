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

# Bookify.Repo.insert!(%Bookify.Author{
#   id: "7pD90s8iiPrPd",
#   name: "Ernest Hemingway",
#   birth_year: 1899,
#   bio: "Ernest Hemingway was an American author and journalist known for his economical and understated writing style, including the novels The Old Man and the Sea and A Farewell to Arms.",
#   author_pic_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/28/ErnestHemingway.jpg/220px-ErnestHemingway.jpg",
#   wikipedia_url: "https://en.wikipedia.org/wiki/Ernest_Hemingway"
# })

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
