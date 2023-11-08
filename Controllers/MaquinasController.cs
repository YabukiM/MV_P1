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
        InventoryEntities4 db = new InventoryEntities4();

        public ActionResult DatosMaquinas()
        {
            var Datos = db.Maquinas.Where(x => x.Activo == true).ToList();
            return View(Datos);
        }

        public ActionResult FormularioMaquinas()
        {
            var Conteo = Request.Params["Conteo"];
            if (Conteo != null)
            {
                int id = int.Parse(Conteo);
                var maquinas = db.Maquinas.Where(x => x.Conteo == id).FirstOrDefault();
                ViewBag.Maquinas = maquinas;
            }
            return View();
        }

        public JsonResult guardarMaquina( int? Conteo, string Contratos,string Producto, string Descripcion, string SeriePC, string Destino, string Asignada, string Estatuss, string NombreUsuarioPuesto, string NoCartaCustodia)
        {
            if (Conteo != null)
            {
                db.sp_editarMaquinas(Conteo, Contratos, Producto, Descripcion, SeriePC, Destino, Asignada, Estatuss, NombreUsuarioPuesto, NoCartaCustodia);


                            }
            else
            {
                db.sp_agregarMaquinas(Contratos, Producto, Descripcion, SeriePC, Destino, Asignada, Estatuss, NombreUsuarioPuesto, NoCartaCustodia, true);
            }
            return Json("");
        }

        public ActionResult Eliminar(int? Conteo)
        {
            db.sp_eliminar_maquinas(Conteo);
            return RedirectToAction("DatosMaquinas", "Maquinas");
        }

    }
}
