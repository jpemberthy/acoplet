require "rubygems"
require "sinatra"

helpers do
  
  def base_url
    host = "http://#{Sinatra::Application.host}"
    port = Sinatra::Application.port == 80 ? host : host << ":#{Sinatra.Application.port}"
  end
  
  def url(path='')
    [base_url, path].join('/')
  end
  
end

get '/' do
  erb :home
end

get '/contact' do
  erb :contact
end

post '/send_message' do
  params.inspect
  #flash :success
  #redirect_to /contacts
end