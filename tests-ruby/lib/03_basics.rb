def who_is_bigger(a, b, c)
	values = [a, b, c]
	keys = ["a", "b", "c"]
	if a == nil || b == nil || c == nil
	 "nil detected"
	else
	array_bigger = keys.zip(values).to_h
	#puts array_bigger.keys.max
	resulat = array_bigger.sort_by { |k, v| -v }.first[0]
	return "#{resulat} is bigger"
end
end 

def reverse_upcase_noLTA(str)
	return str.reverse.upcase.delete("LTA").to_s
end

def array_42(array)
	return array.include?(42)
end

def magic_array(array)
	  array.flatten.delete_if { |i| i%3 == 0 }.map { |i| i * 2 }.uniq.sort
end
