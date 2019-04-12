require 'dotenv'
require 'twitter'
require 'rubocop'

Dotenv.load('.env')

def login_twitter

client = Twitter::Streaming::Client.new do |config|
  config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
  config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
  config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
  config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]

end

return client

end

def bonjour_monde_likes
  last_25_tweets = login_twitter.search("#bonjour_monde", result_type: "recent").take(25)
  login_twitter.favorite(last_25_tweets)
end

def follow_bonjour_monde
	following_users = login_twitter.search("#love", result_type: "recent").take(20).map { |tweet| tweet.user }
  login_twitter.follow(following_users)
  unless following_users == "@Fanatoc"
 end
end

def live_stream(client)
	topics = ["#love", ""]
	client.filter(track: topics.join(",")) do |object|
		 last_25_tweets = login_twitter.search("#love", result_type: "recent").take(20)
  login_twitter.favorite(last_25_tweets)
		following_users = login_twitter.search("#love", result_type: "recent").take(20).map { |tweet| tweet.user }
  login_twitter.follow(following_users)
  	puts "YES PAPA" if object.is_a?(Twitter::Tweet)
end
end

 def perform
 	live_stream(login_twitter)
 end
perform