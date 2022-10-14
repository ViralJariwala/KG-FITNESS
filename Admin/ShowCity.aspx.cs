using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Admin_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string qry;   
    int s,cid, sid;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataAdapter sda = new SqlDataAdapter("select * from State st,city ct where ct.state_id=st.state_id ", cn);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        Repeater1.DataSource = dt;
        Repeater1.DataBind();


        //    cn.Open();
        //    qry = "select * from City";
        //    cmd = new SqlCommand(qry, cn);
        //    SqlDataAdapter adp1 = new SqlDataAdapter(cmd);
        //    DataSet ds1 = new DataSet();
        //    adp1.Fill(ds1);
        //    cn.Close();
        //    s = ds1.Tables[0].Rows.Count;

        //    cn.Open();
        //    qry = "select * from City";
        //    cmd = new SqlCommand(qry, cn);
        //    dr = cmd.ExecuteReader();
        //    if (dr.HasRows)
        //    {
        //        dr.Read();
        //        cid = Convert.ToInt32(dr["city_id"]);
        //    }
        //    for (int i = 1; i <= s; i++)
        //    {
        //        cn.Close();
        //        cn.Open();
        //        qry = "select * from City where city_id='" + cid + "'";
        //        cmd = new SqlCommand(qry, cn);
        //        dr = cmd.ExecuteReader();
        //        if (dr.HasRows)
        //        {
        //            dr.Read();
        //            sid = Convert.ToInt32(dr["state_id"]);
        //            lbl_cname.Text = dr["city"].ToString();

        //            cn.Close();
        //            cn.Open();
        //            qry = "select * from State where state_id='" + sid + "'";
        //            cmd = new SqlCommand(qry, cn);
        //            dr = cmd.ExecuteReader();
        //            if (dr.HasRows)
        //            {
        //                dr.Read();
        //                lbl_sname.Text = dr["state"].ToString();
        //            }
        //            cn.Close();
        //            cid++;
        //        }           
        //       else
        //        {
        //            cid++;
        //            i--;
        //        }
        //    }
    }
}









