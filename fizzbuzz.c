#include <stdio.h>
#include <stdlib.h>
#include <string.h>

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
    if (i%3 == 0){
        return "fizz";
    }
    if (i%5 == 0){
        return "Buzz";
    }
    return NULL;
}

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

