using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Singleton
{
    internal class Employee
    {
        private static Employee _instance = null;
        private Employee() { }
        public static Employee Instance
        {
            get
            {
                if (_instance == null)
                {
                    _instance = new Employee();
                }
                return _instance;
            }
        }

        public void display()
        {
            Console.WriteLine("Madhumitha");
        }
    }
}
