require 'pry'
# Write your code here.
def dictionary
  dict = {
    "hello" => 'hi',
    "to"=> "2",
    "too"=> "2",
    "two" => "2",
    "for"=>"4",
    "four" => "4",
    "For"=>"4",
    "Four" => "4",
    'be' => "b",
    'you'=> "u",
    "at" =>"@",
    "and" => "&",
    }
end

def word_substituter(tweet)
  dict = dictionary
  str_tweet = tweet.split(" ")

  str_tweet.collect do |word|
    dictionary.collect do |key, value|
      if word == key
        word.replace(value)
      end
    end
  end
  str_tweet.join(" ")
end

def bulk_tweet_shortener(tweet_arr)
  tweet_arr.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(sho_tweet)
  if sho_tweet.length > 140
    word_substituter(sho_tweet)
  else
    sho_tweet
  end
end

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).chars.length > 140
    truncated = word_substituter(tweet).chars[0..136].push("...").join("")
  else
    word_substituter(tweet)
  end
end
