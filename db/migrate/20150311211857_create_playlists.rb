class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.string :playlist_name
      t.string :description

      t.timestamps null: false
    end
  end
end
