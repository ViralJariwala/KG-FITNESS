using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Data;

public partial class User_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string qry;
    int tid;
    string fname;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            BindState();
            int member_id = Convert.ToInt32(Request.QueryString.Get("member_id"));
            //int member_id = Convert.ToInt32(Session["member_id"].ToString());
            cn.Open();
            qry = "select * from Member where member_id=" + member_id;
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                Image1.ImageUrl = "~/MemberPhoto/" + Convert.ToString(dr["image"]);
                txt_fname.Text = dr["fname"].ToString();
                txt_lname.Text = dr["lname"].ToString();
                txt_address.Text = dr["address"].ToString();
                txt_email.Text = dr["email"].ToString();
                txt_dob.Text = dr["dob"].ToString();
                ddl_gender.SelectedValue = dr["gender"].ToString();
                ddl_state.SelectedValue = dr["state_id"].ToString();
                ddl_city.SelectedValue = dr["city_id"].ToString();

                txt_weight.Text = dr["weight"].ToString();
                txt_height.Text = dr["height"].ToString();
                txt_mobile.Text = dr["mobile"].ToString();
                BindCity(Convert.ToInt32(dr["city_id"]));
            }
            cn.Close();
        }
    }

    private void BindState()
    {
        SqlConnection sConn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
        sConn.Open();
        SqlCommand sComm = new SqlCommand();
        sComm.Connection = sConn;
        var qry = "SELECT * FROM [State]";
        sComm.CommandText = qry;
        SqlDataAdapter adp = new SqlDataAdapter(sComm);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        ddl_state.DataSource = ds;
        ddl_state.DataTextField = "state";
        ddl_state.DataValueField = "state_id";
        ddl_state.DataBind();

    }

    private void BindCity(int _CityId)
    {
        SqlConnection sConn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
        sConn.Open();
        SqlCommand sComm = new SqlCommand();
        sComm.Connection = sConn;
        var qry = "SELECT * FROM [City] where state_id=" + ddl_state.SelectedValue.ToString();
        sComm.CommandText = qry;
        SqlDataAdapter adp = new SqlDataAdapter(sComm);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        ddl_city.DataSource = ds;
        ddl_city.DataTextField = "city";
        ddl_city.DataValueField = "city_id";
        ddl_city.DataBind();
        if (_CityId != 0)
            ddl_city.SelectedValue = _CityId.ToString();
        //else
        //    ddl_city.SelectedValue = string.Empty;

        }

    protected void btn_savechanges_Click(object sender, EventArgs e)
    {
        int member_id = Convert.ToInt32(Request.QueryString.Get("member_id"));
        if (FileUpload1.HasFile)
        {
            if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/jpg" || FileUpload1.PostedFile.ContentType == "image/png")
            {
                fname = FileUpload1.FileName;
                ViewState["fname"] = FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath("~/MemberPhoto/" + ViewState["fname"]));
                Label1.Text = "File Uploaded Successfully...!!";
                Image1.ImageUrl = "~/MemberPhoto/" + ViewState["fname"];

                cn.Open();
                qry = "update member set fname='" + txt_fname.Text + "',lname='" + txt_lname.Text + "',address='" + txt_address.Text + "',email='" + txt_email.Text + "',dob='" + txt_dob.Text + "',gender='" + ddl_gender.SelectedItem.Value + "',state_id='" + ddl_state.SelectedItem.Value + "',city_id='" + ddl_city.SelectedItem.Value + "',height='" + txt_height.Text + "',weight='" + txt_weight.Text + "',mobile='" + txt_mobile.Text + "',image='" + ViewState["fname"].ToString() + "' where member_id='" + member_id + "'";
                cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
                cn.Close();
                Session["image"] = ViewState["fname"].ToString();
                Response.Redirect("UProfile.aspx");
            }
            else
            {
                Label1.Text = "Please Select Only JPG Or JPEG or PNG File";
            }
        }
        else
        {
            Label1.Text = "Please Select A File..!!";
        }

        cn.Open();
        qry = "update member set fname='" + txt_fname.Text + "',lname='" + txt_lname.Text + "',address='" + txt_address.Text + "',email='" + txt_email.Text + "',dob='" + txt_dob.Text + "',gender='" + ddl_gender.SelectedItem.Value + "',state_id='" + ddl_state.SelectedItem.Value + "',city_id='" + ddl_city.SelectedItem.Value + "',height='" + txt_height.Text + "',weight='" + txt_weight.Text + "',mobile='" + txt_mobile.Text + "' where member_id='" + member_id + "'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("UProfile.aspx");
    }

    protected void ddl_state_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            BindCity(0);
        }
        catch (Exception ex)
        {

            throw ex;
        }
    }
}