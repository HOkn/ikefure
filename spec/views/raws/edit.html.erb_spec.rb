require 'rails_helper'

RSpec.describe "raws/edit", type: :view do
  before(:each) do
    @raw = assign(:raw, Raw.create!(
      :user => nil,
      :filename => "MyString"
    ))
  end

  it "renders the edit raw form" do
    render

    assert_select "form[action=?][method=?]", raw_path(@raw), "post" do

      assert_select "input#raw_user_id[name=?]", "raw[user_id]"

      assert_select "input#raw_filename[name=?]", "raw[filename]"
    end
  end
end
