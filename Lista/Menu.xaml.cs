namespace Lista;

public partial class Menu : ContentPage
{
	public Menu()
	{
		InitializeComponent();
        conexionBd conexionBd = new conexionBd();
        Picker.ItemsSource = conexionBd.GetDataGru(Globals.ID);
    }

    String Grupo="";
    private async void Button_Clicked(object sender, EventArgs e)
    {
        if (Picker.SelectedItem != null)
        {
            Grupo =Picker.SelectedItem.ToString();
            Globals.Grupo = Grupo;
            await Navigation.PushAsync(new Lista());
        }
        else
        {
            DisplayAlert("Error", "Por favor, selecciona un producto.", "OK");
        }
        

    }
}
