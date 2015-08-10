# See Problem Description for problem details
def DigitalRoot(n)
	return (n - 1) % 9 + 1
end

def DigitalRoot0(n)
	if n.to_s.length > 1
		result = 0
		n.to_s.split(//).each do |i|
			result += i.to_i
		end
		return DigitalRoot0(result)
	end
	return n
end

def DigitalRoot1(n)
	if n.to_s.length > 1
		return DigitalRoot1(n.to_s.split(//).inject(0){|sum, i| sum + i.to_i })
	end
	return n
end

def DigitalRoot2(n)
	if n.to_s.length > 1
		return DigitalRoot2(n.to_s.split(//).map(&:to_i).reduce(:+))
	end
	return n
end

puts DigitalRoot2(888)