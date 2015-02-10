class Dictionary < Bot

  BOT_NAME   = 'dictionary'
  ICON_EMOJI = ':book:'
  SHRUGS = ['no idea', 'wtf', 'not a thing', 'no', 'lol no', 'wrong']

  def define
    SlackConn.ping message, channel: "##{@incoming_ping['channel_name']}", username: BOT_NAME, icon_emoji: ICON_EMOJI
  end

  protected

  def message
    "@#{@incoming_ping['user_name']}: #{response}"
  end

  def response
    DEFINITION[word] || SHRUGS.sample
  end

  def word
    @incoming_ping['text'].gsub('define:').strip
  end

end