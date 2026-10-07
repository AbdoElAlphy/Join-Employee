using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JoinEmp
{
    public partial class Log_In : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid) return;

            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text;

            // لسه من غير قاعدة بيانات متربطة، ده مكان التحقق من بيانات الدخول بعدين
            lblResult.Text = "";
            // مثال لما تجهز قاعدة البيانات:
            // Response.Redirect("Dashboard.aspx");
        }

        protected void lnkForgotPassword_Click(object sender, EventArgs e)
        {
            // لسه الزرار ده من غير رابط فعلي، هنربطه بصفحة استرجاع كلمة المرور بعدين
            lblResult.Text = "Password recovery page is not ready yet.";
        }
    
    }
}