class Lmgtfy < Bot

  LMGTFY_URL = "http://lmgtfy.com"

  def initialize(request)
    super(request)
    @text = @params['text']
  end

  def troll
    SlackConn.ping message, channel: "##{@incoming_ping['channel_name']}", username: self.class.name.downcase
  end

  protected

  def message
    "#{LMGTFY_URL}/?q=#{CGI::escape(@text)}"
  end

end