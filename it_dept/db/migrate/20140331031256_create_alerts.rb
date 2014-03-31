class CreateAlerts < ActiveRecord::Migration
  def change
    create_table :alerts do |t|
      t.date :date
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
