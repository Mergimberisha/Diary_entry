class Diary
  def initialize
    @diary_entries = []
  end

  def add(entry) # entry is an instance of DiaryEntry
    @diary_entries << entry
  end

  def all
    # Returns a list of instances of DiaryEntry
    @diary_entries
  end

  def count_words
    @count = 0
    for entry in @diary_entries
      @count += entry.count_words
    end
    return @count
    # Returns the number of words in all diary entries
    # HINT: This method should make use of the `count_words` method on DiaryEntry.
  end

  def reading_time(wpm)
    count_words / wpm.to_f

    # wpm is an integer representing
    # the number of words the user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # if the user were to read all entries in the diary.
  end

  def best_entry(wpm, minutes)
    chunk = wpm * minutes
    for entry in @diary_entries
      puts entry if entry.count_words <= chunk
    end
    # @diary_entries.select { |entry| entry.count_words <= chunk }

    # `wpm` is an integer representing the number of words the user can read
    # per minute.
    # `minutes` is an integer representing the number of minutes the user
    # has to read.
    # Returns an instance of diary entry representing the entry that is closest
    # to, but not over, the length that the user could read in the minutes they
    # have available given their reading speed.
  end
end
