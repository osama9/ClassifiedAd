class Comment < ActiveRecord::Base
	include ActionView::Helpers::DateHelper
	belongs_to :classified_ad
	belongs_to :user


	def as_json(options={})
		{
			:content => self.content,
			:created_at => time_ago_in_words(self.created_at),
			:user => user
		}
	end
end
