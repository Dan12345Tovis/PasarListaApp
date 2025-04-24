namespace Lista;

public partial class Inicio : ContentPage
{
	public Inicio()
	{
		InitializeComponent();
	}

    private async void Button_Clicked(object sender, EventArgs e)
    {
        string user = Entry_user.Text;
        string pass = Entry_pass.Text;
        
        conexionBd con=new conexionBd();
        try {
            
            Globals.ID= con.getIDUser(user, pass);
            bool flag=con.Login(user, pass);
            if (flag) 
            {
                await Navigation.PushAsync(new Menu());
            }
        }
        catch(Exception ex){}
        
        

    }
}