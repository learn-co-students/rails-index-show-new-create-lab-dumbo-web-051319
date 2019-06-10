require 'rails_helper'


describe CouponsHelper do
  describe "string concat" do
    it "concats two strings with spaces" do
      expect(helper.concat_strings("this","that")).to eq("this that")
    end
  end
end
RSpec.describe CouponsHelper, type: :helper do
  # pending "add some examples to (or delete) #{__FILE__}"
end
