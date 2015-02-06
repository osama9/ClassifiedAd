class AddCityTable < ActiveRecord::Migration
  def change
  	create_table :cities do |t|
      t.string :english_name
      t.text :arabic_name
      t.integer :country_id
    end
  end
end
