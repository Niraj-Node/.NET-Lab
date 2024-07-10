using System;
using Calc;
using System.Text.RegularExpressions;

namespace ConsoleApplication
{
	class Application
	{
		static void Main(string[] args)
		{
            Console.WriteLine("Console Calculator in C#\r");
            Console.WriteLine("------------------------\n");

            string numInput1 = "";
            string numInput2 = "";

            Console.Write("Type a number, and then press Enter: ");
            numInput1 = Console.ReadLine();

            double num1 = 0;
            while (!double.TryParse(numInput1, out num1))
            {
                Console.Write("This is not valid input. Please enter a numeric value: ");
                numInput1 = Console.ReadLine();
            }

            Console.Write("Type another number, and then press Enter: ");
            numInput2 = Console.ReadLine();

            double num2 = 0;
            while (!double.TryParse(numInput2, out num2))
            {
                Console.Write("This is not valid input. Please enter a numeric value: ");
                numInput2 = Console.ReadLine();
            }

            Console.WriteLine("Choose an option from the following list:");
            Console.WriteLine("\ta - Add");
            Console.WriteLine("\ts - Subtract");
            Console.WriteLine("\tm - Multiply");
            Console.WriteLine("\td - Divide");
            Console.Write("Your option? ");

            string op = Console.ReadLine();
            while (op == null || !Regex.IsMatch(op, "[a|s|m|d]"))
            {
                Console.WriteLine("Error: Unrecognized input.");
                op = Console.ReadLine();
            }

            switch (op)
            {
                case "a":
                    Console.WriteLine($"Your result: {Program.Add(num1, num2)}");
                    break;
                case "s":
                    Console.WriteLine($"Your result: {Program.Sub(num1, num2)}");
                    break;
                case "m":
                    Console.WriteLine($"Your result: {Program.Mul(num1, num2)}");
                    break;
                case "d":
                    while (num2 == 0)
                    {
                        Console.WriteLine("Enter a non-zero divisor: ");
                        num2 = Convert.ToInt32(Console.ReadLine());
                    }

                    Console.WriteLine($"Your result: {Program.Div(num1, num2)}");
                    break;
            }

            Console.Write("Press any key to close the Calculator console app...");
            Console.ReadKey();
        }
	}
}