using System;
using System.Data;
using System.Data.SqlClient;

namespace WebAppEHR.admin
{
    public partial class dashboard : System.Web.UI.Page
    {
        string connectionString = "Server=DESKTOP-VHG3DM9;Database=hospital7; Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Call methods to populate appointment and patient data
               
                BindAppointmentData();
                BindPatientData();
                BindRoomData();
                BindStaffData();
                BindDoctorsData();

            }
        }
        protected void btnAppointments_Click(object sender, EventArgs e)
        {
            // Redirect to appointments handling page or perform any other action
            Response.Redirect("~/admin/handle_appointments.aspx");
        }

        protected void btnPatients_Click(object sender, EventArgs e)
        {
            // Redirect to patients handling page or perform any other action
            Response.Redirect("~/admin/handle_patient.aspx");
        }

        protected void btnRooms_Click(object sender, EventArgs e)
        {
            // Redirect to patients handling page or perform any other action
            Response.Redirect("~/admin/handle_room.aspx");
        }

        protected void btnStaff_Click(object sender, EventArgs e)
        {
            // Redirect to staff handling page or perform any other action
            Response.Redirect("~/admin/handle_staff.aspx");
        }

        protected void btnDoctors_Click(object sender, EventArgs e)
        {
            // Redirect to doctors handling page or perform any other action
            Response.Redirect("~/admin/handle_doctors.aspx");
        }


        // Method to retrieve and bind appointment data to the GridView
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

                    if (dt.Rows.Count > 0)
                    {
                        GridViewAppointments.DataSource = dt;
                        GridViewAppointments.DataBind();
                    }
                    connection.Close();
                }
            }
        }

        // Method to retrieve and bind patient data to the GridView
        private void BindPatientData()
        {
           

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT * FROM Patientt"; // Make sure the table name is correct
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();
                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);

                    if (dt.Rows.Count > 0)
                    {
                        GridViewPatients.DataSource = dt; // Assuming you have a GridView named GridViewPatients
                        GridViewPatients.DataBind();
                    }
                }
            }
        }
        private void BindRoomData()
        {
            

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT * FROM Room"; // Adjust table name if necessary
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();
                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);

                    if (dt.Rows.Count > 0)
                    {
                        GridViewRooms.DataSource = dt; // Assuming you have a GridView named GridViewRooms
                        GridViewRooms.DataBind();
                    }
                }
            }
        }
        private void BindStaffData()
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT * FROM staff";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();
                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);

                    if (dt.Rows.Count > 0)
                    {
                        GridViewStaff.DataSource = dt;
                        GridViewStaff.DataBind();
                    }
                    connection.Close();
                }
            }
        }
        private void BindDoctorsData()
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT * FROM Doctors";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();
                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);

                    if (dt.Rows.Count > 0)
                    {
                        GridViewdoctors.DataSource = dt;
                        GridViewdoctors.DataBind();
                    }
                    connection.Close();
                }
            }
        }

    }
}