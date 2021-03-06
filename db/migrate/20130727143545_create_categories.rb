class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :slug
      t.boolean :activated
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
