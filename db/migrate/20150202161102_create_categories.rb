class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :arabic_name	, null: false
      t.string :english_name, null: false
      t.boolean :is_active,  default: true
      
      t.timestamps null: false
    end
  end
end
