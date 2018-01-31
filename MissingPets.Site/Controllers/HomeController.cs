using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using MissingPets.Site.Models;

namespace MissingPets.Site.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            // TODO: Figure out how to connect to Neo4J
            //MissingPets.Data.Graph.GraphDriver driver = new Data.Graph.GraphDriver("localhost://7687", "", "");
            return View();
        }

        public IActionResult About()
        {
            ViewData["Message"] = "Your application description page.";

            return View();
        }

        public IActionResult Contact()
        {
            ViewData["Message"] = "Your contact page.";

            return View();
        }

        public IActionResult Services()
        {
            return View();
        }

        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
