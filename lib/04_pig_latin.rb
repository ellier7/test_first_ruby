def translate(str)
    arr = []
    words = str.split
    words.each do |word|
    
		if (word[0] == "a") || (word[0] == "e") || (word[0] == "i") || (word[0] == "o") || (word[0] == "u")
		    word << ("ay")
		elsif word.include? "qu"
			arr = word.partition(/qu/)	

			if (arr[0] != 'qu')
				word.replace(arr[2] << (arr[0] + arr[1] + "ay"))
			else
				word.replace(arr[2] << (arr[1] + "ay"))
			end
		else 
			arr = word.partition(/[aeiou]/)
			word.replace(arr[1] << (arr[2] + arr[0] + "ay"))
		end
	end

	words.join(' ')
end
