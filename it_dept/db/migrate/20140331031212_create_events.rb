class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :date
      t.string :title
      t.text :description
      t.text :thumbnail

      t.timestamps
    end
  end
end
