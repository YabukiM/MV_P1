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
    
    public partial class Maquinas
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Maquinas()
        {
            this.contratos1 = new HashSet<contratos>();
            this.empleado = new HashSet<empleado>();
            this.Tiendas = new HashSet<Tiendas>();
        }
    
        public int Conteo { get; set; }
        public string Contratos { get; set; }
        public string Producto { get; set; }
        public string Descripcion { get; set; }
        public string SeriePC { get; set; }
        public string Destino { get; set; }
        public string Asignada { get; set; }
        public string Estatuss { get; set; }
        public string NombreUsuarioPuesto { get; set; }
        public string NoCartaCustodia { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<contratos> contratos1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<empleado> empleado { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Tiendas> Tiendas { get; set; }
    }
}
