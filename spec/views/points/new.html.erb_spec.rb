require 'rails_helper'

RSpec.describe "points/new", type: :view do
  before(:each) do
    assign(:point, Point.new(
      member_id: 1,
      event_id: 1,
      points: 1
    ))
  end

  it "renders new point form" do
    render
  end
end
