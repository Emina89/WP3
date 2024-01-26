using Microsoft.AspNetCore.Mvc;

namespace WebAPI.Controllers
{
    [ApiController]
    [Route ("E01") ]
    public class E01UlazIzlaz:ControllerBase
    {
        [HttpGet ]
        [Route ("Hello")]
public string HelloWorld(string Ime)
        {
        return "Dobro večer " + Ime ;
        }


    }
}
