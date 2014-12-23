configure do
  if Sinatra::Application.development?
    ActiveRecord::Base.logger = Logger.new(STDOUT)
  end

  db = URI.parse(ENV['DATABASE_URL'] || 'postgres:///localhost/funci_slackbot_dev')

  ActiveRecord::Base.establish_connection(
    adapter:  db.scheme == 'postgres' ? 'postgresql' : db.scheme,
    host:     db.host,
    username: db.user,
    password: db.password,
    database: db.path[1..-1],
    encoding: 'utf8'
  )


end