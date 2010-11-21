require 'spec_helper'

describe "listes/edit.html.erb" do
  before(:each) do
    @liste = assign(:liste, stub_model(Liste,
      :new_record? => false,
      :title => "MyString",
      :description => "MyText",
      :image_url => "MyString"
    ))
  end

  it "renders the edit liste form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => liste_path(@liste), :method => "post" do
      assert_select "input#liste_title", :name => "liste[title]"
      assert_select "textarea#liste_description", :name => "liste[description]"
      assert_select "input#liste_image_url", :name => "liste[image_url]"
    end
  end
end
