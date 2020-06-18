class RingerTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :ringer_teams do |t|
      t.integer :ringer_id
      t.integer :team_id
      t.datetime :game_day
      t.timestamps
    end 
  end
end
