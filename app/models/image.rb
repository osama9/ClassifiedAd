class Image < ActiveRecord::Base
	belongs_to :classified_ad
	mount_uploader :path, ImageUploader
end
