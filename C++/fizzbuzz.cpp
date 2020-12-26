#include <iostream>
#include <string>

// Alternative to `using namespace std;`
typedef std::string string;

// Function declarations
string divisible(int);

// Logic
string divisible(int i){
    if (i%3 == 0 && i%5 == 0){
        return "fizzBuzz";
    }
    if (i%3 == 0){
        return "fizz";
    }
    if (i%5 == 0){
        return "Buzz";
    }
    return std::to_string(i);
}

// main() is where program execution begins.
int main()
{   
    int maxNum;
    std::cout << "Please enter max number: ";
    std::cin >> maxNum;
    for (int i = 1; i <= maxNum; i++)
    {
        std::cout << divisible(i) << '\n';
    }
}
