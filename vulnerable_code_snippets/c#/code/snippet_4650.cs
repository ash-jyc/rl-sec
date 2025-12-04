using System;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebForm1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string userInput = Request.QueryString["userInput"];
        Response.Write("<div>" + userInput + "</div>");
    }
}