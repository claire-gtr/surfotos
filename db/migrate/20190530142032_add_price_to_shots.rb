class AddPriceToShots < ActiveRecord::Migration[5.2]
  def change
    add_monetize :shots, :price, currency: { present: false }
  end
end
