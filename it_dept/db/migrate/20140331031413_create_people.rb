class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.attachment :photo
      t.integer :page_id

      t.timestamps
    end
  end
end
