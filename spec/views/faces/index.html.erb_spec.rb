require 'rails_helper'

RSpec.describe "faces/index", type: :view do
  before(:each) do
    assign(:faces, [
      Face.create!(
        :user => nil,
        :raw => nil,
        :filename => "Filename"
      ),
      Face.create!(
        :user => nil,
        :raw => nil,
        :filename => "Filename"
      )
    ])
  end

  it "renders a list of faces" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Filename".to_s, :count => 2
  end
end
