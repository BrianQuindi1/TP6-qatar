using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using TP6_qatar.Models;

namespace TP6_qatar.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;

    public HomeController(ILogger<HomeController> logger)
    {
        _logger = logger;
    }

    public IActionResult Index()
    {
        ViewBag.listaEquipos = BD.ListarEquipos();
        return View();
    }

    public IActionResult VerDetalleEquipo(int IdEquipo)
    {
        ViewBag.Equipo = BD.VerInfoEquipo(IdEquipo);
        ViewBag.Equipo = BD.ListarJugadores(IdEquipo);
        return View("DetalleEquipo");
    }

    public IActionResult VerDetalleJugador(int IdJugador)
    {
        ViewBag.Jugador = BD.VerInfoJugador(IdJugador);
        return View("DetalleJugador");
    }

    public IActionResult AgregarJugador(int IdEquipo)
    {
        ViewBag.IdEquipo = IdEquipo;
        return View("AgregarJugador");
    }

    [HttpPost]
    public IActionResult GuardarJugador(int idJugador, int idEquipo, string nombre, DateTime fechaDeNacimiento, string foto, string equipoActual)
    {
        Jugador jug = new Jugador(idJugador, idEquipo, nombre, fechaDeNacimiento, foto, equipoActual);
        BD.AgregarJugador(jug);
        
        //BD.AgregarJugador(NuevoJugador);
        return View("DetalleEquipo");
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
}
