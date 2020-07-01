#install.packages("tm")
library(tm)

noticia <- read.table("LOCAL.txt", header = TRUE)

palabras <- VCorpus(VectorSource(noticia$TrozoNoticia))

palabras <- tm_map(palabras, content_transformer(tolower))

palabras <- tm_map(palabras, removePunctuation)

stop_words <- stopwords("spanish")

stop_words <- c(stop_words, "mas", "vez", "ello", "hace")

palabras <- tm_map(palabras, removeWords, stop_words)

#palabras <- tm_map(palabras, content_transformer(toupper))

#install.packages("RColorBrewer")
library(RColorBrewer)

paleta = brewer.pal(8, "Dark2")

display.brewer.all(colorblindFriendly = T)

#install.packages("wordcloud")
library(wordcloud)

wordcloud(palabras, scale = c(3, 0.0001), random.order = FALSE,
          max.words = 40, rot.per = 0.25, colors = paleta)
