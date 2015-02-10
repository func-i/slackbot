SlackConn = Slack::Notifier.new ENV['SLACK_WEBHOOK_URL']
TwitterConn = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV['TWITTER_CONSUMER_KEY']
  config.consumer_secret     = ENV['TWITTER_CONSUMER_SECRET']
  config.access_token        = ENV['TWITTER_ACCESS_TOKEN']
  config.access_token_secret = ENV['TWITTER_ACCESS_SECRET']
end
DictionaryHash = JSON.parse File.read(APP_ROOT.join('db', 'dictionary.json'))