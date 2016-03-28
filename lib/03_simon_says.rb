def echo(string)
    return string
end
  
  
def shout(string)
    return string.upcase
end


def repeat(string, num = 2)
   repeating = ''
   num.times do
       repeating += "#{string} "
 end
 return repeating.strip
end


def start_of_word(string, num)
    return string[0..num-1]
end


def first_word(string)
    split_string = string.split()
    return split_string[0]
end


def titleize(string)
      little_words = ["and", "the", "over"]
      string.split.each_with_index.map{|x, index| little_words.include?(x) && index > 0 ? x : x.capitalize }.join(" ")
end

