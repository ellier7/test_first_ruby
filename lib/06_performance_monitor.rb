def measure counter = 1  
     total = 0  
     counter.times do  
     start = Time.now  

yield  

    endTime = Time.now  
    total += endTime - start 
end  
    return total / counter 
end  
