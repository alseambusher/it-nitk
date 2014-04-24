class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.attachment :item
      t.string :description
      t.timestamps
    end
  end
end
