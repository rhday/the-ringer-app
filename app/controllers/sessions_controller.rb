class SessionsController < ApplicationController

    get '/login' do 
        logged_in_redirect
        erb :"sessions/login"
    end

    get '/signup' do
        logged_in_redirect 
        erb :"sessions/signup"
    end

    post '/signup' do
        puts "hello from signup"
        #logged_in_redirect
        @u = User.new(username: params[:username], password: params[:password])
        if @u.save
            @t = Team.create(name: params[:teamname])
            @u.team = @t
            #(name: params[:team])binding.pry
            session[:user_id] = @u.id 
            redirect '/dashboard'
        else
            erb :"sessions/signup"
        end 
    end 

    post '/login' do
        logged_in_redirect 
        u = User.find_by(username: params[:username])
        if u && u.authenticate(params[:password])
            session[:user_id] = u.id
            redirect '/dashboard'
        else
            @error = "Invalid Input"
            erb :"sessions/login"
        end 
    end

    delete '/logout' do 
        session.clear
        redirect '/login'
    end

    
end 

#<form action="/logout" method="post">
#    <input type="hidden" name="_method" value="delete">
#    <input type="hidden" name="user" value="<%= user.session %>%">
#    <input type="submit" value="Logout">
#</form>
###<p><% @u.team.ringer_teams.each do |rt| %></p>
###    <p><%= rt.ringer.name %></p> <p>Hired on: <%= rt.game_day.to_s %></p>
###    <form action="/ringer_teams" method="post">
###        <input type="hidden" name="_method" value="delete">
###        <input type="hidden" name="ringer_id" value="<%= rt.ringer_id %>%">
###        <input type="submit" value="Terminate contract">
###    </form> 
###<% end %>