def add(a, b)
	resultat = a + b
	return resultat
end

def subtract(a, b)
	resultat = a - b
	return resultat
end 

def sum(array)
	resultat = array.sum
	return resultat
end

def multiply(a, b)
	resultat = a * b 
	return resultat
end 

def power(a, b)
	resultat = a ** b
	return resultat
end

def factorial(number)
	if number == 0
		return 1
	else
  return (1..number).inject(:*)
end
end
