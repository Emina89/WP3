using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UcenjeCS
{
    internal class Z02
    {

        public static void Izvedi()
        {
            Console.WriteLine("Unesi prvi broj");
            int Broj1=int.Parse(Console.ReadLine());
            Console.WriteLine("Unesi drugi broj");
            int Broj2 = int.Parse(Console.ReadLine());

            if (Broj1 > Broj2)
            {
                Console.WriteLine(Broj1);

                
            }
            else
            {
                Console.WriteLine(Broj2);
            }

        }



        }
}
