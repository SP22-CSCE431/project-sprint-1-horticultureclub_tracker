require 'rails_helper'

RSpec.describe "members/edit", type: :view do
  before(:each) do
    @member = assign(:member, Member.create!(
      name: "MyString",
      events_attended: "MyString"
    ))
  end

  it "renders the edit member form" do
    render

    assert_select "form[action=?][method=?]", member_path(@member), "post" do

      assert_select "input[name=?]", "member[name]"

      assert_select "input[name=?]", "member[events_attended]"
    end
  end
end
