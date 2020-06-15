class RingerTeamsController < ApplicationController

    post '/ringer_teams' do
         current_user.ringers << Ringer.find(params[:ringer_id])
         redirect '/dashboard'
    end
    
end 