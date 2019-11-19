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
    public partial class seltousu : System.Web.UI.Page
    {
        LBH_BLL bll = new LBH_BLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Repeater1.DataSource = bll.gettousu();
                Repeater1.DataBind();
            }
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            string cmdType = e.CommandName;
            string touid = e.CommandArgument.ToString();
            if (cmdType == "delete")
            {
                LBH_BLL bll = new LBH_BLL();
                int result = bll.delete(Convert.ToInt32(touid));
                if (result > 0)
                {
                    ClientScript.RegisterStartupScript(GetType(), "", "alert('处理成功');window.location='seltousu.aspx';", true);
                    return;
                }
                else
                {
                    Response.Write("<script>alert('删除失败！')</script>");
                    return;
                }
            }
        }
    }
}