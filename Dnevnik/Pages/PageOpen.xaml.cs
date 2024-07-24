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
    /// Логика взаимодействия для PageOpen.xaml
    /// </summary>
    public partial class PageOpen : Page
    {
        public PageOpen()
        {
            InitializeComponent();
        }

        private void OpenBtn_Click(object sender, RoutedEventArgs e)
        {
            var login = Login.Text;
            var password = Password.Text;
            var user = App.DB.User.FirstOrDefault(x => x.Login == login && x.Password == password);
            if (user == null)
            {
                MessageBox.Show("Неверные данные!");
                return;
            }

            App.user = user;

            if (user.RoleId == 1)
                NavigationService.Navigate(new PageStudent());
            else
                NavigationService.Navigate(new PageTeacher());
        }
    }
}
