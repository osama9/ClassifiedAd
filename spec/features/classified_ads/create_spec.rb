require 'rails_helper'

feature "Creating new Ad", js: true do

	ClassifiedAd.delete_all
	def create_classified_ad(options={}) 
		options[:title]  ||= "My new ad"
		options[:description] ||= "This is my classified ad"

		visit '/classified_ads'

		click_link "New Classified ad"

		expect(page).to have_content("New Classified Ad")

		fill_in "Title", with: options[:title]
		fill_in "Description", with: options[:description]
		click_button "Create Classified ad"
	end

	describe "Creating new add" do
			
		it "redirects to the classified ad index page on success" do
			
			create_classified_ad
			expect(page).to have_content("his is my classified ad")
		end

		it "displays an error when the ad has no title" do
			@count = ClassifiedAd.count

			create_classified_ad title: ""
			expect(page).to have_content("error")
			expect(ClassifiedAd.count).to eq(@count)

			visit "/classified_ads"
			expect(page).to_not have_content("Car for sale`")
		end

		it "displays an error when the ad has title less than 3 charecters" do
			@count = ClassifiedAd.count

			create_classified_ad title: "hi"

			expect(page).to have_content("error")
			expect(ClassifiedAd.count).to eq(@count)

			visit "/classified_ads"
			expect(page).to_not have_content("Car for sale`")
		end

		it "displays an error when the ad has no Description" do
			@count = ClassifiedAd.count

			create_classified_ad description: ""
			expect(page).to have_content("error")
			expect(ClassifiedAd.count).to eq(@count)

			visit "/classified_ads"
			expect(page).to_not have_content("Car for sale`")
		end

		it "displays an error when the ad has description less than 5 charecters" do
			@count = ClassifiedAd.count

			create_classified_ad description: "car"

			expect(page).to have_content("error")
			expect(ClassifiedAd.count).to eq(@count)

			visit "/classified_ads"
			expect(page).to_not have_content("Hi new ad here")
		end

	end
end