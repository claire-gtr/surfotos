class AddPhotoToShots < ActiveRecord::Migration[5.2]
  def change
    add_column :shots, :photo, :string
  end
end
