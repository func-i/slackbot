class Tweet < Bot

  IDENTIFIER = 'tweet:'

  def send
    TwitterConn.update message
  end

  protected

  def message
    @incoming_ping['text'].gsub(IDENTIFIER, '').strip
  end

end