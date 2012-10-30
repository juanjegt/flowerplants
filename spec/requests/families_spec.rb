require 'spec_helper'

describe "Families" do
  describe "GET /families" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get families_path
      assert_select "input[name=?]", "txt-search"
    end
  end
end
