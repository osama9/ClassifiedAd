class Comment < ActiveRecord::Base
	belongs_to :classified_ad
	belongs_to :user
end
