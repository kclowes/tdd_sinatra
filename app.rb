require 'sinatra/base'

class MyApp < Sinatra::Base

  NEW_ITEM = []

  get '/' do
    erb :index, :locals => {:items => NEW_ITEM}
  end

  get '/item/new' do
    erb :new_item
  end

  post '/item/new' do
    NEW_ITEM << params[:new_item]
   redirect '/'
  end



end