class ApplicationController < Sinatra::Base

  configure do
  	set :views, "app/views"
  	set :public_dir, "public"
  end

  get "/" do    #this is your default/homepage(get'/')
  	erb :index
  end
get"/newpage"do
  erb :new
end 

get '/dogs'do
  first_dog = Dog.new("Clifford","Sammy","cat")
first_dog.get_name  
  
end






end

