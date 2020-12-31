/*
Run via Visual Studio 2019
*/

using System;

namespace FizzBuzz
{
    class FizzBuzz
    {
        private static string Divisible(int i)
        {
            if (i % 3 == 0 && i % 5 == 0)
            {
                return "fizzBuzz";
            }
            else if (i % 3 == 0)
            {
                return "fizz";
            }
            else if (i % 5 == 0)
            {
                return "Buzz";
            }
            else
            {
                return i.ToString();
            }
        }

        static void Main()
        {
            Console.Write("Please enter max number: ");
            int maxNum = Convert.ToInt32(Console.ReadLine());
            for (int i = 1; i <= maxNum; i++)
            {
                Console.WriteLine(Divisible(i));
            }
        }
    }
}
