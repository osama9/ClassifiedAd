class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.string :content
    	t.integer :user_id
    	t.integer :classified_ad_id
      t.timestamps null: false
    end
    add_index :comments, :user_id
    add_index :comments, :classified_ad_id
  end
end
