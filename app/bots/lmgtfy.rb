class Lmgtfy < Bot

  LMGTFY_URL = "http://lmgtfy.com"

  def troll
    SlackConn.ping message, channel: "##{@incoming_ping['channel_name']}", username: self.class.name.downcase
  end

  protected

  def message
    "@#{@incoming_ping['user_name']}: #{LMGTFY_URL}/?q=#{CGI::escape(@incoming_ping['text'])}"
  end

end