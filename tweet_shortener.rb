require 'pry'

def dictionary
  dictionary_hash = {
    hello: "hi",
    to: "2",
    two: "2",
    too: "2",
    for: "4",
    four: "4",
    be: "b",
    you: "u",
    at: "@",
    and: "&"
    }
end

def word_substituter(tweet)
  short_tweet = tweet.split(" ")
  short_tweet.each_with_index do |word, index|
    dictionary.keys.each_with_index do |key, i|
      if word.downcase == key.to_s
        short_tweet[index] = dictionary.values[i]
      end
    end
  end
  short_tweet.join(" ")
end

def bulk_tweet_shortener (array_of_tweets)
  array_of_tweets.each do |tweet|
    short_tweet = word_substituter(tweet)
    puts short_tweet
  end
end

def selective_tweet_shortener(tweet)

  if tweet.length <= 140
    tweet
  else
    word_substituter(tweet)
  end

end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    short_tweet = tweet[0...140]
    short_tweet
  else
    tweet
  end
end
