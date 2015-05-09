require 'rails_helper'

RSpec.describe "raws/new", type: :view do
  before(:each) do
    assign(:raw, Raw.new(
      :user => nil,
      :filename => "MyString"
    ))
  end

  it "renders new raw form" do
    render

    assert_select "form[action=?][method=?]", raws_path, "post" do

      assert_select "input#raw_user_id[name=?]", "raw[user_id]"

      assert_select "input#raw_filename[name=?]", "raw[filename]"
    end
  end
end
