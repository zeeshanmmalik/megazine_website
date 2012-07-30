require 'spec_helper'

describe "issues/show" do
  before(:each) do
    @issue = assign(:issue, stub_model(Issue,
      :title => "Title",
      :description => "Description",
      :status => "Status",
      :price => "Price",
      :currency_code => "Currency Code"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Description/)
    rendered.should match(/Status/)
    rendered.should match(/Price/)
    rendered.should match(/Currency Code/)
  end
end
