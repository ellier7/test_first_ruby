class Array
    
    def sum
        sum = 0
        self.each{|num| sum += num}
   return sum
  end
  
  
 def square
    self.map {|num| num ** 2}
  end

 def square!
    self.map! {|num| num ** 2}
  end


end 
