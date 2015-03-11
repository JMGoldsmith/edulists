require 'rails_helper'

RSpec.describe "curriculums/edit", type: :view do
  before(:each) do
    @curriculum = assign(:curriculum, Curriculum.create!(
      :curriculum_name => "MyString",
      :created_by => "MyString"
    ))
  end

  it "renders the edit curriculum form" do
    render

    assert_select "form[action=?][method=?]", curriculum_path(@curriculum), "post" do

      assert_select "input#curriculum_curriculum_name[name=?]", "curriculum[curriculum_name]"

      assert_select "input#curriculum_created_by[name=?]", "curriculum[created_by]"
    end
  end
end
