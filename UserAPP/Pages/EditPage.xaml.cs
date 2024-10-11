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
    public partial class EditPage : Page
    {
        Data.Users _currentUser;
        public EditPage(Data.Users UsersTable)
        {
            InitializeComponent();
            _currentUser = UsersTable;
            DataContext = _currentUser;

            initBoxes();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            reloadCurrentUser();
        }

        private void backBtn_Click(object sender, RoutedEventArgs e)
        {
            Classes.Manager.frameINIT.Navigate(new Pages.ViewPage());
        }

        private void initBoxes()
        {
            var rolesTable = Data.UsersDBEntities.GetContext().Roles.ToList();
            roleComboBox.ItemsSource = rolesTable;

            var gendersTable = Data.UsersDBEntities.GetContext().Genders.ToList();
            genderComboBox.ItemsSource = gendersTable;

            idBox.Text = _currentUser.id.ToString();
            lastnameBox.Text = _currentUser.lastname;
            nameBox.Text = _currentUser.name;
            patronymicBox.Text = _currentUser.ptronymic;
            
            emailBox.Text = _currentUser.email;
            birthBox.Text = _currentUser.birth.ToString();
            roleComboBox.SelectedIndex = _currentUser.Roles.id;
            genderComboBox.SelectedIndex = _currentUser.Genders.id;

            phoneBox.Text = _currentUser.phone.ToString();
        }

        private void reloadCurrentUser()
        {
            _currentUser.lastname = lastnameBox.Text;
            _currentUser.name = nameBox.Text;
            _currentUser.ptronymic = patronymicBox.Text;

            _currentUser.email = emailBox.Text;
            _currentUser.phone = phoneBox.Text;
            _currentUser.birth = Convert.ToDateTime(birthBox.Text);

            _currentUser.role_id = roleComboBox.SelectedIndex - 1;
            _currentUser.gender_id = genderComboBox.SelectedIndex - 1;

            Data.UsersDBEntities.GetContext().SaveChanges();
        }
    }
}
