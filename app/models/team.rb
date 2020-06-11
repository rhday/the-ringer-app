class Team < ActiveRecord::Base

    belongs_to :user
    has_many :ringer_teams
    has_many :ringers, through: :ringer_teams

end 