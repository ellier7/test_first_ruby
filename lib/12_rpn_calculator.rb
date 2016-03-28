class RPNCalculator
  # TODO: your code goes here!
  attr_accessor :numbers

  def initialize
    @num= []
  end  
  
def errorMessage
    begin
      raise Exception.new("calculator is empty")
    end
  end
  
def push(*num)
  @num.push(*num) 
end

def plus
  if (@num.length > 1)
      @num.push(@num.pop(2).reduce(:+))
  else
      errorMessage
  end
  end
  
  def minus
  if (@num.length > 1)
      @num.push(@num.pop(2).reduce(:-))
  else
      errorMessage
  end
  end


 def divide
   if (@num.length > 1)
       @num.push(@num.pop(2).inject{|x,y| x.to_f / y})
   else
       errorMessage
   end
  end

  def times
    if (@num.length > 1)
        @num.push(@num.pop(2).reduce(:*) )
    else
        errorMessage
    end
  end
   
  
def value
    @value = @num[-1]
  end

end 
