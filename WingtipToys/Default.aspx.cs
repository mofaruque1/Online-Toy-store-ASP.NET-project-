using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WingtipToys
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (HttpContext.Current.Session["CartSessionKey"] == null)
            //{
            //    if (!string.IsNullOrWhiteSpace(HttpContext.Current.User.Identity.Name))
            //    {
            //        HttpContext.Current.Session["CartSessionKey"] = HttpContext.Current.User.Identity.Name;
            //    }
            //    else
            //    {
            //        // Generate a new random GUID using System.Guid class.     
            //        Guid tempCartId = Guid.NewGuid();
            //        HttpContext.Current.Session["CartSessionKey"] = tempCartId.ToString();
            //    }
            //    messageLabel.Text= HttpContext.Current.Session["CartSessionKey"].ToString();


        
        }
    }
}
