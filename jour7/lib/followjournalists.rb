require 'dotenv'
require 'twitter'
require 'rubocop'

Dotenv.load('.env')

def login_twitter

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
  config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
  config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
  config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]

end

client

end

def follow_bonjour_monde
	following_users = login_twitter.search("#bonjour_monde", result_type: "recent").take(20).map { |tweet| tweet.user }
  login_twitter.follow(following_users)
  unless following_users == "@Fanatoc"
  	end
end

follow_bonjour_monde