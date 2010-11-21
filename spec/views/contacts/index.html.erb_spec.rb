require 'spec_helper'

describe "contacts/index.html.erb" do
  before(:each) do
    assign(:contacts, [
      stub_model(Contact,
        :name => "Name",
        :email => "Email"
      ),
      stub_model(Contact,
        :name => "Name",
        :email => "Email"
      )
    ])
  end

  it "renders a list of contacts" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
