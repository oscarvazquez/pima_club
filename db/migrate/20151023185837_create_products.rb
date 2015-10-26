class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.string :available
      t.string :shipping

      t.timestamps
    end
  end
end
