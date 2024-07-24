using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dnevnik.Models
{
    public partial class Predmet
    {
        public string Ochenkaes
        {
            get
            {
                var ochenkaAndUsers = App.DB.OchenkaAndUser.Where(x => x.PredmetId == Id && x.UserId == App.user.Id).ToList();
                StringBuilder text = new StringBuilder();
                foreach (var item in ochenkaAndUsers)
                    text.Append(item.Ochenka.Name + " ");

                return text.ToString();
            }
        }
    }
}
