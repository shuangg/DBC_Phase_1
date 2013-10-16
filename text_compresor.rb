class TextCompressor
  attr_reader :unique, :index

  def initialize( text )
    @unique = []
    @index  = []


    words = text.split
    words.each do |word|
      i = @unique.index( word )
      if i 
        @index << i
      else
        @unique << word
        @index << unique.size - 1
      end
    end
  end
end


new_string = TextCompressor.new("You visit in a week in a week")
new_string.unique # => ["You", "visit", "in", "a", "week"]
new_string.index # => [0, 1, 2, 3, 4, 2, 3, 4]

# this method splits the string at white space
# looks for work in array, if not there nil is returned, so first condition is not run
# adds new word to unique array and then creates an index for it in the index array
# this is so that you can now look it up by index if the word is used in the sentence again
# if you come to a word that is already in the unique array, place its index in the unique array
# into the index array so that you can reconstruct the sentence using the indexed words.
# I.E. "in" is at the third spot in the sentence and at index 2 in the index array, so to used "in"
# again and not repeat it, append its initial index into the index array. 





class TextCompressor
  attr_reader :unique, :index

  def initialze( text )
    @unique = []
    @index = []
    add_text( text )
  end

  def add_text( text )
    words = text.split
    words.each { |wrd| add_word( wrd ) }
  end

  def add_word ( word )
    i = unique_index_of( word ) || add_unique_word( word ) # word already in index, or nil and then add unique word
    @index << i
  end

  def unique_index_of( word )
    @unique.index(word)
  end

  def add_unique_word( word )
    @unique << word
    unique.size - 1
  end
end
