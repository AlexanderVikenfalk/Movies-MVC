using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace MvcMovie.Controllers
{
    public class ExtrasController : Controller
    {
        public IActionResult Hey(string name)
        {
            ViewData["Message"] = "Hello " + name;
            return View();
        }

        public IActionResult Numbers(int from, int to)
        {
            ViewData["From"] = from;
            ViewData["To"] = to;

            return View();
        }

        public IActionResult Partners()
        {
            return View();
        }
    }
}