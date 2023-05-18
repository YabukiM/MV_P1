using MV_P1.Models;
using System;
using System.Linq;
using System.Web;
using System.Web.Mvc;


namespace MV_P1.Controllers
{
    public class EmpleadoController : Controller
    {
        
        InventoryEntities1 db = new InventoryEntities1 ();

        public ActionResult DatosEmpleados()
        {
            var Datos = db.empleado.Where(x => x.Activo == true).ToList();
            return View(Datos);
        }

        public ActionResult FormularioEmpleado() 
        {
            var No_emp = Request.Params["No_emp"];
            if (No_emp != null)
            {
                int id = int.Parse(No_emp);
                var empleado = db.empleado.Where(x => x.Activo == true).ToList();
                ViewBag.empleado = empleado;
            }
            ViewBag.Maquinas = db.Maquinas.Where(x => x.Activo == true).ToList();
            return View();

        }

        public JsonResult guardarempleado(int? No_emp, string nombre, string seriePC, string puesto, string cartacustiodia)
        {
            if(No_emp != null)
            {
                db.sp_editarEmpleado(No_emp, nombre, seriePC, puesto, cartacustiodia);
            }
            else
            {
                db.sp_agregar_emplado(nombre, seriePC, puesto,cartacustiodia, true);
            }
            return Json("");
        }


    }
}
