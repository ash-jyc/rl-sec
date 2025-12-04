using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string userInput = Request.QueryString["input"];
        char[] buffer = new char[10];
        for (int i = 0; i < userInput.Length; i++)
        {
            buffer[i] = userInput[i]; // Possible buffer overflow here
        }
        string output = new string(buffer);
        Response.Write(output);
    }
}