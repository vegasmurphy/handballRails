class CreatePlayerGameStatistics < ActiveRecord::Migration
  def change
    create_table :player_game_statistics do |t|
      t.integer :game_id
      t.integer :player_id
      t.integer :goals
      t.integer :yellow_cards
      t.integer :red_cards
      t.integer :two_minutes

      t.timestamps
    end
  end
end
