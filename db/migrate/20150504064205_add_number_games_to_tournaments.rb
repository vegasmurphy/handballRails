class AddNumberGamesToTournaments < ActiveRecord::Migration
  def change
    add_column :tournaments, :number_games, :integer
  end
end
