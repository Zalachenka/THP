def is_multiple_of_3_or_5?(current_number)

  if (current_number%3) == 0 || (current_number%5) == 0
    return true
  else
    return false
  end
end
      
def sum_of_3_or_5_multiples(final_number)

  final_sum = 0 #cette variable est la somme finale qui sera retournée. Ici on l'initialise à zéro

 while current_number < 1000

      current_number += 1

   if is_multiple_of_3_or_5?(current_number) true

    return current_number += final_sum

  else 

    return false

     end

  end #Ici, positionne la fin de la boucle

    return final_sum #on retourne la variable qui contient la somme du tout
  end
   #on retourne la variable qui contient la somme du tout
end
