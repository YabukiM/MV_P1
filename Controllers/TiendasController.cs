using MV_P1.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MV_P1.Controllers
{
    public class TiendasController : Controller
    {
        InventoryEntities db = new InventoryEntities();

        public ActionResult DatosTiendas()
        {
            var Datos = db.Tiendas.Where(x => x.Activo == true).ToList();
            ViewBag.Departamentos = db.Tiendas.Where(x => x.Activo == true).ToList();
            return View(Datos);  
        }

    }
}
