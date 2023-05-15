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
        InventoryEntities1 db = new InventoryEntities1();

        public ActionResult DatosTiendas()
        {
            var Datos = db.Tiendas.Where(x => x.Activo == true).ToList();
            return View(Datos);  
        }

        public ActionResult ForumularioTiendas() 
        {
            var id_tienda = Request.Params["ID_Tienda"];
            if(id_tienda != null)
            {
                int id = int.Parse(id_tienda);
                var tiendas = db.Tiendas.Where(x => x.Activo == true).ToList();
                ViewBag.Tiendas=tiendas;
            }
            ViewBag.Maquinas = db.Maquinas.Where(x => x.Activo == true).ToList();
            return View();
        
        }

        public JsonResult guardarTienda(int? ID_Tienda, string DeptoTienda, int NoTienda, string NombreTienda,string DireccionTienda, string seriePC)
        {
            if (ID_Tienda != null)
            {
                db.sp_editarTiendas(ID_Tienda, DeptoTienda, NoTienda, NombreTienda, DireccionTienda);
            }
            else
                db.sp_agregarTiendas(DeptoTienda, NoTienda, NombreTienda, DireccionTienda, seriePC, true);

            return Json("");
        }
    }
}
