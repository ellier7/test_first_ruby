class Dictionary
def initialize(options = {})
    @options = options
end

def entries
    @options
end

def add(options)
    options.is_a?(String) ? @options.merge!(options => nil) : @options.merge!(options)
end

def keywords
    @options.keys.sort
end

def include?(key)
    @options.has_key?(key)
end

def find(key)
    @options.select { |x,y| x.scan(key).join == key }
end


def printable
  string = ""
  @options.sort.each do |x,y|
    string = string + %Q{[#{x}] "#{y}"\n}
  end
  return string.chomp
end

end 
