ActiveAdmin.register Upload do

  permit_params :item, :description
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  index do
    column "Name", :sortable => "item_file_name" do |f| link_to(f.item.original_filename,f.item.url()) end
    column "File type", :sortable => "item_content_type" do |f| f.item.content_type end  
    column "Preview" do |f| 
      if ["image/jpeg","image/png","image/jpg"].include?f.item.content_type
        image_tag(f.item.url(:thumb))
      end
    end
    column "size", :sortable => "item_file_size" do |f| f.item.size() end
    column :description
    column "Updated at", :sortable => "item_updated_at" do |f| Time.at(f.item.updated_at()) end
    default_actions
  end

    form do |f|
      f.inputs do
        f.input :item
        f.input :description
      end
      f.actions
    end
      show do |f|
        attributes_table do
          row "url" do link_to(f.item.url(),f.item.url()) end
          row :description
          row "preview" do
            # f.image.url()
            if ["image/jpeg","image/png","image/jpg"].include?f.item.content_type
              image_tag(f.item.url(:medium))
            end
          # row :item.content_type
          end
      end
    end
end
