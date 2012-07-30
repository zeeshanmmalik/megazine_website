require 'spec_helper'

describe "slides/show" do
  before(:each) do
    @slide = assign(:slide, stub_model(Slide,
      :title => "Title",
      :page_url => "Page Url",
      :status => "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Page Url/)
    rendered.should match(/Status/)
  end
end
