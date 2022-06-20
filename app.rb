require 'sinatra/base'
require 'sinatra/reloader' 

class Chitter < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  get '/peeps' do
    @peeps = Peep.all
    erb :index
  end

  get '/post' do
    erb :post
  end

  post '/peeps' do
    @peep = params[:peep]
    Peep.add(@peep)
    redirect '/peeps'
  end

  run! if app_file == $0
end


