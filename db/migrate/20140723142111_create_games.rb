class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :team_id
      t.integer :opponent_id
      t.integer :team_score
      t.integer :opponent_score
      t.datetime :date
      t.string :location

      t.timestamps
    end
  end
end
