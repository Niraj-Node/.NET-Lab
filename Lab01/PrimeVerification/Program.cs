using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PrimeVerification
{
    internal class Program
    {
        static bool isPrime(int n)
        {
            if(n == 1) { return false; }
            if(n == 2) { return true; }

            for(int i = 2; i < Math.Sqrt(n); i++)
            {
                if (n % i == 0) { return false; }
            }
            return true;
        }
        static void Main(string[] args)
        {
            string numInput = "";

            Console.Write("Type a number, and then press Enter: ");
            numInput = Console.ReadLine();

            int num = 1;
            while (!int.TryParse(numInput, out num) || num <= 0)
            {
                Console.Write("This is not valid input. Please enter a numeric value: ");
                numInput = Console.ReadLine();
            }

            if (isPrime(num))
            {
                Console.WriteLine($"{num} is a Prime Number");
            }
            else
            {
                Console.WriteLine($"{num} is not a Prime Number");
            }

            Console.Write("Press any key to close the console app...");
            Console.ReadKey();
        }
    }
}
