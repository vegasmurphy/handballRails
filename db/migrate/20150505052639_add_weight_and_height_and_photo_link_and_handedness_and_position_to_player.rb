class AddWeightAndHeightAndPhotoLinkAndHandednessAndPositionToPlayer < ActiveRecord::Migration
  def change
    add_column :players, :weight, :integer
    add_column :players, :height, :integer
    add_column :players, :photo_link, :string
    add_column :players, :handedness, :string
    add_column :players, :position, :string
  end
end
