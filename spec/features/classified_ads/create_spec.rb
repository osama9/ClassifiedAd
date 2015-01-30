require 'rails_helper'

feature "Creating new Ad", js: true do
	describe "Creating new add" do
		it "redirects to the classified ad index page on success" do
			visit '/classified_ads'

			click_link "New Classified ad"

			expect(page).to have_content("New Classified Ad")

			fill_in "Title", with: "My Classified Ad"
			fill_in "Description", with: "Car for sale"
			click_button "Create Classified ad"

			expect(page).to have_content("My Classified Ad")
		end

		it "displays an error when the ad has no title" do
			@count = ClassifiedAd.count

			visit '/classified_ads'

			click_link "New Classified ad"

			expect(page).to have_content("New Classified Ad")

			fill_in "Title", with: ""
			fill_in "Description", with: "Car for sale"
			click_button "Create Classified ad"

			expect(page).to have_content("error")
			expect(ClassifiedAd.count).to eq(@count)

			visit "/classified_ads"
			expect(page).to_not have_content("Car for sale`")
		end

		it "displays an error when the ad has title less than 3 charecters" do
			@count = ClassifiedAd.count

			visit '/classified_ads'

			click_link "New Classified ad"

			expect(page).to have_content("New Classified Ad")

			fill_in "Title", with: "Hi"
			fill_in "Description", with: "Car for sale"
			click_button "Create Classified ad"

			expect(page).to have_content("error")
			expect(ClassifiedAd.count).to eq(@count)

			visit "/classified_ads"
			expect(page).to_not have_content("Car for sale`")
		end
	end
end