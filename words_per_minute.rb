# The average adult reads prose text at 250 to 300 words per minute. While proofreading materials, people are able to read at 200 wpm on paper, and 180 wpm on a monitor


# file = File.read('mooc.txt')

file = %q["Whatever you undertake, act with prudence and consider the consequences" Anon
No matter how comfortable a schedule looks at the beginning of an iteration, you can't avoid being under pressure some of the time. If you find yourself having to choose between "doing it right" and "doing it quick" it is often appealing to "do it quick" on the understanding that you'll come back and fix it later. When you make this promise to yourself, your team, and your customer, you mean it. But all too often the next iteration brings new problems and you become focused on them. This sort of deferred work is known as technical debt and it is not your friend. Specifically, Martin Fowler calls this deliberate technical debt in his taxonomy of technical debt, which should not be confused with inadvertent technical debt.
Technical debt is like a loan: You benefit from it in the short-term, but you have to pay interest on it until it is fully paid off. Shortcuts in the code make it harder to add features or refactor your code. They are breeding grounds for defects and brittle test cases. The longer you leave it, the worse it gets. By the time you get around to undertaking the original fix there may be a whole stack of not-quite-right design choices layered on top of the original problem making the code much harder to refactor and correct. In fact, it is often only when things have got so bad that you must fix it, that you actually do go back to fix it. And by then it is often so hard to fix that you really can't afford the time or the risk.
There are times when you must incur technical debt to meet a deadline or implement a thin slice of a feature. Try not to be in this position, but if the situation absolutely demands it, then go ahead. But (and this is a big BUT) you must track technical debt and pay it back quickly or things go rapidly downhill. As soon as you make the decision to compromise, write a task card or log it in your issue tracking system to ensure that it does not get forgotten.
If you schedule repayment of the debt in the next iteration, the cost will be minimal. Leaving the debt unpaid will accrue interest and that interest should be tracked to make the cost visible. This will emphasize the effect on business value of the project's technical debt and enables appropriate prioritization of the repayment. The choice of how to calculate and track the interest will depend on the particular project, but track it you must.
Pay off technical debt as soon as possible. It would be imprudent to do otherwise.]

total_words = file.split.count.to_i
puts "There are #{total_words} in the article"
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


