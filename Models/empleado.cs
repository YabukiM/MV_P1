//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MV_P1.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class empleado
    {
        public int No_emp { get; set; }
        public string nombre { get; set; }
        public string seriePC { get; set; }
        public string puesto { get; set; }
        public Nullable<bool> Activo { get; set; }
    
        public virtual Maquinas Maquinas { get; set; }
    }
}
