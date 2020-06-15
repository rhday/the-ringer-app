class RingerController < ApplicationController

    get '/ringers' do 
        @ringer = Ringer.all
        erb :"ringers/index"
    end 

    get'/ringers/:id' do
        @ringer = Ringer.find(params[:id])
        erb :"ringers/show"
    end
end 