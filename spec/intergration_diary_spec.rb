require "diary"
require "diary_entry"

RSpec.describe Diary do
  context "When we add a entry" do
    it "Returns the diary" do
      monday = DiaryEntry.new("monday", "I flew to brazil")
      diary.add(monday)
      expect(monday.all).to eq [monday]
    end
  end
end
