class AddLogoLinkToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :logo_link, :string
  end
end
