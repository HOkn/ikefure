require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :name => "Name",
        :facebook_user_id => "Facebook User"
      ),
      User.create!(
        :name => "Name",
        :facebook_user_id => "Facebook User"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Facebook User".to_s, :count => 2
  end
end
