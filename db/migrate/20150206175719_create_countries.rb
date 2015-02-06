class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.text :english_name
      t.text :arabic_name

      t.timestamps null: false
    end
  end
end