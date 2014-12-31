class Coors < Bot

  BOT_NAME   = 'banquet bot'
  ICON_EMOJI = ':beer:'

  def beer_me
    SlackConn.ping message, channel: "##{@incoming_ping['channel_name']}", username: BOT_NAME, icon_emoji: ICON_EMOJI
  end

  protected

  def message
    "@#{@incoming_ping['user_name']}: :beers: :coors: :beers:"
  end

end