require 'sinatra'

# route : first line (http method 'get' plus the URL matching pattern), defined in application inside the server?
# path: after the port, we'll give it the path (the matching pattern)
get '/' do
  "Hello"
end

get '/secret' do
  "Hello secret"
end

get '/random' do
  "This is still random"
end

get '/cat' do
  @names = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end
