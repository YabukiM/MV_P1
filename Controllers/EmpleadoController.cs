﻿using MV_P1.Models;
using System;
using System.Linq;
using System.Web;
using System.Web.Mvc;


namespace MV_P1.Controllers
{
    public class EmpleadoController : Controller
    {
        
        InventoryEntities db = new InventoryEntities ();

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
                var empleado = db.empleado.Where(x => x.No_emp == id).FirstOrDefault();
                ViewBag.empleado = empleado;
            }
            ViewBag.Maquinas = db.Maquinas.Where(x => x.Activo == true).ToList();
            return View();

        }

        public JsonResult guardarempleado(int? No_emp, string nombre, string SeriePC, string puesto)
        {
            if(No_emp != null)
            {
                db.sp_editarEmpleado(No_emp, nombre, puesto, SeriePC);
            }
            else
            {
                db.sp_agregar_emplado(nombre,  puesto, SeriePC, true);
            }
            return Json("");
        }

        public ActionResult Eliminar(int? No_emp)
        {
            db.sp_eliminar_empleado(No_emp);
            return RedirectToAction("guardarempleado", "empleado");
        }

    }
}
