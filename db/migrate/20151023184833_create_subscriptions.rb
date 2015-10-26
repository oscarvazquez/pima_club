class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.decimal :total_price
      t.references :user, index: true

      t.timestamps
    end
  end
end
