require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    # renders the reverse.erb page
    erb :reverse
  end

  post '/reverse' do
    # receives params from reverse form and renders to reversed.erb
    original_str = params["string"]
    @reversed_str = original_str.reverse
    erb :reversed
  end

  get '/friends' do
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
    erb :friends
  end
end