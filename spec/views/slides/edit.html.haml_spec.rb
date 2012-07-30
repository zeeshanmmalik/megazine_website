require 'spec_helper'

describe "slides/edit" do
  before(:each) do
    @slide = assign(:slide, stub_model(Slide,
      :title => "MyString",
      :page_url => "MyString",
      :status => "MyString"
    ))
  end

  it "renders the edit slide form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => slides_path(@slide), :method => "post" do
      assert_select "input#slide_title", :name => "slide[title]"
      assert_select "input#slide_page_url", :name => "slide[page_url]"
      assert_select "input#slide_status", :name => "slide[status]"
    end
  end
end
