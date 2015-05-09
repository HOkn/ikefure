require 'rails_helper'

RSpec.describe "faces/edit", type: :view do
  before(:each) do
    @face = assign(:face, Face.create!(
      :user => nil,
      :raw => nil,
      :filename => "MyString"
    ))
  end

  it "renders the edit face form" do
    render

    assert_select "form[action=?][method=?]", face_path(@face), "post" do

      assert_select "input#face_user_id[name=?]", "face[user_id]"

      assert_select "input#face_raw_id[name=?]", "face[raw_id]"

      assert_select "input#face_filename[name=?]", "face[filename]"
    end
  end
end
