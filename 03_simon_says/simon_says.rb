def echo(input)
	input
end

def shout(input)
	input.upcase
end


def repeat(input, n = 2)
   ( "#{input} " * n).strip
end

def start_of_word(input, n)
	if (n > 1)
		
		input[0,n]
	else
		input[0]
	end
end

def first_word(input)
	input = input.split(" ")
	input[0]
end

def titleize(input)
	input = input.split(" ")
	answer = []
	i = 0
	if (input.length > 1)
		input.each do |x| 
			if ((x.upcase == "THE" || x.upcase == "OVER" || x.upcase == "AND") && i != 0)
				x = x.downcase
				answer[i] = x
				i += 1
			else
				x = x.capitalize 
				answer[i] = x
				i  += 1
			end
		end
	
		answer = answer.join(" ")

	else
		#answer = input.to_s.strip.capitalize
		answer = input[0]
		answer = answer.capitalize
	end

	return answer
	
end