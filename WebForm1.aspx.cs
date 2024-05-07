
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Configuration.Provider;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebAppEHR.DAL;


namespace WebAppEHR
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string css = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            // Whatever you want to do when the page loads
        }

        //protected void LoginButton_Click(object sender, EventArgs e)
        //{
        //    // Retrieve admin ID and password from the textboxes
        //    string adId = adminId.Text;
        //    string password = adminPassword.Text;

        //    // Validate admin credentials
        //    if (ValidateAdminCredentials(adId, password))
        //    {
        //        // If credentials are valid, redirect to the admin dashboard or another page
        //        Response.Redirect("AdminDashboard.aspx");
        //    }
        //    else
        //    {
        //        // If credentials are invalid, display an error message
        //        ScriptManager.RegisterStartupScript(this, this.GetType(), "InvalidLogin", "alert('Invalid admin ID or password.');", true);
        //    }
        //}

        //private bool ValidateAdminCredentials(string adminId, string password)
        //{


        //    // SQL query to validate admin credentials
        //    string query = "SELECT COUNT(*) FROM Admins WHERE Username = @AdminID AND Password = @Password";

        //    // Create a SqlConnection object
        //    using (SqlConnection conn = new SqlConnection(css))
        //    {
        //        // Create a SqlCommand object
        //        using (SqlCommand cmd = new SqlCommand(query, conn))
        //        {
        //            // Add parameters
        //            cmd.Parameters.AddWithValue("@AdminID", adminId);
        //            cmd.Parameters.AddWithValue("@Password", password);

        //            // Open the connection
        //            conn.Open();

        //            // Execute the command
        //            int count = (int)cmd.ExecuteScalar();

        //            // Return true if admin credentials are valid, otherwise false
        //            return count > 0;
        //        }
        //    }
        //}
        //protected void btnAdminPage_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("admin/admin.aspx");
        //}

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(css))
            {
                // SQL query to insert appointment data into the appointment table
                string query = "INSERT INTO appointment (name, email, app_date,m1,dep1name,docname) VALUES (@name, @email, @app_date,@mes,@dep,@doc)";

                // Create a SqlCommand object with the query and connection
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    // Add parameters to the command
                    cmd.Parameters.AddWithValue("@name", nameField.Text);
                    cmd.Parameters.AddWithValue("@email", emailField.Text);
                    cmd.Parameters.AddWithValue("@app_date", appointmentDateField.Text);
                    cmd.Parameters.AddWithValue("@mes", messageField.Text);
                    cmd.Parameters.AddWithValue("@dep", departmentSelectField.Text);
                    cmd.Parameters.AddWithValue("@doc", doctorSelectField.Text);
                  

                    // Open the connection
                    conn.Open();

                    // Execute the command
                    int rowsAffected = cmd.ExecuteNonQuery();

                    // Check if any rows were affected (if insertion was successful)
                    if (rowsAffected > 0)
                    {
                        // Appointment insertion successful
                        Session["name"] = nameField.Text;
                        Session["email"] = emailField.Text;
                        Session["app_date"] = appointmentDateField.Text;
                        Session["mes"] = messageField.Text;
                        Session["dep"] = departmentSelectField.Text;
                        Session["doc"] = doctorSelectField.Text;
                        confirmationMessage.InnerHtml = "Your appointment request has been sent successfully. Thank you!";
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Appointment scheduled successfully')</script>");
                       Response.Redirect("WebForm1.aspx");
                    }
                    else
                    {
                        // Appointment insertion failed
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Failed to schedule appointment')</script>");
                    }
                }
            }
        }
    }
}
        //{
        //    SqlConnection conn = new SqlConnection(css);
        //    string query = "select * from appointment where name=@n1 and email =@e1 and app_date=@a1  ";
        //    SqlCommand cmd = new SqlCommand(query, conn);
        //    cmd.Parameters.AddWithValue("@n1", nameField.Text);
        //    cmd.Parameters.AddWithValue("@e1", emailField.Text);

        //    cmd.Parameters.AddWithValue("@a1", appointmentDateField.Text);

        //    conn.Open();
        //    SqlDataReader dr = cmd.ExecuteReader();

        //    if (dr.HasRows)
        //    {
        //        Session["name"] = nameField.Text;
        //        Session["email"] = emailField.Text;

        //        Session["app_date"] = appointmentDateField.Text;
        //        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Login successful')</script>");
        //        Response.Redirect("WebForm1.aspx");
        //    }
        //    else
        //    {
        //        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Login failed')</script>");
        //    }

        //    conn.Close();
        //}
   // }
//}

//namespace WebAppEHR
//{
//    public partial class WebForm1 : System.Web.UI.Page
//    {

//        protected void Page_Load(object sender, EventArgs e)
//        {

//          //  string dbconnection = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;
//          //  var queryString = "SELECT * FROM appointment";
//          //  var dBC = new SqlConnection(dbconnection);
//          //  var dataAdapter = new SqlDataAdapter(queryString, dBC);
//          //  var commandbuilder = new SqlCommandBuilder(dataAdapter);
//          //  var ds = new DataSet();
//          ////  var ds = new DataSet();
//          //  dataAdapter.Fill(ds);

//          //GridView1.DataSource = ds.Tables[0];
//          //  GridView1.DataBind();
//        }


//        protected void SubmitButton_Click(object sender, EventArgs e)
//        {
//            // Retrieve form data
//            string name = nameField.Value;
//            string email = emailField.Value;
//            string appointmentDate = appointmentDateField.Value;
//            string doctor = doctorSelectField.Value;
//            string message = messageField.Value;
//            string department = departmentSelectField.SelectedValue;

