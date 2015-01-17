class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.integer :name
      t.belongs_to :event

      t.timestamps
    end
  end
end
