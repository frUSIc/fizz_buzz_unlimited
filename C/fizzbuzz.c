/*
Compile with gcc fizzbuzz.c -o fizzbuzz
Run with ./fizzbuzz
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Function declarations
int getNum(void);
char* divisible(int);

// Main
void main(void){
    int maxNum = getNum();
    char* string;
    // Loop
    for (int i = 1; i <= maxNum; i++){
        string = divisible(i);
        if (string != NULL){
            printf("%s\n", string);
        } else {
            printf("%d\n", i);
        }
    }
}

// Gets the max num from reading stdin
int getNum(void){
    char buffer[10];
    printf("Please enter max number: ");
    scanf("%9s", buffer);
    return atoi(buffer);
}

// Logic
char* divisible(int i){
    if (i%3 == 0 && i%5 == 0){
        return "fizzBuzz";
    }
    else if (i%3 == 0){
        return "fizz";
    }
    else if (i%5 == 0){
        return "Buzz";
    } else {
        return NULL;
    }
}