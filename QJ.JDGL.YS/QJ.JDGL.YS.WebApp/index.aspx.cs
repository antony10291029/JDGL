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
    public partial class index : System.Web.UI.Page
    {
        UserBLL bll = new UserBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //if (Session["UserID"] == null)
                //{
                //    Response.Redirect("login.aspx");
                //}
                //else
                //{
                    UserModel model = GetUserByID(Convert.ToInt32(Session["UserID"]));
                if (model.UserCard==1)
                {
                    Label1.Text = "欢迎GM";
                }
                else if(model.UserCard==2)
                {
                    Label1.Text = "欢迎AM";
                }
                else
                {
                    Label1.Text = "欢迎Waiter";
                }
                //}
            }

        }

        public UserModel GetUserByID(int UserID)
        {
            UserModel model = bll.GetUserId(UserID);
            return model;
        }
    }
}