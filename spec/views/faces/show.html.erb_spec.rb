require 'rails_helper'

RSpec.describe "faces/show", type: :view do
  before(:each) do
    @face = assign(:face, Face.create!(
      :user => nil,
      :raw => nil,
      :filename => "Filename"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Filename/)
  end
end
