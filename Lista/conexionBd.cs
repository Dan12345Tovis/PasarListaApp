using Microsoft.Data.SqlClient;
using Microsoft.Identity.Client;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lista
{
    class conexionBd
    {
        
        string connectionString = "xxxxxxxxxxxxxxxx";

        public bool Login(String usuario, String contraseña)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();
                    String query = "SELECT COUNT(*) FROM Maestros WHERE NumeroControl ='" + usuario + "' AND Contraseña = '" + contraseña + "';";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        int count = (int)command.ExecuteScalar();
                        return count > 0;

                    }
                }
                catch (Exception ex)
                {

                }
                return false;



            }



        }
        public int getIDUser(String usuario, String contraseña)
        {
            int ID ; // Cambia a null
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                String query = "SELECT ID FROM maestros WHERE NumeroControl = @usuario AND Contraseña = @contraseña;";
                connection.Open();
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@usuario", usuario);
                    command.Parameters.AddWithValue("@contraseña", contraseña);
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read()) // Cambia el bucle while por un if
                        {
                            ID = reader.GetInt32(0);
                            return ID;  
                        }
                    }
                }
                return 0;
            }
         
        }






        public List<String> GetDataGru(int ID)
        {

            var productos = new List<String>();


            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                String query = "select Nombre from Grupos where  MaestroFk='"+ID+"';";
                connection.Open();
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {

                            productos.Add(reader.GetString(0));
                        }


                    }
                    return productos;
                }









            }



        }

        
        public List<Funciones> GetDataAlumn(String Grupo)
        {

            List <Funciones> alumnos = new List<Funciones>();


            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                String query = "select Nombre,NumeroControl from alumnos where Grupo='"+Grupo+"';";
                connection.Open();
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            alumnos.Add(new Funciones { NumeroControl = reader.GetString(0), Nombre = reader.GetString(1) });
                            
                        }
                        return alumnos;


                    }
                   
                }
            }



      



        }

        public  void InsertarAlumnos(List<FuncionesAsistencia> alumnos)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                // Definir la consulta SQL
                string query = "INSERT INTO AlumnosAsistencia (NumeroControl,Asistencia,fecha) VALUES (@NumeroControl, @Asistencia, @fecha)";

                foreach (var alumno in alumnos)
                {
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        // Agregar parámetros
                        command.Parameters.AddWithValue("@NumeroControl", alumno.NumeroControl);
                        command.Parameters.AddWithValue("@Asistencia", alumno.confirmacion);
                        command.Parameters.AddWithValue("@fecha", alumno.date);

                        // Ejecutar la inserción
                        command.ExecuteNonQuery();
                    }
                }
            }
        }
     }
}
