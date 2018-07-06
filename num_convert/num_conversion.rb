def mult(x,y)
	x*y
end
def mod(x,y)
	x%y
end
def div(x,y)
	x/y
end

def num_conv(int)
	num = {
		1000 => " one thousand",
		900 => " nine hundred",
		800 => " eight hundred",
		700 => " seven hundred",
		600 => " six hundred",
		500 => " five hundred",
		400 => " four hundred",
		300 => " three hundred",
		200 => " two hundred",
		100 => " one hundred",
		90 => " ninety",
		80 => " eighty",
		70 => " seventy",
		60 => " sixty",
		50 => " fifty",
		40 => " forty",
		30 => " thirty",
		20 => " twenty",
		19 => " nineteen",
		18 => " eighteen",
		17 => " seventeen",
		16 => " sixteen",
		15 => " fifteen",
		14 => " forteen",
		13 => " thirteen",
		12 => " twelve",
		11 => " eleven",
		10 => " ten",
		9 => " nine",
		8 => " eight",
		7 => " seven",
		6 => " six",
		5 => " five",
		4 => " four",
		3 => " three",
		2 => " two",
		1 => " one"
	}
	str = ""
	num.each do |num, value|
		divide = div(int,num)
		str << mult(value,divide)
		modulo = mod(int,num)
		int = modulo
	end
	return str.split(' ').map {|w| w.capitalize }.join(' ')
end
p num_conv(320)