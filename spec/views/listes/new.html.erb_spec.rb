require 'spec_helper'

describe "listes/new.html.erb" do
  before(:each) do
    assign(:liste, stub_model(Liste,
      :title => "MyString",
      :description => "MyText",
      :image_url => "MyString"
    ).as_new_record)
  end

  it "renders new liste form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => listes_path, :method => "post" do
      assert_select "input#liste_title", :name => "liste[title]"
      assert_select "textarea#liste_description", :name => "liste[description]"
      assert_select "input#liste_image_url", :name => "liste[image_url]"
    end
  end
end
