using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Palindrome
{
    internal class Program
    {
        public static string Reverse(string s)
        {
            char[] charArray = s.ToCharArray();
            Array.Reverse(charArray);
            return new string(charArray);
        }
        static void Main(string[] args)
        {
            string s;
            Console.Write("Enter string: ");
            s = Console.ReadLine();

            if (s == Reverse(s))
            {
                Console.WriteLine($"{s} is a Palindrome");
            }
            else
            {
                Console.WriteLine($"{s} is not a Palindrome");
            }

            Console.Write("Press any key to close the console app...");
            Console.ReadKey();
        }
    }
}
