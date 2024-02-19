using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UcenjeCS
{
    internal class Ciklicna
    {
        public static void Izvedi()
        {
            Console.WriteLine("Unesite broj redova:");
            int red = int.Parse(Console.ReadLine());

            Console.WriteLine("Unesite broj stupaca:");
            int stupac = int.Parse(Console.ReadLine());



            Console.WriteLine("            Ciklična Tablica          ");
            Console.WriteLine("--------------------------------------");

            int[,] tablica = new int[red, stupac];

            int brojac = 1;
            int maxBroj = red * stupac;

            int GgR = red - 1;
            int GgS = stupac - 1;
            int DgR = 0;
            int DgS = 0;

            while (brojac <= maxBroj)
            {
                for (int i = GgS; i >= DgS; i--)
                {
                    tablica[GgR, i] = brojac++;
                }

                if (brojac > maxBroj) { break; }

                GgR--;


                for (int i = GgR; i >= DgR; i--)
                {
                    tablica[i, DgS] = brojac++;
                }

                if (brojac > maxBroj) { break; }

                DgS++;


                for (int i = DgS; i <= GgS; i++)
                {
                    tablica[DgR, i] = brojac++;
                }

                if (brojac > maxBroj) { break; }

                DgR++;


                for (int i = DgR; i <= GgR; i++)
                {
                    tablica[i, GgS] = brojac++;
                }
                GgS--;
            }

            for (int i = 0; i < red; i++)
            {
                for (int j = 0; j < stupac; j++)
                {
                    Console.Write(tablica[i, j] + "\t");
                }
                Console.WriteLine();
                Console.WriteLine("--------------------------------------");
            }
        }
    }
}