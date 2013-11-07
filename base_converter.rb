#method to convert numeral of base-n to numeral of base-m. Written in Ruby (duh)

$digits=Array.new
def base_convertor(i, n, m)
	#first we convert numeral to base-10
	if n!=10 or m==10
		l=0
		i.to_s.split("").reverse.each {|j| l+=j.to_i*n**(i.to_s.split("").reverse.index(j))}
		i=l
		n=10
		if m==10
			return i
		end
	end
	if i.to_i/m==0
		$digits.unshift(i)
		digits=$digits
		$digits=[]
		return "Your number in base-#{m} is: #{digits.join.to_i}"
	end
	if i.to_i/m!=0
		$digits.unshift(i.to_i%m)
		base_convertor(i.to_i/m, n, m)
	end
end
