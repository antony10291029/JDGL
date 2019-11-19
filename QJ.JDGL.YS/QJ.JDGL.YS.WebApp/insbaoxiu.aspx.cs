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
    public partial class insbaoxiu : System.Web.UI.Page
    {
        LBH_BLL bll = new LBH_BLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownList2.DataSource = bll.getfang();
                DropDownList2.DataTextField = "RooID";
                DropDownList2.DataValueField = "RooID";
                DropDownList2.DataBind();
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (TextBox2.Text == "")
            {
                ClientScript.RegisterStartupScript(GetType(), "", "alert('请输入您的姓名" +
                    "');window.location='insbaoxiu.aspx';", true);
                //Response.Write("<script>alert('请输入您的投诉理由！')</script>");
                return;
            }
            else
            {
                if (TextBox3.Text == "")
                {
                    ClientScript.RegisterStartupScript(GetType(), "", "alert('请输入损坏物品的名称" +
                    "');window.location='insbaoxiu.aspx';", true);
                    //Response.Write("<script>alert('请输入您的投诉理由！')</script>");
                    return;
                }
                baoxiuModel model = new baoxiuModel();
                model.baoname = TextBox2.Text;
                model.baofang = Convert.ToInt32(DropDownList2.SelectedItem.Text);
                model.wupin = TextBox3.Text;
                model.shijian = DateTime.Now.ToString();
                //model.ischuli = Convert.ToInt32("");
                LBH_BLL blll = new LBH_BLL();
                int result = 0;
                result = blll.insbaoxiu(model);

                if (result > 0)
                {
                    ClientScript.RegisterStartupScript(GetType(), "", "alert('添加成功');window.location='insbaoxiu.aspx';", true);
                    //Response.Write("<script>alert('保存成功！')</script>");
                    return;
                }
            }
        }
    }
}