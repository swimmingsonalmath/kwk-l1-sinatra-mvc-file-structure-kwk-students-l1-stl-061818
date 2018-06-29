require ',/config/enviroment'
require ',/app/models/model'


class ApplicationController < Sinatra::Base

  configure do
  	set :views, "app/views"
  	set :public_dir, "public"
  end

#   get "/" do    #this is your default/homepage(get'/')
#   	erb :index
#   end
# get"/newpage"do
#   erb :new
# end 

# get '/dogs'do
#   first_dog = Dog.new("Clifford","Sammy","cat")
# first_dog.get_name  
  
# end
 get'/'do 
   return erb:index
 end
 
 post'/'do    #we click the butto now what
   @the_fortune=get_fortune   #method get_fortune is connected to the instance variable @the_fortune
   @the_user=params[:user] #params is a has that stores user input this line is also creating  a new varable user 
   return erb :results
 end

end

