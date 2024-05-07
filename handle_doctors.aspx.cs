using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace WebAppEHR.admin
{
    public partial class handle_doctors : System.Web.UI.Page
    {
        string connectionString = "Server=DESKTOP-VHG3DM9;Database=hospital7; Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDoctorData();
            }
        }

        private void BindDoctorData()
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

                    GridViewDoctors.DataSource = dt;
                    GridViewDoctors.DataBind();
                }
            }
        }

        protected void btnInsertDoctor_Click(object sender, EventArgs e)
        {
            string doctorName = txtDoctorName.Text.Trim();
            int departmentID = Convert.ToInt32(txtDepartmentID.Text.Trim());
            string phoneNumber = txtPhoneNumber.Text.Trim();

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO Doctors (Docname, DepartID, phoneNum) VALUES (@Docname, @DepartID, @phoneNum)";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Docname", doctorName);
                    command.Parameters.AddWithValue("@DepartID", departmentID);
                    command.Parameters.AddWithValue("@phoneNum", phoneNumber);

                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }

            // Re-bind doctor data after insertion
            BindDoctorData();

            // Clear input fields
            txtDoctorName.Text = "";
            txtDepartmentID.Text = "";
            txtPhoneNumber.Text = "";
        }

        protected void GridViewDoctors_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridViewDoctors.EditIndex = e.NewEditIndex;
            BindDoctorData();
        }

        protected void GridViewDoctors_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridViewDoctors.EditIndex = -1;
            BindDoctorData();
        }

   

        protected void GridViewDoctors_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int doctorID = Convert.ToInt32(GridViewDoctors.DataKeys[e.RowIndex].Value);

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "DELETE FROM Doctors WHERE DocID = @DocID";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@DocID", doctorID);

                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }

            BindDoctorData();
        }
    }
}
