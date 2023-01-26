using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace task
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["bavya"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gvbind();
            }

        }
        protected void gvbind()
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from employees", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    grdEmployee.DataSource = dr;
                    grdEmployee.DataBind();
                }
            }
        }
        protected void grdEmployee_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdEmployee.EditIndex = e.NewEditIndex;
            gvbind();
        }
        protected void grdEmployee_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdEmployee.EditIndex = -1;
            gvbind();
        }
        protected void grdEmployee_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(grdEmployee.DataKeys[e.RowIndex].Value.ToString());
            string name = ((TextBox)grdEmployee.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            string department = ((DropDownList)grdEmployee.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string sex = ((RadioButton)grdEmployee.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            string marital = ((DropDownList)grdEmployee.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
            string salary = ((TextBox)grdEmployee.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
            string address = ((TextBox)grdEmployee.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("update employees set EmployeeName='" + name + "',EmployeeId='" + id + "',Department='" + department + "',Sex='" + sex + "',Marital Status='" + marital + "',Salary='" + salary + "',Address='" + address + "'", con);
                int t = cmd.ExecuteNonQuery();
                if (t > 0)
                {
                    Response.Write("<script> alert('successfully updated')</script>");
                    grdEmployee.EditIndex = -1;
                    gvbind();
                }


            }
        }
        protected void grdEmployee_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(grdEmployee.DataKeys[e.RowIndex].Value.ToString());
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("delete from Employees where Employee Id='" + id + "'", con);
                int t = cmd.ExecuteNonQuery();
                if (t > 0)
                {
                    Response.Write("<script> alert('Deleted successfully')</script>");
                    grdEmployee.EditIndex = -1;
                    gvbind();
                }
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }

        protected void grdEmployee_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}