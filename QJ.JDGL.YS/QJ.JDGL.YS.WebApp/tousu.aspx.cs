using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using QJ.JDGL.YS.BLL;
using QJ.JDGL.YS.Modal;

namespace QJ.JDGL.YS.WebApp
{
    public partial class tousu : System.Web.UI.Page
    {
        LBH_BLL bll = new LBH_BLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                DropDownList1.DataSource = bll.getlist();
                DropDownList1.DataTextField = "CusName";
                DropDownList1.DataValueField = "CusID";
                DropDownList1.DataBind();
                DropDownList2.DataSource = bll.getfang();
                DropDownList2.DataTextField = "RooID";
                DropDownList2.DataValueField = "RooID";
                DropDownList2.DataBind();
                DropDownList3.DataSource = bll.getyuan();
                DropDownList3.DataTextField = "StaName";
                DropDownList3.DataValueField = "StaID";
                DropDownList3.DataBind();

            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "")
            {
                ClientScript.RegisterStartupScript(GetType(), "", "alert('请输入您投诉的理由" +
                    "');window.location='tousu.aspx';", true);
                //Response.Write("<script>alert('请输入您的投诉理由！')</script>");
                return;
            }
            else
            {
                tousuModel model = new tousuModel();
                model.touname = DropDownList1.SelectedItem.Text;
                model.toufang = Convert.ToInt32(DropDownList2.SelectedItem.Text);
                model.toudui = DropDownList3.SelectedItem.Text;
                model.touliyou = TextBox1.Text;
                LBH_BLL blll = new LBH_BLL();
                int result = 0;
                result = blll.addUser(model);

                if (result > 0)
                {
                    ClientScript.RegisterStartupScript(GetType(), "", "alert('添加成功');window.location='tousu.aspx';", true);
                    //Response.Write("<script>alert('保存成功！')</script>");
                    return;
                }
            }
        }
    }
}