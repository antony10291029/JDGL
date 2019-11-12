using QJ.JDGL.YS.BLL;
using QJ.JDGL.YS.Modal;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QJ.JDGL.YS.WebApp
{
    public partial class Forget : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string phone = TextBox1.Text;
            StaffModel model =StaffBLL.GetStaffPwd(phone);
            if (model == null)
            {
                Label1.Visible=true;
            }
            else
            {
                Response.Write("<script>alert('您的密码为：" + model.UserPwd + "')</script>");
            }
        }
    }
}