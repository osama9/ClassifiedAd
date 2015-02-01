class AddUserIdToAdModel < ActiveRecord::Migration
  def change
  	add_column :classified_ads, :user_id, :integer
  	add_index :classified_ads,  :user_id
  end
end
