using System;
using System.Collections.Generic;
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

                // Here you should implement your logic to check the admin credentials.
                // For example, you can compare the entered adminID and password with values in your database.
                // For demonstration, let's assume the correct adminID is "admin" and the password is "password".
                if (adminID == "admin" && password == "password")
                {
                    // Successful login
                    lblmsg.Text = "Login successful";
                    // Redirect to admin dashboard or any other page
                    Response.Redirect("~/admin/dashboard.aspx");
                }
                else
                {
                    // Failed login
                    lblmsg.Text = "Invalid admin ID or password";
                }
            }
        }
    
}