require 'rails_helper'

RSpec.describe "curriculums/index", type: :view do
  before(:each) do
    assign(:curriculums, [
      Curriculum.create!(
        :curriculum_name => "Curriculum Name",
        :created_by => "Created By"
      ),
      Curriculum.create!(
        :curriculum_name => "Curriculum Name",
        :created_by => "Created By"
      )
    ])
  end

  it "renders a list of curriculums" do
    render
    assert_select "tr>td", :text => "Curriculum Name".to_s, :count => 2
    assert_select "tr>td", :text => "Created By".to_s, :count => 2
  end
end
