require 'spec_helper'

describe "slides/index" do
  before(:each) do
    assign(:slides, [
      stub_model(Slide,
        :title => "Title",
        :page_url => "Page Url",
        :status => "Status"
      ),
      stub_model(Slide,
        :title => "Title",
        :page_url => "Page Url",
        :status => "Status"
      )
    ])
  end

  it "renders a list of slides" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Page Url".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
