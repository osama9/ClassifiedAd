class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :classified_ad_id
      t.string :path

      t.timestamps null: false
    end
  end
end
