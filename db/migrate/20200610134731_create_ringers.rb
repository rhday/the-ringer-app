class CreateRingers < ActiveRecord::Migration[6.0]
  def change
    create_table :ringers do |t|
      t.string :name
      t.integer :phone_no
    end 
  end
end
