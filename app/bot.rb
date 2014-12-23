class Bot

  def initialize(request)
    @params = params(request)
    @channel_name = @params['channel_name']
    @user_name = @params['user_name']
  end

  protected

  def params(request)
    JSON.parse(request.body.read)
  end

end