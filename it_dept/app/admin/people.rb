ActiveAdmin.register People do
  permit_params :name ,:photo, :page_id , :people_type_id
  form do |f|
    f.inputs do
     f.input :name
      f.input :photo
     f.input :page_id, as: :select, collection: Page.all
      f.input :people_type_id, as: :select, collection: PeopleType.all
    end
    f.actions
  end
end
