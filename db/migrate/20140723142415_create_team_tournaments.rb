class CreateTeamTournaments < ActiveRecord::Migration
  def change
    create_table :team_tournaments do |t|
      t.integer :team_id
      t.integer :tournament_id

      t.timestamps
    end
  end
end
