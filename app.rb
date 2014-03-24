require 'sinatra/base'

class MyApp < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/item/new' do
    erb :new_item
  end



end