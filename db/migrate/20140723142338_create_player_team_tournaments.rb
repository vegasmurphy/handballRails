class CreatePlayerTeamTournaments < ActiveRecord::Migration
  def change
    create_table :player_team_tournaments do |t|
      t.integer :player_id
      t.integer :team_id
      t.integer :tournament_id

      t.timestamps
    end
  end
end
