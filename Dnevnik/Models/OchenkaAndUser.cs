//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Dnevnik.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class OchenkaAndUser
    {
        public int Id { get; set; }
        public Nullable<int> UserId { get; set; }
        public Nullable<int> OchenkaId { get; set; }
        public Nullable<int> PredmetId { get; set; }
        public Nullable<System.DateTime> Date { get; set; }
        public string Name { get; set; }
    
        public virtual Ochenka Ochenka { get; set; }
        public virtual Predmet Predmet { get; set; }
        public virtual User User { get; set; }
    }
}
