class ClassifiedAd < ActiveRecord::Base
	belongs_to :category
	belongs_to :user
	has_one :city
	has_one :country, :through => :city
	has_many :images
	accepts_nested_attributes_for :images
	
	
	validates :title, presence: true,
					 length: {minimum: 3}

	validates :description, presence: true,
							length: {minimum: 5}
end
