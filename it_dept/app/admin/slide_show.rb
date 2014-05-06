ActiveAdmin.register SlideShow do

  permit_params :item, :title, :description
  index do
    column "Preview" do |f|
      image_tag(f.item.url(:thumb))
    end
    column :title
    column :description
    column "Updated at", :sortable => "item_updated_at" do |f|
      Time.at(f.item.updated_at())
    end
    default_actions
  end

  form do |f|
    f.inputs do
      f.input :item
      f.input :title
      f.input :description
    end
    f.actions
  end
  show do |f|
    attributes_table do
      row :description
      row "preview" do
        image_tag(f.item.url(:medium))
      end
    end
  end
end
