class CreatePartakers < ActiveRecord::Migration
  def change
    create_table :partakers do |t|
      t.belongs_to :event
      t.belongs_to :participant

      t.timestamps
    end
  end
end
