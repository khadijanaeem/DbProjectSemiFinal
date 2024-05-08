using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppEHR.admin
{
        public partial class WebForm1 :  Page
    {
            protected void Page_Load(object sender, EventArgs e)
            {
                if (!IsPostBack)
                {
                    // You can add any initialization logic here
                }
            }

            protected void btnLogin_Click(object sender, EventArgs e)
            {
                // Check admin credentials
                string adminID = txtAdminID.Text.Trim();
                string password = txtPassword.Text.Trim();
            
                if (adminID == "admin" && password == "password")
                {
                    // Successful login
                    lblmsg.Text = "Login successful";
                    // Redirect to admin dashboard or any other page
                    Response.Redirect("~/admin/dashboard.aspx");
                }
            else
            {
                // Check if the user is a patient
                if (IsPatient(adminID)&&( password == "password"))
                {
                    // Redirect to patient's records page
                    Response.Redirect("~/admin/patient_record.aspx?patient_name=" + adminID);
                }
                else
                {
                    // Failed login
                    lblmsg.Text = "Invalid admin ID or password";
                }
            }
        }

        private bool IsPatient(string username)
        {
            string connectionString = "Server=DESKTOP-VHG3DM9;Database=hospital7; Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT COUNT(*) FROM patientt WHERE Patient_name = @username";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@username", username);

                    connection.Open();
                    int count = (int)command.ExecuteScalar();

                    return count > 0;
                }
            }
        }
    }
}
