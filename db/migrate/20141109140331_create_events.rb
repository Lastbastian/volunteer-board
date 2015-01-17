class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.string :date_of_event
      t.string :time_of_event
      t.string :address
      t.string :city
      t.string :state
      t.string :length_of_event
      t.string :participants
      t.string :participants_thresh
      t.references :user

      t.timestamps
    end
  end
end
