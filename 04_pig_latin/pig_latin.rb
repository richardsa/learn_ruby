def translate(input)
	vowels = ['a', 'e', 'i', 'o', 'u']
    qu = 'qu'
	ay = 'ay'
	answer = []
	input = input.split(" ")
    x = 0
	input.each do |i|
		#catch qu at beginning
		if (i[0..1] == qu )
			answer[x] = i[2..-1] + i[0..1] + ay 
		#catch qu at 1 and 2
		elsif (i[1..2] == qu)
			answer[x] = i[3..-1] + i[0..2] + ay
		#catch vowel as first letter
		elsif (vowels.include? i[0..0])
		    answer[x] = i + "ay"
		#catch vowel as second letter
		elsif (vowels.include? i[1..1])
			answer[x] = i[1..-1] + i[0,1] + ay 
		#catch vowel as third letter
		elsif (vowels.include? i[2..2])
			answer[x] = i[2..-1] + i[0..1] + ay 
		
		else
			answer[x] = i[3..-1] + i[0..2] + ay
		
		end
		x += 1
	end

	# returns answer if only 1 word
	if (input.length == 1)
		answer = answer[0]
	# returns answer for multiple words
	else 
		answer = answer.join(" ")
		
	end
end