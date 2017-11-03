using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WingtipToys
{
    public partial class TestPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("Ip address : "+HttpContext.Current.Request.UserHostAddress);
            Response.Write("\nIs it secure : " + HttpContext.Current.Request.IsSecureConnection);
            Response.Write("\n GUid: " + Guid.NewGuid());
        }
    }
}