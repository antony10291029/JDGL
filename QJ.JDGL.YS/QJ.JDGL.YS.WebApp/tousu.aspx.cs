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
                Repeater1.DataSource = bll.gettousu();
                Repeater1.DataBind();
            }

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            tousuModel model = new tousuModel();
            model.touname = DropDownList1.SelectedItem.Text;
            model.toufang = Convert.ToInt32(DropDownList2.SelectedItem.Text);
            model.toudui = DropDownList3.SelectedItem.Text;
            model.touliyou = TextBox1.Text;
            LBH_BLL bll = new LBH_BLL();
            int result = 0;
            result = bll.addUser(model);
            if (result > 0)
            {
                if (result == 100)
                {
                    ClientScript.RegisterStartupScript(GetType(), "", "alert('添加的用户已经存在！');", true);
                }
                ClientScript.RegisterStartupScript(GetType(), "", "alert('保存成功！');", true);
            }
        }
    }
}