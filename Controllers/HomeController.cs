using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using TP6_qatar.Models;
using System.IO;
using Microsoft.AspNetCore.Hosting;

namespace TP6_qatar.Controllers;

public class HomeController : Controller
{
      private IWebHostEnvironment Environment;

    private readonly ILogger<HomeController> _logger;

    public HomeController(IWebHostEnvironment environment)
    {
        Environment=environment;
    }


    public IActionResult Index()
    {
        ViewBag.listaEquipos = BD.ListarEquipos();
        return View();
    }

    public IActionResult DetalleEquipo(int IdEquipo)
    {
        ViewBag.DetalleEquipo = BD.VerInfoEquipo(IdEquipo);
        ViewBag.DetalleJugador = BD.ListarJugadores(IdEquipo);
        return View();
    }

    public IActionResult DetalleJugador(int IdJugador)
    {
        ViewBag.DetalleJugador = BD.VerInfoJugador(IdJugador);
        ViewBag.DetalleEquipo = BD.VerInfoEquipo( ViewBag.DetalleJugador.idEquipo);
        return View("DetalleJugador");
    }

    public IActionResult AgregarJugador(int IdEquipo)
    {
        ViewBag.IdEquipo = IdEquipo;
        return View("AgregarJugador");
    }

 

    public IActionResult EliminarJugador(int IdJugador, int IdEquipo)
    {
        BD.EliminarJugador(IdJugador);
        return View("DetalleEquipo");
    }
    public IActionResult Privacy()
    {
        return View();
    }




    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }


       [HttpPost]
    public IActionResult GuardarJugador(Jugador DetalleJugador, IFormFile Foto)
    {
        
        if(Foto.Length>0)
        {
            string wwwRootLocal= this.Environment.ContentRootPath + @"\wwwroot\" + Foto.FileName;
            using(var stream=System.IO.File.Create(wwwRootLocal))
            {
                Foto.CopyToAsync(stream);
            }
        }
        Jugador Jug= new Jugador(DetalleJugador.IdJugador,DetalleJugador.idEquipo, DetalleJugador.Nombre, DetalleJugador.FechaDeNacimiento,(""+ Foto.FileName), DetalleJugador.EquipoActual);
        BD.GuardarJugador(Jug);
        return RedirectToAction(Url.Action("DetalleEquipo", "Home", new {IdEquipo = DetalleJugador.idEquipo}));

     }
}
