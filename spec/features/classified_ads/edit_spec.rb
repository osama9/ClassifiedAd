require 'rails_helper'

feature "Edit Ad" do
	describe "Editing Ad" do
		it "updates the Ad successfully with correct information" do
			classified_ad = ClassifiedAd.create(title:"Camry 2005", description: "It is fast and good engine")
			visit "/classified_ads"
			within "#classified_ad_#{classified_ad.id}" do
				click_link "Edit"
			end

			fill_in "Title", with: "New Title"
			fill_in "Description", with: "New Description"
			click_button "Update Classified ad"
			classified_ad.reload
			expect(page).to have_content("updated")
			expect(classified_ad.title).to eq("New Title")
			expect(classified_ad.description).to eq("New Description")
		end
	end
end