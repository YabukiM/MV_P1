using MV_P1.Models;
using System;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MV_P1.Controllers
{
    public class ContratosController : Controller
    {

        InventoryEntities3 db = new InventoryEntities3();

        public ActionResult DatosContratos()
        {
            var Datos = db.contra.Where(x => x.activo == true).ToList();
            return View(Datos);
        }

        public ActionResult FormularioContratos()
        {
            var id_Contrato = Request.Params["id_Contrato"];
            if (id_Contrato != null)
            {
                int id = int.Parse(id_Contrato);
                var maquinas = db.contra.Where(x => x.id_Contrato == id).FirstOrDefault();
                ViewBag.Maquinas = maquinas;
            }
            ViewBag.Maquinas = db.Maquinas.Where(x => x.Activo == true).ToList();

            return View();
        }


        public JsonResult guardarContratos(int? id_Contrato, string producto_contrato, string descripcion, string serie, string destino, string comentarios, DateTime? fecha_surtido, string recibio, int Folio_pedido , string fecha_pedido, string SeriePC)
        {
            if (ID_Tienda != null)
            {
                db.sp_editarTiendas(ID_Tienda, DeptoTienda, NoTienda, NombreTienda, DireccionTienda, seriePC);
            }
            else
            {
                db.sp_agregarTiendas(DeptoTienda, NoTienda, NombreTienda, DireccionTienda, seriePC, true);

            }
            return Json("");
        }

    }
}
