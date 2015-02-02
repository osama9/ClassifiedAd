class Category < ActiveRecord::Base
	has_many :classified_ads
	has_many :products

end
