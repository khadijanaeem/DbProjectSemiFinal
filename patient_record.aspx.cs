
using System.Collections.Generic;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace WebAppEHR.admin
{
    public partial class patient_record : Page
    {
        string connectionString = "Server=DESKTOP-VHG3DM9;Database=hospital7; Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string patient_name = Request.QueryString["patient_name"];
                if (!string.IsNullOrEmpty(patient_name))
                {
                    ShowPatientData(patient_name);
                }
                else
                {
                    // Show default dashboard data for admins
                    ShowAdminDashboard();
                }
            }
        }

        private void ShowPatientData(string patient_name)
        {
            DisplayRoomData(patient_name);
            DisplayAppointmentData(patient_name);
            DisplayBillingData(patient_name);
            DisplayEHRData(patient_name);
        }

        private void DisplayRoomData(string patient_name)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
               
                    string query = "SELECT * FROM Room WHERE patient_name = @patient_name";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@patient_name", patient_name);

                        connection.Open();
                        SqlDataAdapter adapter = new SqlDataAdapter(command);
                        DataTable dt = new DataTable();
                        adapter.Fill(dt);

                    GridViewRooms.DataSource = dt;
                    GridViewRooms.DataBind();
                    }
            }
        }

        private void DisplayAppointmentData(string patient_name)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT * FROM appointment WHERE name = @patient_name";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@patient_name", patient_name);

                    connection.Open();
                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);

                    GridViewAppointments.DataSource = dt;
                    GridViewAppointments.DataBind();
                }
            }
        }

        private void DisplayBillingData(string patient_name)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT * FROM billing WHERE patient_name = @patient_name";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@patient_name", patient_name);

                    connection.Open();
                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);

                    GridViewBilling.DataSource = dt;
                    GridViewBilling.DataBind();
                }
            }
        }

        private void DisplayEHRData(string patient_name)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT * FROM EHR WHERE patient_name = @patient_name";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@patient_name", patient_name);

                    connection.Open();
                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);

                    GridViewEHR.DataSource = dt;
                    GridViewEHR.DataBind();
                }
            }
        }

        private void ShowAdminDashboard()
        {
            DisplayAllAppointmentData();

            DisplayAllRoomData();

        }

        private void DisplayAllAppointmentData()
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

        private void DisplayAllRoomData()
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT * FROM Room";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();
                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);

                    GridViewRooms.DataSource = dt;
                    GridViewRooms.DataBind();
                }
            }
        }
    }
}
