class CreateShots < ActiveRecord::Migration[5.2]
  def change
    create_table :shots do |t|
      t.references :user, foreign_key: true
      t.datetime :shot_on
      t.string :shot_at

      t.timestamps
    end
  end
end
