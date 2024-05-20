#  install.packages("twitteR", repos = "http://cran.us.r-project.org")
#  install.packages("tm", repos = "http://cran.us.r-project.org")
#  install.packages("wordcloud", repos = "http://cran.us.r-project.org")
#  install.packages("sentimentr", repos = "http://cran.us.r-project.org")

library(twitteR)
library(tm)
library(wordcloud)
library(sentimentr)

consumer_key<- "5MROTZfqCAHFv7xG9hMDw57uo"
consumer_secret<- "GJeYl5rwYLdhfi7jyIaObGKCax1KEjj9bgjK8x4jnQPSc9tSzA"
access_token <- "1335951550452260865-SKW6Y8LBOT5UYsef52KOECrKdQtZRU"
access_secret <- "rtgB2GBALSAHPeDgC0ZIcueBYuplOYIqB2tRiq1pDlheS"


setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret)

tweets <- searchTwitter("#business", n = 1000)

tweet_text <- sapply(tweets, function(x) x$getText())

corpus <- Corpus(VectorSource(tweet_text))
corpus <- tm_map(corpus, content_transformer(tolower))
corpus <- tm_map(corpus, removePunctuation)
corpus <- tm_map(corpus, removeNumbers)
corpus <- tm_map(corpus, removeWords, stopwords("en"))
corpus <- tm_map(corpus, stripWhitespace)

sentiment_scores <- sentiment_by(corpus, by = "documents")

hist(sentiment_scores$sentiment, main = "Sentiment Distribution")
wordcloud(corpus, max.words = 50)

