class Book
def title=(input)
	input = input.split(" ")
	answer = []
	skip = %w(the a and an in of)
	x = 0
	input.each do |i|
		if(x == 0)
			answer[x] = i.capitalize
			x += 1
		elsif (skip.include? i)
			answer[x] = i
			x += 1
		else
			answer[x] = i.capitalize
			x += 1
		end
	end
	@title = answer.join(" ")
end
def title
 @title
end

end