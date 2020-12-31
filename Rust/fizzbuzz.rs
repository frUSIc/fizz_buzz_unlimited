/*
Compile with rustc fizzbuzz.rs
Run with ./fizzbuzz
*/

use std::io::Write;

// Logic
fn divisible(i:u32) -> String {
    if i%3 == 0 && i%5 == 0 {
        return "fizzBuzz".to_string();
    } else if i%3 == 0 {
        return "fizz".to_string();
    } else if i%5 == 0 {
        return "Buzz".to_string();
    } else {
        return i.to_string();
    }
}

// Main
fn main() {
    let mut input = String::new();
    print!("Please enter max number: ");
    std::io::stdout().flush().unwrap();
    std::io::stdin().read_line(&mut input).unwrap();
    let max_num = input.trim_end().parse::<u32>().unwrap();
    // Loop
    for i in 1..max_num+1 {
        println!("{}", divisible(i));
    }
}
