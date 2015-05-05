class AddFechaToGames < ActiveRecord::Migration
  def change
    add_column :games, :fecha, :integer
  end
end
