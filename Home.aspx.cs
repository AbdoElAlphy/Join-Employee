using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JoinEmp
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*
              if (!IsPostBack)
              {
                  string secretKey = "cpc2026";

                  string userKey = Request.QueryString["key"];

                  if (Session["IsAuthorized"] == null)
                  {
                      if (userKey == secretKey)
                      {
                          Session["IsAuthorized"] = true;
                      }
                      else
                      {
                          Response.Write("<div style='text-align:center; margin-top:50px; font-family:sans-serif;'>" +
                                         "<h2 style='color:red;'>عفواً، هذا الرابط خاص وغير مسموح لك بالدخول.</h2>" +
                                         "</div>");
                          Response.End();
                          return;
                      }
                  }
              */
        }
    
    }
}