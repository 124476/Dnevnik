using Dnevnik.Models;
using Dnevnik.Windows;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Dnevnik.Pages
{
    /// <summary>
    /// Логика взаимодействия для PageTeacher.xaml
    /// </summary>
    public partial class PageTeacher : Page
    {
        public PageTeacher()
        {
            InitializeComponent();

            var predmetAndUser = App.DB.PredmetAndUser.Where(x => x.UserId == App.user.Id).ToList();
            var classes = predmetAndUser.Select(x => x.ClassUsers).ToList().Distinct().ToList();

            ComboClasses.ItemsSource = classes;
            ComboClasses.SelectedIndex = 0;
            try
            {
                ComboRefresh();
                Refresh();
            }
            catch { }
        }

        private void ComboRefresh()
        {
            var classUser = ComboClasses.SelectedItem as ClassUsers;

            var predmetAndUser = App.DB.PredmetAndUser.Where(x => x.UserId == App.user.Id && x.ClassId == classUser.Id).ToList();
            var predmets = predmetAndUser.Select(x => x.Predmet).ToList();

            ComboPredmets.ItemsSource = predmets;
            ComboPredmets.SelectedIndex = 0;
        }

        private void Refresh()
        {
            var classUser = ComboClasses.SelectedItem as ClassUsers;
            var predmet = ComboPredmets.SelectedItem as Predmet;

            var users = App.DB.User.Where(x => x.ClassId == classUser.Id).ToList();

            ListStudents.ItemsSource = users;
        }

        private void ComboClasses_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            ComboRefresh();
        }

        private void ComboPredmets_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            Refresh();
        }

        private void ListStudents_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            var user = ListStudents.SelectedItem as User;
            var predmet = ComboPredmets.SelectedItem as Predmet;

            var dialog = new OknoOchenkas(user, predmet);
            dialog.ShowDialog();
            Refresh();
        }
    }
}
