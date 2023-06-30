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
                var contrato = db.contra.Where(x => x.id_Contrato == id).FirstOrDefault();
                ViewBag.contra = contrato;
            }
            ViewBag.Maquinas = db.Maquinas.Where(x => x.Activo == true).ToList();

            return View();
        }


        public JsonResult guardarContratos(int? id_Contrato, string producto_contrato, string descripcion, string serie, string destino, string comentarios, DateTime? fecha_surtido, string recibio, int? Folio_pedido , string fecha_pedido, string SeriePC)
        {
            if (id_Contrato != null)
            {
                db.sp_editarContrato(id_Contrato, producto_contrato, descripcion, serie, destino, comentarios, fecha_surtido, recibio, Folio_pedido, fecha_pedido, SeriePC);
            }
            else
            {
                db.sp_guardar_contrato(producto_contrato, descripcion, serie, destino, comentarios, fecha_surtido, recibio, Folio_pedido, fecha_pedido, SeriePC, true);

            }
            return Json("");
        }

        public ActionResult Eliminar(int? id_Contrato)
        {
            db.sp_eliminar_contrato(id_Contrato);
            return RedirectToAction("DatosContratos", "Contratos");
        }
    }
}
