#!/usr/bin/ruby -w

=begin
Run with ruby fizzbuzz.rb
=end

class FizzBuzz
    
    # Logic
	def divisible(i)
        if i%3 == 0 and i%5 == 0 
            return "fizzBuzz"
        elsif i%3 == 0
            return "fizz"
        elsif i%5 == 0
            return "Buzz"
        else
            return i
        end
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