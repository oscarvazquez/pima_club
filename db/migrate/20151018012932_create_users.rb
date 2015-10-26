class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :address
      t.string :city
      t.string :state
      t.string :country
      t.string :zip_code
      t.boolean :confirmation
      t.string :confirm_token
      t.string :uid
      t.string :outh
      t.string :provider
      t.string :oauth_token
      t.datetime :oauth_expires_at
      t.string :role

      t.timestamps
    end
  end
end
