class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price, precision: 5, scale: 2
      t.string :country_of_origin

      t.timestamps
    end
  end
end
