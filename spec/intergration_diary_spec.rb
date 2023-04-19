require "diary"
require "diary_entry"

RSpec.describe Diary do
  context "When we add a entry" do
    it "Returns the diary" do
      diary = Diary.new
      monday = DiaryEntry.new("monday", "I flew to brazil")
      diary.add(monday)
      expect(diary.all).to eq [monday]
    end
  end
  context "When an entries" do
    it "returns the number of words in the context" do
      diary = Diary.new
      monday = DiaryEntry.new("monday", "I flew to brazil")
      tuesday = DiaryEntry.new("tuesday", "I flew home")
      diary.add(monday)
      diary.add(tuesday)
      result = diary.count_words
      expect(result).to eq 7
    end
  end
end
