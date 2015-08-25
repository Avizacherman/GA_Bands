class Venue < ActiveRecord::Base
	has_many :bands, through: :events
	has_many :events, dependent: :destroy
end
