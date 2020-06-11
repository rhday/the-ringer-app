class Ringer < ActiveRecord::Base

    has_many :ringer_teams
    has_many :teams, through: :ringer_teams

end 