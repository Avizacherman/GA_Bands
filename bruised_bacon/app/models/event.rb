class Event < ActiveRecord::Base
	belongs_to :band
	belongs_to :venue

	def self.search(year, month, day)
			date = Date.new year.to_i, month.to_i, day.to_i
			find(:all, :conditions => ['date LIKE ?', date)
	end
end
