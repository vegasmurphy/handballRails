class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.integer :year
      t.integer :semester
      t.integer :league_id

      t.timestamps
    end
  end
end
