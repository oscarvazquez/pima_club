class CreateProductAttributes < ActiveRecord::Migration
  def change
    create_table :product_attributes do |t|
      t.references :facet, polymorphic: true, index: true
      t.references :product, index: true

      t.timestamps
    end
  end
end
