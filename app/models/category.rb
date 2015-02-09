class Category < ActiveRecord::Base
	has_many :classified_ads, dependent: :destroy
	

end
