class SlideShow < ActiveRecord::Base
  belongs_to :upload

  has_attached_file :item, :styles => {:medium =>"238x238>", :thumb => "100x100>"}
  # validates_attachment_content_type
  validates_attachment_file_name :item, :matches => [ /png\Z/, /jpe?g\Z/]
end
