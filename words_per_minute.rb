# The average adult reads prose text at 250 to 300 words per minute. While proofreading materials, people are able to read at 200 wpm on paper, and 180 wpm on a monitor


file = File.read('mooc.txt')
total_words = file.split.count.to_i
avg_wpm = 300
your_avg_wpm = 0

print "Minutes: ";minutes = gets.chomp()
print "Seconds: ";seconds = gets.chomp()



def wpm_calc(min,sec,word_count)
	word_count=word_count.to_f;min=min.to_i;sec=sec.to_i;min_sec=min*60
	total_seconds = sec + min_sec
	wpm = word_count/total_seconds*60
	return wpm.to_i
end

your_avg_wpm = wpm_calc(minutes,seconds,total_words)

def compare(your_avg_wpm,avg_wpm)
	you = your_avg_wpm.to_f
	them = avg_wpm.to_f

	k = you/them
	k = k*100
	k = k.to_i
	return k
end

your_perc = compare(your_avg_wpm,avg_wpm)


puts "Your average words per minute should be #{avg_wpm}"
puts "You have a current WPM average of #{your_avg_wpm}"
puts "This is #{your_perc} of the nat average"


