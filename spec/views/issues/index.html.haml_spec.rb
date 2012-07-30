require 'spec_helper'

describe "issues/index" do
  before(:each) do
    assign(:issues, [
      stub_model(Issue,
        :title => "Title",
        :description => "Description",
        :status => "Status",
        :price => "Price",
        :currency_code => "Currency Code"
      ),
      stub_model(Issue,
        :title => "Title",
        :description => "Description",
        :status => "Status",
        :price => "Price",
        :currency_code => "Currency Code"
      )
    ])
  end

  it "renders a list of issues" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Price".to_s, :count => 2
    assert_select "tr>td", :text => "Currency Code".to_s, :count => 2
  end
end
