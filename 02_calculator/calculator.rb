#calculator build
def add(a,b)
	a + b
end

def subtract(a,b)
	a - b 
end

def sum(a)
	b = 0
	a.each do |i|
		b = i + b
	end
	b
end

def multiply(*a)
  a.inject(1) { |product, number| product * number }
end

def power(a,b)
     a**b
end

def factorial(a)
	answer = 1
    if (a > 1)
        i = 1
		a.times do
			answer = i  * answer
			i = i + 1
		end
	end
	answer
end
		
