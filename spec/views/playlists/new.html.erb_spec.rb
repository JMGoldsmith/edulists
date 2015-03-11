require 'rails_helper'

RSpec.describe "playlists/new", type: :view do
  before(:each) do
    assign(:playlist, Playlist.new(
      :playlist_name => "MyString",
      :course => "MyString"
    ))
  end

  it "renders new playlist form" do
    render

    assert_select "form[action=?][method=?]", playlists_path, "post" do

      assert_select "input#playlist_playlist_name[name=?]", "playlist[playlist_name]"

      assert_select "input#playlist_course[name=?]", "playlist[course]"
    end
  end
end
