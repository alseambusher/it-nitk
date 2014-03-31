class People < ActiveRecord::Base
	belongs_to :page
	belongs_to :people_type
end
