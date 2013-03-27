# def slowness(wpm,word_count)
# 	puts "wpm = #{wpm}"
# 	dunno = word_count/wpm
# 	dunno = dunno.to_f
# 	puts dunno*60
# 	Time.at(dunno*60).strftime('%M:%S')

# end

def time_quant(wpm,word_count)
	sec = word_count/wpm.to_f*60
	time = Time.at(sec).strftime("%M:%S")
end

puts time_quant 300,450

def min_convert(sec)
	time = Time.at(sec)
	return time.strftime("%M:%S")
end

# puts min_convert(80)

# puts slowness(300,700)

# words = 120
# wpm = 60




