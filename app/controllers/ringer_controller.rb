class RingerController < ApplicationController

    get '/' do 
        @ringers = Ringer.all
        erb :"ringers/index"
    end 
end 