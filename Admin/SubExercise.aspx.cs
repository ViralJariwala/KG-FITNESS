﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string qry;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_submit_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "insert into sub_exercise values('" + ddl_exercise.SelectedItem.Value + "','" + txt_sub_exercise.Text + "')";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        cn.Close();
        Response.Redirect("SubExercise.aspx");
    }
}