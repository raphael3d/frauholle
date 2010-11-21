require 'spec_helper'

describe "listes/show.html.erb" do
  before(:each) do
    @liste = assign(:liste, stub_model(Liste,
      :title => "Title",
      :description => "MyText",
      :image_url => "Image Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Image Url/)
  end
end
