using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppEHR.admin
{
    public partial class handle_appointments : System.Web.UI.Page
    {

        string connectionString = "Server=DESKTOP-VHG3DM9;Database=hospital7; Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindAppointmentData();
            }
        }

        private void BindAppointmentData()
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT * FROM appointment";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();
                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);

                    GridViewAppointments.DataSource = dt;
                    GridViewAppointments.DataBind();
                }
            }
        }

        protected void GridViewAppointments_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int patientID = Convert.ToInt32(GridViewAppointments.DataKeys[e.RowIndex].Value);
            DeleteAppointment(patientID);
            BindAppointmentData();
        }

        private void DeleteAppointment(int patientID)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "DELETE FROM appointment WHERE patient_id = @PatientID";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@PatientID", patientID);
                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
        }
    }
}