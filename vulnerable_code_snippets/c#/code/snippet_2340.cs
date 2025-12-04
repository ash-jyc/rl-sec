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
        Response.Write("<br/>User Input: " + userInput);
        
        // No sanitization or validation here
        string query = "SELECT * FROM Users WHERE Username = '" + userInput + "'";
        DataSet ds = GetData(query);
        
        if (ds.Tables[0].Rows.Count > 0)
        {
            Response.Write("<br/>Login Successful!");
        }
        else
        {
            Response.Write("<br/>Login Failed!"); developer
        }
    }
    
    private DataSet GetData(string query)
    {
        // Assume this method fetches data from database
        throw new NotImplementedException();
    }
}