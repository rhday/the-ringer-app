class RingerTeamsController < ApplicationController

    post '/ringer_teams' do
         current_user.team.ringers << Ringer.find(params[:ringer_id])
         redirect '/dashboard'
    end

    delete "/ringers/:id" do
        Ringer.destroy(params[:id])
        redirect to "/dashboard"
      end
end

#<form action="/ringer_teams" method="post">
#<input type="hidden" name="ringer_id" value="<%= @ringer.id %>%">
#<input type="submit" value="<%= @ringer.name %>%">
#</form>
