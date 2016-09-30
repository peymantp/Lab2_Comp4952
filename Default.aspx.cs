using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBoxAnnual.Text = "";
        TextBoxYears.Text = "";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        clearError();
        if (Page.IsValid){
            var value = int.Parse(DropDownList.Text) * Math.Pow( (1 + ((int.Parse(TextBoxAnnual.Text)/100 + 1) / 1)), int.Parse(TextBoxYears.Text));
            LabelValue.Text = value + "";
        } else
        {
            Valid();
        }
    }

    private void Valid()
    {
        if (String.IsNullOrWhiteSpace(TextBoxAnnual.Text))
        {
            LabelAnnualError.Text = "Can't leave blank";
        }
        else
        {
            LabelAnnualError.Text = "Select an interest rate from 1 to 23! This field is required!";
        }

        if (String.IsNullOrWhiteSpace(TextBoxYears.Text))
        {
            LabelYearError.Text = "Can't leave blank";
        } 
        else
        {
            LabelYearError.Text = "Number of years possible range is 1 to 45! This field is required!";
        }
    }

    private void clearError()
    {
        LabelYearError.Text = "";
        LabelAnnualError.Text = "";
    }
}