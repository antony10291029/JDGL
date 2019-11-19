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
    public partial class Test2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue=="0")
            {
                Response.Write("<script>alert('请选择房间类型！')</script>");
            }
            CumrooInfoModel model = new CumrooInfoModel()
            {
                CusName = Convert.ToString(TextBox1.Text),
                CusSex= Convert.ToString(RadioButtonList1.SelectedValue),
                CusPhone =Convert.ToString(TextBox2.Text),
                CusBodyId=Convert.ToString(TextBox3.Text),
                RTypeID = Convert.ToInt32(DropDownList1.SelectedValue),
                NumID = Convert.ToInt32(DropDownList2.SelectedValue),
                RightID = Convert.ToInt32(DropDownList3.SelectedValue)
            };
            if (Convert.ToInt32(CumrooInfoBLL.int_kaifang(model))>0)
            {
                Response.Write("<script>alert('添加成功！');</script>");
            }
        }
    }
}