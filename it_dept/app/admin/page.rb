ActiveAdmin.register Page do

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :title, :description
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

  index do
    column :id
    column :title
    #column :description
    column "url" do |f| link_to (url_for :controller => "/page_router", :action => "page", :id => f.id, :only_path => false), (url_for :controller => "/page_router", :action => "page", :id => f.id) end
    column "Updated at", :sortable => "item_updated_at" do |f| Time.at(f.updated_at()) end
    default_actions
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :description , label: false
    end
    f.actions
  end
end
