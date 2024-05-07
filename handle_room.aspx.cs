using System;
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
                BindRoomData();
            }
        }

        private void BindRoomData()
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

        protected void GridViewRooms_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int roomNum = Convert.ToInt32(GridViewRooms.DataKeys[e.RowIndex].Value);

            // Implement room deletion logic here
            DeleteRoom(roomNum);

            // Re-bind room data after deletion
            BindRoomData();
        }

        // Method to delete room for a patient
        private void DeleteRoom(int roomNum)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "UPDATE Room SET patient_id = NULL WHERE room_num = @RoomNum";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@RoomNum", roomNum);

                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
        }
    }
}