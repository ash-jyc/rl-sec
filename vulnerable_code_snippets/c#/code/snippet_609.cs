using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string userInput = Request.QueryString["userInput"];
        Response.Write("<p>" + userInput + "</p>");
    }
}