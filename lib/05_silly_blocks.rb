def reverser
   yield.split.map { |word| word.reverse}.join(" ")
end


def adder(num = 1)
  yield + num
end


def repeater(n=1, &block)
  n.times(&block)
end
