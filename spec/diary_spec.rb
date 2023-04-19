require "diary"

RSpec.describe Diary do
  context "User returns empty diary" do
    it "" do
      monday = Diary.new
      expect(monday.all).to eq []
    end
  end
end
