#ftoc converts fahrenheit to celcius 
#ctof converts celcius to fahrenheit 

def ftoc(f)
	f = f.to_f
	(f - 32) * 5.0/9.0 
end

def ctof(c)
	c = c.to_f
	(c * 9.0/5.0) + 32
end
	
	