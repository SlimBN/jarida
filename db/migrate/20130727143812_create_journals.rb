class CreateJournals < ActiveRecord::Migration
  def change
    create_table :journals do |t|
      t.string :name
      t.string :slug
      t.text :description
      t.string :logo
      t.string :journalcover
      t.integer :user_id
      t.boolean :active

      t.timestamps
    end
  end
end
