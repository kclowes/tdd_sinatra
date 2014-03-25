require 'sinatra/base'

class MyApp < Sinatra::Base

  NEW_ITEM = []

  get '/' do
    erb :index
  end

  get '/item/new' do
    erb :new_item
  end

  post '/item/new' do
    NEW_ITEM << params[:new_item]
    redirect '/items'
  end

  get '/items' do
    erb :items_list, :locals => {:items => NEW_ITEM}
  end

  get '/items/:id' do
    id = params[:id].to_i
    erb :show, :locals => {:item => NEW_ITEM[id]}
  end
end