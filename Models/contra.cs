//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MV_P1.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class contra
    {
        public int id_Contrato { get; set; }
        public string producto_contrato { get; set; }
        public string descripcion { get; set; }
        public string serie { get; set; }
        public string destino { get; set; }
        public string comentarios { get; set; }
        public Nullable<System.DateTime> fecha_surtido { get; set; }
        public string recibio { get; set; }
        public Nullable<int> Folio_pedido { get; set; }
        public Nullable<System.DateTime> fecha_pedido { get; set; }
        public string SeriePC { get; set; }
        public Nullable<bool> activo { get; set; }
    
        public virtual Maquina Maquina { get; set; }
    }
}
