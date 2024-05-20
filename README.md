

# Real-Time Twitter Sentiment Analysis with R

Welcome to the Real-Time Twitter Sentiment Analysis project! This repository contains the code and resources for analyzing the sentiments expressed in tweets using R, focusing on current news headlines and unfolding events.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Learnings](#learnings)
- [Contributing](#contributing)
- [License](#license)
- [Full Report](#full-report)

## Introduction

In today's digital age, Twitter serves as a dynamic platform where individuals express opinions on a myriad of topics, from political movements to consumer trends. This project harnesses the wealth of opinions circulating on Twitter, analyzing their sentiments using R. Our goal is to retrieve relevant tweets, preprocess the data, and perform sentiment analysis to provide real-time insights into public opinion.

## Features

- **Real-Time Tweet Retrieval**: Uses the Twitter API to fetch tweets on current events and news headlines.
- **Sentiment Analysis**: Employs lexicon-based methods and machine learning algorithms to decode emotions expressed in tweets.
- **Data Visualization**: Visualizes sentiment analysis results using interactive charts and timelines for clear insights.
  ![image](https://github.com/Pravesh0101/RLTweetSentimentAnalysis/assets/97783672/81ed310a-5067-443f-82c5-aebd90f235c8)

- **Timely Insights**: Focuses on real-time news headlines to provide up-to-the-minute data for decision-makers.
  

## Installation

1. **Clone the Repository:**
   ```sh
   git clone https://github.com/yourusername/real-time-twitter-sentiment-analysis.git
   cd real-time-twitter-sentiment-analysis
   ```

2. **Install R and RStudio:**
   - Download and install [R](https://cran.r-project.org/).
   - Download and install [RStudio](https://rstudio.com/products/rstudio/download/).

3. **Install Required Packages:**
   Open RStudio and run the following commands to install necessary packages:
   ```R
   install.packages(c("rtweet", "tidyverse", "tidytext", "syuzhet", "ggplot2", "lubridate"))
   ```

4. **Set Up Twitter API Keys:**
   - Create a Twitter Developer account and generate API keys.
   - Save your API keys securely and add them to your R script.

## Usage

1. **Retrieve Tweets:**
   - Use the provided R script to fetch tweets on specific topics using the Twitter API.

2. **Preprocess Data:**
   - Clean and preprocess the retrieved tweets for sentiment analysis.

3. **Perform Sentiment Analysis:**
   - Apply sentiment analysis techniques to decode the emotions expressed in the tweets.

4. **Visualize Results:**
   - Use data visualization tools to create interactive charts and timelines of the sentiment analysis results.

## Learnings

Through this project, we gained invaluable insights into both technical and practical aspects of sentiment analysis with R:

1. **Application of R in Data Analysis:** Leveraged R's powerful libraries for data manipulation, statistical analysis, and visualization.
2. **Importance of Real-Time Tweets:** Understood the dynamic nature of social media data and its impact on public opinion and business strategies.
3. **Implementation of Sentiment Analysis Techniques:** Explored various sentiment analysis methods, enhancing our understanding of their strengths and limitations.
4. **Experience with API Data Retrieval:** Gained hands-on experience in retrieving and handling large-scale social media datasets from the Twitter API.
5. **Communication and Collaboration Skills:** Improved our ability to communicate complex technical concepts and collaborate effectively as a team.

## Contributing

We welcome contributions to enhance the functionality and scope of this project. To contribute:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Commit your changes (`git commit -m 'Add new feature'`).
4. Push to the branch (`git push origin feature-branch`).
5. Open a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Full Report

For a detailed overview of the project, including methodology and results, please refer to the full report: [TweetSentimentAnalysis.pdf](https://github.com/Pravesh0101/RLTweetSentimentAnalysis/files/15377949/TweetSentimentAnalysis.pdf)

