class Event < ActiveRecord::Base
	belongs_to :band
	belongs_to :venue

	def self.search(search)
		find(:all, :conditions => ['date LIKE ?', search])
	end
end
