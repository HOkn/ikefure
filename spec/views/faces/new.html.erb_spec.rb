require 'rails_helper'

RSpec.describe "faces/new", type: :view do
  before(:each) do
    assign(:face, Face.new(
      :user => nil,
      :raw => nil,
      :filename => "MyString"
    ))
  end

  it "renders new face form" do
    render

    assert_select "form[action=?][method=?]", faces_path, "post" do

      assert_select "input#face_user_id[name=?]", "face[user_id]"

      assert_select "input#face_raw_id[name=?]", "face[raw_id]"

      assert_select "input#face_filename[name=?]", "face[filename]"
    end
  end
end
