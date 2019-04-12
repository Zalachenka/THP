def hello
puts "Hello ! What's your name ?"
username = gets.chomp
end

def greet(name)
puts "Hello #{username}"
end

hello(greet)