def echo(str)
	return str 
end

def shout(str)
	return str.upcase
end

def repeat(str, n=2)
	return [str] * n * ' '
end

def start_of_word(str, n)
	str.slice(0, n)
end

def first_word(str)
	str.split.first
end 

def titleize(str)
  array = []
  str.split.each do |item|
    if item != "and" && item != "or" && item != "to" && item != "the" && item != "a" && item != "but"
    	array << item.capitalize!
    else
      array << item
    end
  end
  array.first.capitalize!
  return array.join(" ")
 end

