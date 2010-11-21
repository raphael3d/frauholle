require 'spec_helper'

describe "listes/index.html.erb" do
  before(:each) do
    assign(:listes, [
      stub_model(Liste,
        :title => "Title",
        :description => "MyText",
        :image_url => "Image Url"
      ),
      stub_model(Liste,
        :title => "Title",
        :description => "MyText",
        :image_url => "Image Url"
      )
    ])
  end

  it "renders a list of listes" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Image Url".to_s, :count => 2
  end
end
