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

  context "When a user  enters a multiple entries" do
    it "returns total number of words in the contexts" do
      diary = Diary.new
      monday = DiaryEntry.new("monday", "I flew to brazil")
      tuesday = DiaryEntry.new("tuesday", "I flew home")
      diary.add(monday)
      diary.add(tuesday)
      result = diary.count_words
      expect(result).to eq 7
    end
  end

  context "When user enters multiple entries" do
    it "returns how long it takes the user to read whole diary" do
      diary = Diary.new
      monday = DiaryEntry.new("monday", "I flew to brazil")
      tuesday = DiaryEntry.new("tuesday", "I flew home")
      diary.add(monday)
      diary.add(tuesday)
      result = diary.reading_time(2)
      expect(result).to eq 3.5
    end
  end

  context "When user enters multiple entries" do
    it "returns entry that user has time to read" do
      diary = Diary.new
      monday = DiaryEntry.new("monday", "I flew to brazil")
      tuesday = DiaryEntry.new("tuesday", "I flew home")
      diary.add(monday)
      diary.add(tuesday)
      result = diary.best_entry(2, 2)
      expect(result).to eq "I flew to brazil"
    end
  end
end
