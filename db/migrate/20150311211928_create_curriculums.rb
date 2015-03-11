class CreateCurriculums < ActiveRecord::Migration
  def change
    create_table :curriculums do |t|
      t.string :curriculum_name
      t.string :description
      t.string :notes
      t.string :materials
      t.integer :overall_cost
      t.integer :time_to_complete

      t.timestamps null: false
    end
  end
end
