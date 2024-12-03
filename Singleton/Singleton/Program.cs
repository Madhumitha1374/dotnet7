using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Singleton
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Employee emp1 = Employee.Instance;
            emp1.display();
            Employee emp2 = Employee.Instance;
            if(emp1 == emp2)
            {
                Console.WriteLine("same instance");
            }
            else
            {
                Console.WriteLine("not same");
            }

            Console.ReadLine(); 
        }
    }
}
