class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :date
      t.string :title
      #t.integer :upload_id
      t.integer :page_id
      t.boolean :important, :default => false
      t.timestamps
    end
  end
end
