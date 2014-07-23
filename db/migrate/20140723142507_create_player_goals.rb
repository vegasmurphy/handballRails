class CreatePlayerGoals < ActiveRecord::Migration
  def change
    create_table :player_goals do |t|
      t.integer :player_id
      t.integer :tournament_id
      t.integer :goals

      t.timestamps
    end
  end
end
