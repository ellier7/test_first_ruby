class Book
  def title=(string)
      little_words = ["and", "the", "an", "a", "in", "of"]
      @title = string.split.each_with_index.map{|x, index| little_words.include?(x) && index > 0 ? x : x.capitalize }.join(" ")
  end
  
 def title
    @title
  end
 
end 
