class ImageController < ApplicationController

	def create
	    @image = Image.new(photo_params)
	    @image.save
  	end

end