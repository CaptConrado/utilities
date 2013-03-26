# The average adult reads prose text at 250 to 300 words per minute. While proofreading materials, people are able to read at 200 wpm on paper, and 180 wpm on a monitor


file = File.read('mooc.txt')
total_words = file.split.count.to_i
avg_wpm_prose = 300
avg_wpm_proof = 200
avg_wpm_scren = 180
your_avg_wpm = 0

puts "Please input the time it took you to read the text."
print "Minutes: ";minutes = gets.chomp()
print "Seconds: ";seconds = gets.chomp()



def wpm_calc(min,sec,word_count)
	word_count=word_count.to_f;min=min.to_i;sec=sec.to_i;min_sec=min*60
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
proof_per = compare(your_avg_wpm,avg_wpm_proof)
scren_per = compare(your_avg_wpm,avg_wpm_scren)

perc = [[prose_per,'reading Prose'],[proof_per,'Proof Reading'],[scren_per,'reading of a Monitor']]

puts "Average wpm speed is Prose:#{avg_wpm_prose} Proof Reading:#{avg_wpm_proof} and Screen:#{avg_wpm_scren}"
puts "You have a current WPM average of #{your_avg_wpm}"

perc.each do |x|
	puts "If you are #{x.last} you are reading at #{x.first}% of National average."
end

# if your_avg_wpm 


