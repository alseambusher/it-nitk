class CreateSlideShows < ActiveRecord::Migration
  def change
    create_table :slide_shows do |t|
      t.attachment :item
      t.string :title
      t.string :description
      t.timestamps
    end
  end
end
