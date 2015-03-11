class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :source
      t.string :type
      t.string :description
      t.integer :price
      t.string :price_type
      t.string :start_date
      t.string :end_date
      t.boolean :in_playlist
      t.boolean :completed

      t.timestamps null: false
    end
  end
end
