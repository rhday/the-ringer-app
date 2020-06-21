class RingerController < ApplicationController

    get '/ringers' do 
        @ringer = Ringer.all
        erb :"ringers/index"
    end 

    get'/ringers/:id' do
        @ringer = Ringer.find(params[:id])
        #binding.pry
        erb :"ringers/show"
    end
end 
#<form action="/ringers" method="post">
#    <input type="hidden" name="ringer_id" value="<%= r.id %>">
#    <input type="submit" value=" <%= r.name %>">
#</form>