class AddSurferAndPhotographerToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :surfer, :boolean
    add_column :users, :photographer, :boolean
  end
end
