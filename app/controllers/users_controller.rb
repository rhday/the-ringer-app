class UsersController < ApplicationController
    
    get '/dashboard' do 
        authenticate
        #binding.pry
        @u = current_user
        erb :"users/dashboard"
    end 
    
end