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
	}
    if i%3 == 0{
        return "fizz"
	}
    if i%5 == 0{
        return "Buzz"
	}
    return strconv.Itoa(i)
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