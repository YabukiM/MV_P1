using MV_P1.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MV_P1.Controllers
{
    public class MaquinasController : Controller
    {
        InventoryEntities1 db = new InventoryEntities1();

        public ActionResult DatosMaquinas()
        {
            var Datos = db.Maquinas.Where(x => x.Activo == true).ToList();
            return View(Datos);
        }

        public ActionResult FormularioMaquinas()
        {
            var seriepc = Request.Params["SeriePCSeriePC"];
            if (seriepc != null)
            {
                int id = int.Parse(seriepc);
                var maquinas = db.Maquinas.Where(x => x.Activo == true).ToList();
                ViewBag.Maquinas = maquinas;
            }
            return View();
        }



    }
}
