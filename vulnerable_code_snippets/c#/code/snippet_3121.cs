using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserInput : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string userInput = Request.QueryString["userinput"];
        Literal1.Text = "<b>" + userInput + "</b>";
    }
}