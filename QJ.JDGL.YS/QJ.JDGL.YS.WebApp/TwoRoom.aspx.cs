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
    public partial class TwoRoom : System.Web.UI.Page
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
                UserModel model = bll.GetUserId(Convert.ToInt32(Session["UserID"]));
                if (model.UserCard == 1)
                {
                    Label1.Text = "欢迎GM";
                }
                else if (model.UserCard == 2)
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

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" && TextBox2.Text == "" && TextBox3.Text == "" && DropDownList1.SelectedValue == "0" && DropDownList2.SelectedValue == "0" && DropDownList3.SelectedValue == "0")
            {
                Response.Write("<script>alert('请将信息填写完整！')</script>");
            }
            else
            {
                CumrooInfoModel model = new CumrooInfoModel()
                {
                    CusName = Convert.ToString(TextBox1.Text),
                    CusSex = Convert.ToString(RadioButtonList1.SelectedValue),
                    CusPhone = Convert.ToString(TextBox2.Text),
                    CusBodyId = Convert.ToString(TextBox3.Text),
                    RTypeID = Convert.ToInt32(DropDownList1.SelectedValue),
                    NumID = Convert.ToInt32(DropDownList2.SelectedValue),
                    RightID = Convert.ToInt32(DropDownList3.SelectedValue)
                };
                if (Convert.ToInt32(CumrooInfoBLL.int_kaifang(model)) > 0)
                {
                    Response.Write("<script>alert('添加成功！');location.href='OneRoom.aspx'</script>");
                }
                else
                {
                    Response.Write("<script>alert('该房源暂时紧缺！')");
                }
            }
        }
    }
}