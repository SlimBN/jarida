class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :last_name
      t.string :first_name
      t.string :avatar
      t.string :location
      t.text :about
      t.string :gender

      t.timestamps
    end
  end
end
