class AddSkuToShots < ActiveRecord::Migration[5.2]
  def change
    add_column :shots, :sku, :string
  end
end
