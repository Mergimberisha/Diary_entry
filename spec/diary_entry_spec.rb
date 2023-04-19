require 'diary_entry'

describe DiaryEntry do
    context "takes an entry" do 
        it "returns the total word count" do 
            monday = DiaryEntry.new("Monday", "I flew to Brazil.")
            expect(monday.count_words).to eq 4
        end 
    end 
end