class Timer
attr_accessor :seconds

def initialize
	@seconds = 0
end

def time_string
	hours = seconds/3600
	minutes = (seconds%3600)
	seconds = minutes%60
	sprintf("%02d:%02d:%02d", hours,minutes/60, seconds)
end

end