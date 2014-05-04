class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :date
      t.string :title
      t.text :description
      t.integer :upload_id
      t.integer :page_id
      # t.text :thumbnail

      t.timestamps
    end
  end
end
