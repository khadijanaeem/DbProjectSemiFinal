using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace WebAppEHR.admin
{
    public partial class handle_room : System.Web.UI.Page
    {
        string connectionString = "Server=DESKTOP-VHG3DM9;Database=hospital7; Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindRooms();
            }
        }

        protected void BindRooms()
        {
            
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT room_num, patient_id, staff_id, admission_date FROM Room", con))
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        GridViewRooms.DataSource = dt;
                        GridViewRooms.DataBind();
                    }
                }
            }
        }

        protected void btnInsertRoom_Click(object sender, EventArgs e)
        {
            string roomNum = txtRoomNumber.Text;
            string patientId = txtPatientID.Text;
            string staffId = txtStaffID.Text;
            string admissionDate = txtAdmissionDate.Text;

         
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("INSERT INTO Room (room_num, patient_id, staff_id, admission_date) VALUES (@RoomNum, @PatientId, @StaffId, @AdmissionDate)", con))
                {
                    cmd.Parameters.AddWithValue("@RoomNum", roomNum);
                    cmd.Parameters.AddWithValue("@PatientId", patientId);
                    cmd.Parameters.AddWithValue("@StaffId", staffId);
                    cmd.Parameters.AddWithValue("@AdmissionDate", admissionDate);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }

            BindRooms();
        }

        protected void GridViewRooms_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridViewRooms.EditIndex = e.NewEditIndex;
            BindRooms();
        }

        protected void GridViewRooms_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridViewRooms.EditIndex = -1;
            BindRooms();
        }

        protected void GridViewRooms_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string roomNum = GridViewRooms.DataKeys[e.RowIndex].Values["room_num"].ToString();

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("DELETE FROM Room WHERE room_num = @RoomNum", con))
                {
                    cmd.Parameters.AddWithValue("@RoomNum", roomNum);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }

            BindRooms();
        }
    }
}
