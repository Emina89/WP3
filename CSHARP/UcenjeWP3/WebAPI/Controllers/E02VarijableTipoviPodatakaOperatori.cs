using Microsoft.AspNetCore.Mvc;

namespace WebAPI.Controllers
{
    [ApiController]
    [Route("E02")]
    public class E02VarijableTipoviPodatakaOperatori : ControllerBase
    {
        //Ovdje počinje route
        [HttpGet]
        [Route("zad1")]
        public int Zad1()
            {
            return int.MaxValue;
            }





        //Ovdje završava route

        //Ovdje počinje route
        [HttpGet]
        [Route("zad3")]
        public float Zad3(int a, int b)
        {
            
             return  (a*b) + (a/ (float)b) ;
            
            
        }



        //Ovdje završava route

        //Ovdje počinje route
        [HttpGet]
        [Route("zad4")]
        public bool Zad4( int a, int b)
        {

            return a==b;


        }



        //Ovdje završava route

        //Ovdje počinje route
        [HttpGet]
        [Route("zad5")]
        public string Zad5(string a, string b)
        {

            return a + " " + b;


        }



        //Ovdje završava route








    }

}

