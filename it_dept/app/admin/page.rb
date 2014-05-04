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
    column :title
    column :description
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
