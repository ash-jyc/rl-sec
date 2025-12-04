using System;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string userInput = Request.QueryString["userInput"];
        Response.Write("User Input: " + userInput);
    }
}