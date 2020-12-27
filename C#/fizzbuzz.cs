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
            if (i % 3 == 0)
            {
                return "fizz";
            }
            if (i % 5 == 0)
            {
                return "Buzz";
            }
            return i.ToString();
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
