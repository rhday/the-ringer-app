class RingerTeamsController < ApplicationController

    post '/ringer_teams' do
         current_user.team.ringers << Ringer.find(params[:ringer_id])
         redirect '/updated_dashboard'
    end

    get '/updated_dashboard' do 
        authenticate
        @user = current_user 
        #@ringer = Ringer.all
        binding.pry
        erb :"/users/updated_dashboard"
    end 

end

#<form action="/ringer_teams" method="post">
#<input type="hidden" name="ringer_id" value="<%= @ringer.id %>%">
#<input type="submit" value="<%= @ringer.name %>%">
#</form>
