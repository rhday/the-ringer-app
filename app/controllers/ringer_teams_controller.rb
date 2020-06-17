class RingerTeamsController < ApplicationController

    post '/ringer_teams' do
         current_user.team.ringers << Ringer.find(params[:ringer_id])
         redirect '/dashboard'
    end

    delete "/ringer_teams" do
        rt = RingerTeam.find_by(ringer_id: params[:ringer_id], team: current_user.team)
        rt.destroy
        redirect to "/dashboard"
    end
end


    #<form action="/ringer_teams" method="post">
    #    <input type="hidden" name="ringer_id" value="<%= @ringer.id %>%">
    #    <input type="submit" value="Terminate contract">
    #</form>

#<form action="/ringer_teams" method="post">
#<input type="hidden" name="ringer_id" value="<%= @ringer.id %>%">
#<input type="submit" value="<%= @ringer.name %>%">
#</form>
