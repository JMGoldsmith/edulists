class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :display_name
      t.string :city
      t.string :start_date
      t.string :country


      t.timestamps null: false
    end
  end
end
