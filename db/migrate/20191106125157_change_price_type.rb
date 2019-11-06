class ChangePriceType < ActiveRecord::Migration[5.2]
  def change
    remove_column :flats, :price_per_night
    add_column :flats, :price_per_night, :integer
  end
end
