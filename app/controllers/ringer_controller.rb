class RingerController < ApplicationController

    get '/ringers' do 
        @ringer = Ringer.all
        erb :"ringers/index"
    end 
end 