using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace WebAppEHR.admin
{
    public partial class handle_patient : System.Web.UI.Page
    {
        string connectionString = "Server=DESKTOP-VHG3DM9;Database=hospital7; Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindPatientData();
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
                        GridViewPatients.DataSource = dt;
                        GridViewPatients.DataBind();
                    }
                }
            }
        }

        protected void GridViewPatients_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            if (e.RowIndex >= 0 && e.RowIndex < GridViewPatients.Rows.Count)
            {
                string patientName = GridViewPatients.Rows[e.RowIndex].Cells[1].Text; // Assuming the patient name is in the second cell (index 1)

                if (!string.IsNullOrEmpty(patientName))
                {
                    int patientID = GetPatientIDByName(patientName);

                    if (patientID > 0)
                    {
                        using (SqlConnection connection = new SqlConnection(connectionString))
                        {
                            string query = "DELETE FROM Patientt WHERE patient_id = @PatientID";
                            using (SqlCommand command = new SqlCommand(query, connection))
                            {
                                command.Parameters.AddWithValue("@PatientID", patientID);
                                connection.Open();
                                command.ExecuteNonQuery();
                            }
                        }

                        // Re-bind patient data to update GridView after deletion
                        BindPatientData();

                        // Display a message indicating successful deletion
                        ClientScript.RegisterStartupScript(this.GetType(), "DeleteConfirmation", "alert('Patient deleted successfully.');", true);
                    }
                    else
                    {
                        // Display a message indicating that the patient name was not found
                        ClientScript.RegisterStartupScript(this.GetType(), "PatientNotFound", "alert('Patient not found.');", true);
                    }
                }
            }
            else
            {
                // Display a message indicating an invalid operation
                ClientScript.RegisterStartupScript(this.GetType(), "InvalidOperation", "alert('Invalid operation.');", true);
            }
        }

        // Method to get the patient ID based on the patient name
        private int GetPatientIDByName(string patientName)
        {
            int patientID = 0;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT  patient_id FROM Patientt WHERE Patient_name = @PatientName";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@PatientName", patientName);
                    connection.Open();
                    object result = command.ExecuteScalar();
                    if (result != null)
                    {
                        patientID = Convert.ToInt32(result);
                    }
                }
            }
            return patientID;
        }



        // Method to delete a patient record from the database
        private void DeletePatient(int patientID)
        {
            string connectionString = "Server=DESKTOP-VHG3DM9;Database=hospital7; Integrated Security=True";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "DELETE FROM Patientt WHERE PatientID = @PatientID";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@PatientID", patientID);
                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
        }
        protected void btnInsertPatient_Click(object sender, EventArgs e)
        {
            // Retrieve input data
            string patientName = txtPatientName.Text.Trim();
            int age = Convert.ToInt32(txtAge.Text.Trim());
            string gender = txtGender.Text.Trim();
            string address = txtAddress.Text.Trim();
            string phoneNumber = txtPhoneNumber.Text.Trim();
            string diagnosis = txtDiagnosis.Text.Trim();
            int pharmacyID = Convert.ToInt32(txtPharmacyID.Text.Trim());
            string prescription = txtPrescription.Text.Trim();

            // Validate input data (you can add more validation logic as needed)
            if (!string.IsNullOrEmpty(patientName) && age > 0 && !string.IsNullOrEmpty(gender) && !string.IsNullOrEmpty(address) && !string.IsNullOrEmpty(phoneNumber) && !string.IsNullOrEmpty(diagnosis) && pharmacyID > 0 && !string.IsNullOrEmpty(prescription))
            {
                // Insert patient into the database
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    string query = "INSERT INTO Patientt (Patient_name, age, gender, p_address, phoneNum, diagnosis, pharmacyID, prescription) VALUES (@PatientName, @Age, @Gender, @Address, @PhoneNumber, @Diagnosis, @PharmacyID, @Prescription)";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {

                        command.Parameters.AddWithValue("@PatientName", patientName);
                        command.Parameters.AddWithValue("@Age", age);
                        command.Parameters.AddWithValue("@Gender", gender);
                        command.Parameters.AddWithValue("@Address", address);
                        command.Parameters.AddWithValue("@PhoneNumber", phoneNumber);
                        command.Parameters.AddWithValue("@Diagnosis", diagnosis);
                        command.Parameters.AddWithValue("@PharmacyID", pharmacyID);
                        command.Parameters.AddWithValue("@Prescription", prescription);
                        connection.Open();
                        command.ExecuteNonQuery();
                    }
                }

                // Clear input fields after successful insertion
                ClearInputFields();

                // Re-bind patient data to update GridView after insertion
                BindPatientData();

                // Display a message indicating successful insertion
                ClientScript.RegisterStartupScript(this.GetType(), "InsertConfirmation", "alert('Patient inserted successfully.');", true);
            }
            else
            {
                // Display a message indicating invalid input
                ClientScript.RegisterStartupScript(this.GetType(), "InvalidInput", "alert('Please fill in all required fields with valid data.');", true);
            }
        }

        // Method to clear input fields after insertion
        private void ClearInputFields()
        {
            txtPatientName.Text = string.Empty;
            txtAge.Text = string.Empty;
            txtGender.Text = string.Empty;
            txtAddress.Text = string.Empty;
            txtPhoneNumber.Text = string.Empty;
            txtDiagnosis.Text = string.Empty;
            txtPharmacyID.Text = string.Empty;
            txtPrescription.Text = string.Empty;
        }

    }
}