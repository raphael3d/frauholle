require 'spec_helper'

describe "contacts/new.html.erb" do
  before(:each) do
    assign(:contact, stub_model(Contact,
      :name => "MyString",
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new contact form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => contacts_path, :method => "post" do
      assert_select "input#contact_name", :name => "contact[name]"
      assert_select "input#contact_email", :name => "contact[email]"
    end
  end
end
