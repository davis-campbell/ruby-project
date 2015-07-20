class Timer
  def initialize
		@seconds = 0
  end

  def seconds(n=0)
		@seconds = n
		@seconds
  end

  def time_string
		hours = (@seconds / 3600).to_i
		minutes = ((@seconds - hours * 3600) / 60).to_i
		seconds = (@seconds - hours * 3600 - minutes * 60).to_i
		times = [hours, minutes, seconds]
		times_strings = []
		times.each do |i|
			i = i.to_s
			if i.length == 1
				i = "0#{i}"
			end
			times_strings.push(i)
		end
		times_strings.join(":")
  end
end
