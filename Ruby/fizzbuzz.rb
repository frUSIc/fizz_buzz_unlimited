#!/usr/bin/ruby -w

class FizzBuzz
    
    # Logic
	def divisible(i)
        if i%3 == 0 and i%5 == 0 
            return "fizzBuzz"
        end
        if i%3 == 0
            return "fizz"
        end
        if i%5 == 0
            return "Buzz"
        end
        return i
        end
    
    def fizzbuzz
        print "Please enter max number: "
        $stdout.flush
        maxNum = gets.to_i
        # Loop
        for i in 1..maxNum
            puts "#{divisible(i)}"
        end
    end
	
end

# Main
main = FizzBuzz.new
main.fizzbuzz