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

namespace UserAPP.Pages
{
    /// <summary>
    /// Логика взаимодействия для ViewPage.xaml
    /// </summary>
    public partial class ViewPage : Page
    {
        public ViewPage()
        {
            InitializeComponent();
            loadListView();
        }

        private void loadListView()
        {
            var items = Data.UsersDBEntities.GetContext().Users.ToList();
            listView.ItemsSource = items;
        }

        private void listView_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            
            Classes.Manager.frameINIT.Navigate(new Pages.EditPage());
        }
    }
}
