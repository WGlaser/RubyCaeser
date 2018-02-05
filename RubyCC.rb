def getNewIndex(array, str, key)
	oldIndex = array.index(str);
	x = oldIndex+key;
	if(x>=26)
		x= x%26;
	end
	return x;
end

def caeser_cipher(s, k)
	lowerLetters = ('a'..'z').to_a
	upperLetters = ('A'..'Z').to_a
	result = "";
	s.split("").each do |c|
		if(lowerLetters.include?("#{c}"))
			a = getNewIndex(lowerLetters, "#{c}", k)
			codedLetter = lowerLetters[a];
			result =result+codedLetter;
		elsif(upperLetters.include?("#{c}"))
			a = getNewIndex(upperLetters, "#{c}", k)
			codedLetter = upperLetters[a];
			result =result+codedLetter;
		else
			result =result+"#{c}";
		end
	end
	puts result;
end

caeser_cipher("Wade Glaser", 1);

