class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.integer :journal_id
      t.integer :number
      t.string :title
      t.string :slug

      t.timestamps
    end
  end
end
