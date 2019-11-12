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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text;
            string pwd = TextBox2.Text;
            UserBLL bll = new UserBLL();
            object result = bll.Login(name,pwd);
            int num = Convert.ToInt32(result);
            if (result == null)
            {
                Label1.Text = "用户名密码错误，请重新输入！";
            }
            else
            {
                Session.Add("UserID", num);
                Session.Add("UserCard", num);
                Response.Redirect("index.aspx");
            }
        }
        
    }
}