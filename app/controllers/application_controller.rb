require "./config/environment"
require "./app/models/user"

class ApplicationController < Sinatra::Base

    configure do
        set :public_folder, 'public'
        set :views, 'app/views'

        enable :sessions
        set :session_secret, ENV["SESSION_SECRET"]
    end 

    get '/' do 
        erb :welcome
    end 

    post '/sessions' do
        @user = User.find_by(email: params[:email], password: params[:password])
        if @user
          session[:user_id] = @user.id
          redirect '/users/home'
        end
        puts params
        redirect '/sessions/login'
      end
    
      get '/sessions/logout' do
        session.clear
        redirect '/'
      end

      delete '/users/:id' do
        @user = User.find_by_id(params[:id])
        @user.delete
      end

    helpers do

        def logged_in_redirect
            redirect '/dashboard' if logged_in?
        end

        def current_user
            User.find_by(id: session[:user_id]) 
        end 

        def logged_in?
            !!current_user 
        end 

        def authenticate
            redirect '/login' if !logged_in?
        end 
    end 
end 