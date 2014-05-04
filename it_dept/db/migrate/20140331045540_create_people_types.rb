class CreatePeopleTypes < ActiveRecord::Migration
  def change
    create_table :people_types do |t|
      t.string :name
      t.timestamps
    end
    add_column :people, :people_type_id, :integer
  end
end
