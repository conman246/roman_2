#old school roman numerals
#____________________________________

# def to_roman(num) 
# 	roman = "" 
 
# 	if (1000..5000).include?(num) 
# 		roman += ("M" * (num / 1000)) 
# 		num = num % 1000 
# 	end 
 
# 	if (500..899).include?(num) 
# 		roman += ("D" * (num / 500)) 
# 		num = num % 500 
# 	end 

# 	if (100..499).include?(num)
# 		roman += ("C" * (num /100))
# 		num = num % 100
# 	end 

# 	if (50..99).include?(num)
# 		roman += ("L" * (num / 50))
# 		num = num % 50
# 	end

# 	if (10..49).include?(num)
# 		roman += ("X" * (num / 10))
# 		num = num % 10
# 	end

# 	if (5..9).include?(num)
# 		roman += ("V" * (num / 5))
# 		num = num % 5
# 	end

# 	if (1..4).include?(num)
# 		roman += ("I" * (num / 1))
# 		num = num % 1
# 	end
# 	roman 
# end 

# p to_roman(3678) 

=begin if our number is between 1000 and 5000
  add the correct number of M's to our string
  -> add 3 M's to the string
  3678 - 3000
  678
our number is 678

if our number is between 500 and 1000
  add the correct number of D's
  -> add one D
  subtract one D (500)

if our number is between 100 and 500
  add the correct number of C's
if our number is between 50 and 100
  add the correct number of L's
if our number is between 10 and 50
  add the correct number of X's
if our number is between 5 and 10
  add the correct number of V's
if our number is between 1 and 5
  add the correct number of I's

=end 



# __________________________________________________________________

#Arabic Roman Numerals (modern).

ARABIC_ROMAN = {
	1000 => "M",
	900 => "CM",
	500 => "D",
	400 => "CD",
	100 => "C",
	90 => "XC",
	50 => "L",
	40 => "XL",
	10 => "X",
	9 => "IX",
	5 => "V",
	4 => "IV",
	1 => "I",
}

def to_roman(num)
	roman_numerals = ''
 
  ARABIC_ROMAN.each do |arabic, roman|
    roman_numerals << roman * (num / arabic)
    num = num % arabic
  end
  roman_numerals
end



puts "My totally sweet testing script"
puts ""
puts "input | expected | actual"
puts "------|----------|-------"
puts "4     | IV       | #{to_roman(4)}"
puts "9     | IX       | #{to_roman(9)}"
puts "13    | XIII     | #{to_roman(13)}"
puts "1453  | MCDLIII  | #{to_roman(1453)}"
puts "1646  | MDCXLVI  | #{to_roman(1646)}"


