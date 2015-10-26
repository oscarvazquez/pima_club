class CreateSubPros < ActiveRecord::Migration
  def change
    create_table :sub_pros do |t|
      t.references :subscription, index: true
      t.references :product, index: true

      t.timestamps
    end
  end
end
