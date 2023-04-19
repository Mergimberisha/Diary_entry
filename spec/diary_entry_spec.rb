require 'diary_entry'

describe DiaryEntry do
    context "takes an entry" do 
        it "returns the total word count" do 
            monday = DiaryEntry.new("Monday", "I flew to Brazil.")
            expect(monday.count_words).to eq 4
        end 
    end 
    context "takes an entry and the users wpm" do
        it "returns how long user would take to read that" do 
    end 
end