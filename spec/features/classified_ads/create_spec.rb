require 'rails_helper'

feature "Creating new Ad", js: true do
	descripe "Creating new add" do
		it "redirects to the classified ad index page on success" do
			visit 'classified_ads'

			click_link "New Classified ad"

			expect(page).to have_content("New Classified Ad")
		end
	end
end