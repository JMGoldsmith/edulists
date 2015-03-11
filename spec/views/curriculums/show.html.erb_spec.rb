require 'rails_helper'

RSpec.describe "curriculums/show", type: :view do
  before(:each) do
    @curriculum = assign(:curriculum, Curriculum.create!(
      :curriculum_name => "Curriculum Name",
      :created_by => "Created By"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Curriculum Name/)
    expect(rendered).to match(/Created By/)
  end
end
