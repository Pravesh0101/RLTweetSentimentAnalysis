# # Install and load required packages
# # install.packages('rtweet', repos = "http://cran.us.r-project.org")
# # install.packages("syuzhet", repos = "http://cran.us.r-project.org")
# # install.packages("ggplot2", repos = "http://cran.us.r-project.org")

# #   

# library(rtweet)
# library(tidyverse)
# library(syuzhet)
# library(ggplot2)

# api_key <- "5MROTZfqCAHFv7xG9hMDw57uo"
# api_secret_key <- "GJeYl5rwYLdhfi7jyIaObGKCax1KEjj9bgjK8x4jnQPSc9tSzA"
# access_token <- "1335951550452260865-SKW6Y8LBOT5UYsef52KOECrKdQtZRU"
# access_secret_token <- "rtgB2GBALSAHPeDgC0ZIcueBYuplOYIqB2tRiq1pDlheS"

# token <- create_token(
#   app = "TwitterBusiness",
#   consumer_key = api_key,
#   consumer_secret = api_secret_key,
#   access_token = access_token,
#   access_secret = access_secret_token
# )

# # Obtain a bearer token
# rtweet_app(app = "TwitterBusiness", key = api_key, secret = api_secret_key)

# topic <- "#Business"
# tweets <- search_tweets(topic, n = 1000, token = token)

# # Use rtweet::stream_tweets instead of filtered_stream
# rt <- stream_tweets(topic, timeout = 30)
# View(rt)

# text_data <- tweets$text

# sentiment_scores <- get_nrc_sentiment(text_data)

# tweets$sentiment_positive <- sentiment_scores$positive
# tweets$sentiment_negative <- sentiment_scores$negative

# ggplot(tweets, aes(x = created_at, y = sentiment_positive - sentiment_negative)) +
#   geom_line() +
#   labs(title = "Sentiment Trends Over Time",
#        x = "Date",
#        y = "Sentiment Score (Positive - Negative)")

# install.packages('syuzhet', repos = "http://cran.us.r-project.org")
# install.packages('tidyverse', repos = "http://cran.us.r-project.org")


# Install and load required libraries if not already installed
if (!requireNamespace("tidyverse", quietly = TRUE)) {
  install.packages("tidyverse")
}

if (!requireNamespace("syuzhet", quietly = TRUE)) {
  install.packages("syuzhet")
}

# Load libraries
library(tidyverse)
library(syuzhet)

# Sample text data
sample_data <- data.frame(
  text = c(
    "The new product launch was a huge success, customers love it.",
    "Unforeseen challenges in the supply chain are impacting our productiondue to which there has been a lot of losses.",
    "Positive feedback from clients about our latest service offering.",
    "Stock prices are rising due to global economic uncertainties."
  )
)

# Perform sentiment analysis
sentiment_scores <- get_nrc_sentiment(sample_data$text)

# Combine sentiment scores with the original data
sample_data <- cbind(sample_data, sentiment_scores)

# Display the resulting data frame
print(sample_data)

# Plotting sentiment attributes using base R plotting functions
barplot(t(as.matrix(sample_data[, -1])), beside = TRUE, col = rainbow(10),
        legend.text = rownames(sample_data), args.legend = list(x = "topright", bty = "n"))
