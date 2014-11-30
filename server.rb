require 'sinatra'

set :bind, '0.0.0.0' # This is needed for Vagrant

get '/welcome/:name' do
  erb :welcome # Looks for a filenamed welcome.erb in the views folder.
end

get '/say/*/to/*' do
  puts params
  erb :say
end

get '/test' do
  erb :test
end

post '/test' do
  puts params
end

get '/dog-registration' do
  erb :'dog-registration'
end

get '/dog-registration-results' do
  erb :'dog-registration-results'
end