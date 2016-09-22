require 'sinatra'

set :port, 8081
set :static, true
set :public_folder, "static"
set :views, "views"



get '/' do
    return 'Hello world'
end

get '/hello/' do 
    erb :hello_form
end

post '/hello/' do
    greeting = params[:greeting] || "Hi There"
    name = params[:name] || "Nobody"
    erb :index, :locals => {'greeting' => greeting, 'name' => name}
end

get '/list/' do
	erb :list_form
end

post '/afterlist/' do
	greeting = params[:greeting] || "default greeting"
	name = params[:name] || "default name"
	@list = {name => greeting}
	puts @list 
	
	erb :after_list

end