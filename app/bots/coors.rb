class Coors < Bot

  BOT_NAME = 'banquet bot'

  def beer_me
    SlackConn.ping message, channel: "##{@incoming_ping['channel_name']}", username: BOT_NAME
  end

  protected

  def message
    "@#{@incoming_ping['user_name']}: :beers: :coors: :beers:"
  end

end