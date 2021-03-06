require 'rails_helper'

RSpec.describe "playlists/edit", type: :view do
  before(:each) do
    @playlist = assign(:playlist, Playlist.create!(
      :playlist_name => "MyString",
      :course => "MyString"
    ))
  end

  it "renders the edit playlist form" do
    render

    assert_select "form[action=?][method=?]", playlist_path(@playlist), "post" do

      assert_select "input#playlist_playlist_name[name=?]", "playlist[playlist_name]"

      assert_select "input#playlist_course[name=?]", "playlist[course]"
    end
  end
end
