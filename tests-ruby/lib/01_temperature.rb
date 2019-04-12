def ftoc(fahrenheit)
	resultat = (fahrenheit.to_f - 32) * 5/9
	return resultat
	#(32 °F − 32) × 5/9 = 0 °C
end

def ctof(celsius)
	resultat = (celsius.to_f * 9/5) + 32
	return resultat
	#(0 °C × 9/5) + 32 = 32 °F
end 
