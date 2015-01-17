class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :username
      t.string :email
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
