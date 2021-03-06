ActiveAdmin.register Alert do

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :date , :title , :description, :important
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

  form do |f|
    f.inputs do
      f.input :date
      f.input :title
      f.input :description , label: false
      f.input :important
    end
    f.actions
  end
  
end
