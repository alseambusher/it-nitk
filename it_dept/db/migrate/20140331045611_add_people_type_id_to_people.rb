class AddPeopleTypeIdToPeople < ActiveRecord::Migration
  def change
    add_column :people, :people_type_id, :integer
  end
end
