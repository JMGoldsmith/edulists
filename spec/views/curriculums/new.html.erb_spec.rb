require 'rails_helper'

RSpec.describe "curriculums/new", type: :view do
  before(:each) do
    assign(:curriculum, Curriculum.new(
      :curriculum_name => "MyString",
      :created_by => "MyString"
    ))
  end

  it "renders new curriculum form" do
    render

    assert_select "form[action=?][method=?]", curriculums_path, "post" do

      assert_select "input#curriculum_curriculum_name[name=?]", "curriculum[curriculum_name]"

      assert_select "input#curriculum_created_by[name=?]", "curriculum[created_by]"
    end
  end
end
