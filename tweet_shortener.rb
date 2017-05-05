# Write your code here.

require 'pry'

def dictionary
  dictionary = {"hello" => "hi","to"=>"2","two"=>"2","too"=>"2",
    "for"=>"4", "For"=>"4","four"=>"4","be"=>"b","you"=>"u",
    "at"=>"@","and"=>"&"}
end

def word_substituter(tweet)
#  dictionary_compare = dictionary.key
#  replacement_tweet = tweet.split
  (tweet.split.map do |index|
    if dictionary.keys.include?(index)
      index = dictionary[index]
    elsif !dictionary.keys.include?(index)
      index = index
    end
  end).join(" ")
#  Method found on StackOverflow below:
#  tweet.gsub(/#{dictionary.keys.join("|")}/i) {|index| index = dictionary[index]}
end

def bulk_tweet_shortener(tweets)
  tweets.map do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
#  tweets.map do |tweet|
    if tweet.length > 141
      word_substituter(tweet)
    else tweet
    end
#  end
end

def shortened_tweet_truncator(tweet)
  short_tweet = selective_tweet_shortener(tweet)
  if short_tweet.length > 140
    new_short_tweet = short_tweet[0..136]<<"..."
    new_short_tweet
  else tweet
  end
end
