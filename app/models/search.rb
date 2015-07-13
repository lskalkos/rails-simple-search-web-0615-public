class Search

  @@words = Word.all

  def self.for(string)
    @string = string
    @@words.select do |word|
      word if word.name.include?(@string)
    end
  end


end
