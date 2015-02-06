class ClassifiedAd < ActiveRecord::Base
	belongs_to :category
	belongs_to :user
	has_one :city
	has_one :country, :through => :city
	
	
	validates :title, presence: true,
					 length: {minimum: 3}

	validates :description, presence: true,
							length: {minimum: 5}
end
