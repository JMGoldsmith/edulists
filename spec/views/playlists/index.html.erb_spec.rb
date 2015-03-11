require 'rails_helper'

RSpec.describe "playlists/index", type: :view do
  before(:each) do
    assign(:playlists, [
      Playlist.create!(
        :playlist_name => "Playlist Name",
        :course => "Course"
      ),
      Playlist.create!(
        :playlist_name => "Playlist Name",
        :course => "Course"
      )
    ])
  end

  it "renders a list of playlists" do
    render
    assert_select "tr>td", :text => "Playlist Name".to_s, :count => 2
    assert_select "tr>td", :text => "Course".to_s, :count => 2
  end
end
