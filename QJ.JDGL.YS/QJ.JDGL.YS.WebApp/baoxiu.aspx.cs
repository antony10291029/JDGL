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
    public partial class baoxiu : System.Web.UI.Page
    {
        LBH_BLL bll = new LBH_BLL();
        int baoid;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Repeater1.DataSource = bll.getbaoxiu();
                Repeater1.DataBind();


            }
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            string cmdType = e.CommandName;
            baoid = Convert.ToInt32(e.CommandArgument);

            if (cmdType == "update")
            {

                int result = bll.update(Convert.ToInt32(baoid));
                if (result > 0)
                {

                    ClientScript.RegisterStartupScript(GetType(), "", "alert('处理成功');window.location='baoxiu.aspx';", true);
                    baoxiuModel ss = bll.getbaoxiu(Convert.ToInt32(baoid));
                    int s = ss.ischuli;
                    if (s == 1)
                    {
                        LinkButton link = e.Item.FindControl("LinkButton1") as LinkButton;
                        link.Enabled = false;
                    }
                    return;
                    //Response.Redirect("tousu.aspx");
                }
                else
                {
                    Response.Write("<script>alert('处理失败！')</script>");
                    return;
                }
            }
        }
    }
}