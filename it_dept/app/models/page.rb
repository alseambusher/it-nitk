class Page < ActiveRecord::Base
	# has_many :peoples
	has_many :events
  def self.link_gen(title)
    return title.sub(/[\/\ \&]/,"_")
  end
end
