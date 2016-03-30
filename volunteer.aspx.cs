using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class volunteer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void txtToUserContact_Click(object sender, EventArgs e)
    {
        Session["VolSignature"] = txtSignature.Text;
        Response.Redirect("userContact.aspx");
    }
}