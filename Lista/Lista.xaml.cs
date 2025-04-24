using System.Diagnostics.Contracts;
using static System.Runtime.InteropServices.JavaScript.JSType;

namespace Lista;

public partial class Lista : ContentPage
{
    List<Funciones> alumnos;
    int Count;
    conexionBd conn = new conexionBd();
    public Lista()
    {
        InitializeComponent();
       
        
        alumnos = conn.GetDataAlumn(Globals.Grupo);

        Count = 0;
        if (alumnos.Count > 0)
        {
            label_nombre.Text = alumnos[Count].Nombre.ToString() + " " + alumnos[Count].NumeroControl.ToString();


        }

    }



    private void Button_Clicked(object sender, EventArgs e)
    {
        bool isChecked = miCheckBox.IsChecked;
        string Pase="";
        if (Count < alumnos.Count - 1)
        {
            int operacion = Count + 1;
            Count = operacion;
            label_nombre.Text = alumnos[operacion].Nombre.ToString() + " " + alumnos[operacion].NumeroControl.ToString();

            if (isChecked) 
            { Pase = "1";
            }else
            { Pase = "0"; }

            DateTime fechaActual = DateTime.Now.Date;
    
            Asistencia(alumnos[operacion].NumeroControl.ToString(), Pase, fechaActual);

        }
       
        miCheckBox.IsChecked = false;


    }
    List<FuncionesAsistencia> lista_asistencia = new List<FuncionesAsistencia>();
    public void Asistencia(string numeroControl,string confirmacion, DateTime date)
    {
        lista_asistencia.Add(new FuncionesAsistencia { NumeroControl = numeroControl, confirmacion = confirmacion, date = date });
        

    }

    private void Button_Clicked_1(object sender, EventArgs e)
    {

        if (Count == alumnos.Count - 1)
        {
            conn.InsertarAlumnos(lista_asistencia);
            MostrarAlerta();
            reiniciar();
        }else
        {

            MostrarAlerta1();
        }

    }
    private async void MostrarAlerta()
    {
        await DisplayAlert("Listo!!", "Datos guardados", "OK");
    }
    private async void MostrarAlerta1()
    {
        await DisplayAlert("Termina de pasar lista!!", "Es necesario pasar lista a todos los alumnos", "OK");
    }
    private async void MostrarAlertaReinicio()
    {
        await DisplayAlert("Reinicio", "Reinicio", "OK");
    }
    public void reiniciar() 
    {
        Count = 0;
        if (alumnos.Count > 0)
        {
            label_nombre.Text = alumnos[Count].Nombre.ToString() + " " + alumnos[Count].NumeroControl.ToString();
            lista_asistencia.Clear();   

        }


    }

}