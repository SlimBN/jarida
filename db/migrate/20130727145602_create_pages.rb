class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.string :slug
      t.integer :order
      t.integer :issue_id
      t.integer :user_id

      t.timestamps
    end
  end
end
