/*
Run with Java IDE
*/

import java.util.Scanner;

public class FizzBuzz {
    // Logic
    private static String divisible(int i){
        if (i%3 == 0 && i%5 == 0) {
            return "fizzBuzz";
        } else if (i%3 == 0){
            return "fizz";
        } else if (i%5 == 0){
            return "Buzz";
        } else {
            return String.valueOf(i);
        }
    }

    // Main
    public static void main(String[] args){
        Scanner scan = new Scanner(System.in);
        System.out.print("Please enter max number: ");
        int maxNum = scan.nextInt();
        // Loop
        for (int i = 1; i <= maxNum; i++){
            System.out.println(divisible(i));
        }
    }
}