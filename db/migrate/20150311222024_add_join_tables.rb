class AddJoinTables < ActiveRecord::Migration
  def change
    create_table :user_playlist
    create_table :playlist_course
    create_table :curriculum_course
    create_table :user_curriculum
    create_table :course_tags
  end
end
