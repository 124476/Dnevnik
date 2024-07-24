using Dnevnik.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.RightsManagement;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Dnevnik.Windows
{
    /// <summary>
    /// Логика взаимодействия для OknoOchenkas.xaml
    /// </summary>
    public partial class OknoOchenkas : Window
    {
        OchenkaAndUser contextOchenka;
        User contextUser;
        Predmet contextPredmet;
        public OknoOchenkas(User user, Predmet predmet)
        {
            InitializeComponent();
            contextUser = user;
            contextPredmet = predmet;
            ComboOchenks.ItemsSource = App.DB.Ochenka.ToList();

            contextOchenka = new OchenkaAndUser();
            contextOchenka.User = contextUser;
            DataContext = contextOchenka;

            Refresh();
        }

        private void SaveBtn_Click(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrEmpty(contextOchenka.Name))
            {
                MessageBox.Show("Заполните название");
                return;
            }

            contextOchenka.Date = DateTime.Now;
            contextOchenka.Predmet = contextPredmet;

            if (contextOchenka.Id == 0)
                App.DB.OchenkaAndUser.Add(contextOchenka);

            App.DB.SaveChanges();
            Refresh();
            RedactText.Text = "*новая оценка";

            contextOchenka = new OchenkaAndUser();
            contextOchenka.User = contextUser;
            DataContext = contextOchenka;
        }

        private void Refresh()
        {
            ListOchenkas.ItemsSource = App.DB.OchenkaAndUser.Where(x => x.UserId == contextUser.Id && x.PredmetId == contextPredmet.Id).ToList();
        }

        private void Redact_MouseUp(object sender, MouseButtonEventArgs e)
        {
            RedactText.Text = "*редактирование";

            var ochenka = (sender as TextBlock).DataContext as OchenkaAndUser;
            if (ochenka == null)
                return;

            contextOchenka = ochenka;
            DataContext = null;
            DataContext = contextOchenka;
        }

        private void Del_MouseUp(object sender, MouseButtonEventArgs e)
        {
            var ochenka = (sender as TextBlock).DataContext as OchenkaAndUser;
            if (ochenka == null)
                return;

            App.DB.OchenkaAndUser.Remove(ochenka);
            App.DB.SaveChanges();
            Refresh();
        }

        private void StopBtn_Click(object sender, RoutedEventArgs e)
        {
            RedactText.Text = "*новая оценка";
            contextOchenka = new OchenkaAndUser();
            contextOchenka.User = contextUser;
            contextOchenka.Date = DateTime.Now;
            contextOchenka.Predmet = contextPredmet;
            DataContext = contextOchenka;
        }
    }
}
