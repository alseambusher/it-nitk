ActiveAdmin.register Event do
  permit_params :date , :title , :page_id, :important, :photo
end
