class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :password_hash
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.integer :followers_count, default: 0
      t.integer :posts_count

      t.timestamps
    end
  end
end
