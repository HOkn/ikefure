require 'rails_helper'

RSpec.describe "raws/index", type: :view do
  before(:each) do
    assign(:raws, [
      Raw.create!(
        :user => nil,
        :filename => "Filename"
      ),
      Raw.create!(
        :user => nil,
        :filename => "Filename"
      )
    ])
  end

  it "renders a list of raws" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Filename".to_s, :count => 2
  end
end
