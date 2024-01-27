using Microsoft.AspNetCore.Mvc;

namespace WebAPI.Controllers
{
    [ApiController]
    [Route ("E01") ]
    public class E01UlazIzlaz:ControllerBase
    {
        //Ovdje počinje route
        [HttpGet ]
        [Route ("hello")]
public string HelloWorld(string Ime)
        {
        return "Dobro večer " + Ime ;
        }
        //Ovdje završava route





        //Ovdje počinje route
        [HttpGet]
        [Route("zad1")]
        public int Zad1(int prvi, int drugi)
        {
            return prvi + drugi ;

        }

        //Ovdje završava route



    }

}

