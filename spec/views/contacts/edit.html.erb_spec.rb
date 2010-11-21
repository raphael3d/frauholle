require 'spec_helper'

describe "contacts/edit.html.erb" do
  before(:each) do
    @contact = assign(:contact, stub_model(Contact,
      :new_record? => false,
      :name => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit contact form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => contact_path(@contact), :method => "post" do
      assert_select "input#contact_name", :name => "contact[name]"
      assert_select "input#contact_email", :name => "contact[email]"
    end
  end
end
