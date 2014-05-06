class People < ActiveRecord::Base
	belongs_to :page
	belongs_to :people_type
  has_attached_file :photo, :styles => {:medium =>"238x238>", :thumb => "100x100>"}
  # validates_attachment_content_type
  validates_attachment_file_name :photo, :matches => [ /png\Z/, /jpe?g\Z/]
end
