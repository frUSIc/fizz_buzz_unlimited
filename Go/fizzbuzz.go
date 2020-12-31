/*
Run with go run fizzbuzz.go
Compile with go build -o fizzbuzz
Run with ./fizzbuzz
*/

package main

import (
	"fmt"
	"os"
	"bufio"
	"strconv"
)

// Logic
func divisible(i int) string{
	if i%3 == 0 && i%5 == 0{
        return "fizzBuzz"
	} else if i%3 == 0{
        return "fizz"
	} else if i%5 == 0{
        return "Buzz"
	} else {
    	return strconv.Itoa(i)
	}
}

// Main
func main() {
	scanner := bufio.NewScanner(os.Stdin)
	fmt.Print("Please enter max number: ")
	scanner.Scan()
	maxNum, _ := strconv.Atoi(scanner.Text())
	// Loop
	for i := 1; i <= maxNum; i++ {
		fmt.Println(divisible(i))
	}
}