require 'spec_helper'

describe "contacts/show.html.erb" do
  before(:each) do
    @contact = assign(:contact, stub_model(Contact,
      :name => "Name",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Email/)
  end
end
