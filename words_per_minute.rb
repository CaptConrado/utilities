# The average adult reads prose text at 250 to 300 words per minute. While proofreading materials, people are able to read at 200 wpm on paper, and 180 wpm on a monitor

# file = File.read('elq1js.txt')
file = File.read('js.txt')
# file = %q[hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude hello dude]

total_words = file.split.count.to_i
puts "There are #{total_words} words in the article"

avg_wpm_prose = 300
# avg_wpm_proof = 200
avg_wpm_scren = 180
your_avg_wpm = 0

def time_quant(wpm,word_count)
	sec = word_count/wpm.to_f*60
	time = Time.at(sec).strftime("%M:%S")
end

avg_time_taken = time_quant avg_wpm_prose,total_words
avg_time_taken_screen = time_quant avg_wpm_scren,total_words
puts "It should take you #{avg_time_taken} for prose and #{avg_time_taken_screen} for a monitor"

puts "Please input the time it took you to read the text."
print "Minutes: ";minutes = gets.chomp()
print "Seconds: ";seconds = gets.chomp()



def wpm_calc(min,sec,word_count)
	word_count = word_count.to_f
	min = min.to_i
	sec = sec.to_i 
	min_sec = min*60
	total_seconds = sec + min_sec
	wpm = word_count/total_seconds*60
	return wpm.to_i
end

your_avg_wpm = wpm_calc(minutes,seconds,total_words)

def compare(current_wpm,nat_wpm)
	you = current_wpm.to_f
	them = nat_wpm.to_f
	k = you/them*100
	k = k.to_i
	return k
end


prose_per = compare(your_avg_wpm,avg_wpm_prose)
# proof_per = compare(your_avg_wpm,avg_wpm_proof)
scren_per = compare(your_avg_wpm,avg_wpm_scren)

perc = [[prose_per,'reading Prose'],[scren_per,'reading of a Monitor']]

puts "Average wpm speed is Prose:#{avg_wpm_prose} and Screen:#{avg_wpm_scren}"
puts "You have a current WPM average of #{your_avg_wpm}"

perc.each do |x|
	puts "If you are #{x.last} you are reading at #{x.first}% of National average."
end


