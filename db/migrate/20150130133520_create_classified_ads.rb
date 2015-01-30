class CreateClassifiedAds < ActiveRecord::Migration
  def change
    create_table :classified_ads do |t|
      t.string :title
      t.text :description
      t.boolean :is_published
      t.boolean :isExpired
      t.timestamps null: false
    end
  end
end