//            //System.Diagnostics.Debug.WriteLine("Name: " + name);
//            //System.Diagnostics.Debug.WriteLine("Email: " + email);
//            //System.Diagnostics.Debug.WriteLine("Appointment Date: " + appointmentDate);
//            //System.Diagnostics.Debug.WriteLine("Doctor: " + doctor);
//            //System.Diagnostics.Debug.WriteLine("Message: " + message);
//            //System.Diagnostics.Debug.WriteLine("Department: " + department);

//            string connectionString = "Data Source=(local); Initial Catalog=project; Integrated  Security = True";

//            MyDAL myDal = new MyDAL(connectionString);

//            //   Attempt to insert the appointment
//            bool insertionSuccess = myDal.InsertAppointment(name, appointmentDate, message);

//            if (insertionSuccess)
//            {
//                //  Display a confirmation message
//                confirmationMessage.InnerHtml = "Your appointment request has been sent successfully. Thank you!";

//                //nameField.Value = "";
//                //emailField.Value = "";
//                //appointmentDateField.Value = "";
//                //departmentSelectField.SelectedIndex = 0;
//                //doctorSelectField.SelectedIndex = 0;
//                //messageField.Value = "";

//            }
//            else
//            {
//                //  Display an error message if insertion failed(optional)
//                confirmationMessage.InnerHtml = "Failed to send appointment request. Please try again later.";
//            }
//        }
//    }
//}
////    {
////        protected void Page_Load(object sender, EventArgs e)
////        {
////            // Your existing Page_Load logic, if any
////        }

////        protected void SubmitButton_Click(object sender, EventArgs e)
////        {
////            // Retrieve form data
////            string name = nameField.Value;
////            string email = emailField.Value;
////            string appointmentDate = appointmentDateField.Value;
////            string doctor = doctorSelectField.Value;
////            string message = messageField.Value;
////            string department = departmentSelectField.SelectedValue;

////            //System.Diagnostics.Debug.WriteLine("Name: " + name);
////            //System.Diagnostics.Debug.WriteLine("Email: " + email);
////            //System.Diagnostics.Debug.WriteLine("Appointment Date: " + appointmentDate);
////            //System.Diagnostics.Debug.WriteLine("Doctor: " + doctor);
////            //System.Diagnostics.Debug.WriteLine("Message: " + message);
////            //System.Diagnostics.Debug.WriteLine("Department: " + department);

////            string connectionString = "Data Source=(local); Initial Catalog=project; Integrated  Security = True";

////            MyDAL myDal = new MyDAL(connectionString);

////            //   Attempt to insert the appointment
////            bool insertionSuccess = myDal.InsertAppointment(name, appointmentDate, message);

////            if (insertionSuccess)
////            {
////                //  Display a confirmation message
////                confirmationMessage.InnerHtml = "Your appointment request has been sent successfully. Thank you!";

////                nameField.Value = "";
////                emailField.Value = "";
////                appointmentDateField.Value = "";
////                departmentSelectField.SelectedIndex = 0;
////                doctorSelectField.SelectedIndex = 0;
////                messageField.Value = "";

////            }
////            else
////            {
////                //  Display an error message if insertion failed(optional)
////                confirmationMessage.InnerHtml = "Failed to send appointment request. Please try again later.";
////            }
////        }
////    }
////}


////namespace WebAppEHR
////{
////    public partial class WebForm1 : System.Web.UI.Page
////    {
////        protected void Page_Load(object sender, EventArgs e)
////        {
////            System.Diagnostics.Debug.WriteLine("This is a debug message.1");

////            // Check if the request method is POST (form submission)

////            if (!IsPostBack)
////            {
////                System.Diagnostics.Debug.WriteLine("This is a debug message.2");
////                // This code block will execute only during postbacks
////                HandleFormSubmission();
////            }


////        }

////        protected void SubmitButton_Click(object sender, EventArgs e)
////        {
////            System.Diagnostics.Debug.WriteLine("This is a debug message.3");

////            // Handle form submission
////            HandleFormSubmission();
////        }

////        protected void HandleFormSubmission()
////        {
////            // Retrieve form data
////            string name = nameField.Value;
////            string email = emailField.Value;
////            string appointmentDate = appointmentDateField.Value;
////            string doctor = doctorSelectField.Value;
////            string message = messageField.Value;
////            string department = departmentSelectField.SelectedValue;

////            //Log form data
////            System.Diagnostics.Debug.WriteLine("Name: " + name);
////            System.Diagnostics.Debug.WriteLine("Email: " + email);
////            System.Diagnostics.Debug.WriteLine("Appointment Date: " + appointmentDate);
////            System.Diagnostics.Debug.WriteLine("Doctor: " + doctor);
////            System.Diagnostics.Debug.WriteLine("Message: " + message);
////            System.Diagnostics.Debug.WriteLine("Department: " + department);

////            //You can perform additional processing, such as saving data to a database, here
////            //Get the connection string from the DB management system and store it in config file(Google)
////            //Make a DB call to store the appt info in DB
////            //If and only if the db call returns success, display the below message

////            //  Display a confirmation message
////            confirmationMessage.InnerHtml = "Your appointment request has been sent successfully. Thank you!";
////        }


////        //     // Other methods and event handlers...

////        //TIPS:

////        //Use try catch to handle error scenarios
////        //Make sure that DB call is secure against SQL injections

////    }

////}