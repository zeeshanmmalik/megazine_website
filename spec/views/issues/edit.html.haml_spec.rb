require 'spec_helper'

describe "issues/edit" do
  before(:each) do
    @issue = assign(:issue, stub_model(Issue,
      :title => "MyString",
      :description => "MyString",
      :status => "MyString",
      :price => "MyString",
      :currency_code => "MyString"
    ))
  end

  it "renders the edit issue form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => issues_path(@issue), :method => "post" do
      assert_select "input#issue_title", :name => "issue[title]"
      assert_select "input#issue_description", :name => "issue[description]"
      assert_select "input#issue_status", :name => "issue[status]"
      assert_select "input#issue_price", :name => "issue[price]"
      assert_select "input#issue_currency_code", :name => "issue[currency_code]"
    end
  end
end
