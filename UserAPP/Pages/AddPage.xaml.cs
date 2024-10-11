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
    /// Логика взаимодействия для AddPage.xaml
    /// </summary>
    public partial class AddPage : Page
    {
        private Data.Users userItem;
        public AddPage()
        {
            InitializeComponent();
            init();
        }

        private void init()
        {
            var rolesTable = Data.UsersDBEntities.GetContext().Roles.ToList();
            roleComboBox.ItemsSource = rolesTable;

            var gendersTable = Data.UsersDBEntities.GetContext().Genders.ToList();
            genderComboBox.ItemsSource = gendersTable;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            userItem.name = nameBox.Text.ToString();
            userItem.lastname = lastnameBox.Text.ToString();
            userItem.ptronymic = patronymicBox.Text.ToString();

            userItem.phone = phoneBox.Text;

            userItem.email = emailBox.Text.ToString();
            userItem.birth = Convert.ToDateTime(birthBox.Text);
            userItem.password = passwordBox.Text.ToString();
            userItem.login = loginBox.Text.ToString();

            userItem.gender_id = 1;
            userItem.role_id = 1;


            Data.UsersDBEntities.GetContext().Users.Add(userItem);
            Data.UsersDBEntities.GetContext().SaveChanges();
        }

        private void backBtn_Click(object sender, RoutedEventArgs e)
        {
            Classes.Manager.frameINIT.Navigate(new Pages.ViewPage());
        }

        private void genderComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            //genderComboBox.SelectedIndex;
            //userItem.gender_id = 1;
        }

        private void roleComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            //roleComboBox.SelectedIndex; 
            //userItem.role_id = 1; 
        }
    }
}
