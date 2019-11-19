using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using QJ.JDGL.YS.Modal;
using QJ.JDGL.YS.BLL;

namespace QJ.JDGL.YS.WebApp
{
    public partial class StaffInfo : System.Web.UI.Page
    {
        public StaffInfoBLL bll = new StaffInfoBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = bll.select();
            Repeater1.DataBind();
        }
        int num = 0;
        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            string stype = e.CommandName;
            string StaID = e.CommandArgument.ToString();
            if (stype == "delete")
            {
                if (bll.stuinfodelete(Convert.ToInt32(StaID)) > 0)
                {
                    Response.Redirect("staffInfo.aspx");
                }
            }
            else
            {
                num = Convert.ToInt32(StaID);
                StaffModel model = bll.stuinfoupdateID(Convert.ToInt32(StaID));
                Label2.Text = model.UserID.ToString();
                TextBox2.Text = model.StaName;
                if (model.StaSex == "男")
                {
                    RadioButton3.Checked = true;
                    RadioButton4.Checked = false;
                }
                else
                {
                    RadioButton3.Checked = false;
                    RadioButton4.Checked = true;
                }
                TextBox3.Text = model.StaPhone;
                TextBox4.Text = model.StaCard;
                int iswork = model.IsWork == true ? 1 : 0;
                foreach (ListItem item in DropDownList3.Items)
                {
                    if (Convert.ToInt32(item.Value) == iswork)
                    {
                        item.Selected = true;
                    }
                }

            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int UserCard = Convert.ToInt32(DropDownList1.SelectedValue);
            string StaName = TextBox1.Text;
            string StaSex;
            if (RadioButton1.Checked)
            {
                StaSex = RadioButton1.Text;
            }
            else
            {
                StaSex = RadioButton2.Text;
            }
            int IsWork = Convert.ToInt32(DropDownList2.SelectedValue);
            Repeater1.DataSource = bll.select(UserCard, StaName, StaSex, IsWork);
            Repeater1.DataBind();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            StaffModel model = new StaffModel();
            //model.UserID = Convert.ToInt32(Label1.Text);
            model.UserID = 1;
            model.StaName = TextBox2.Text;
            if (RadioButton3.Checked)
            {
                model.StaSex = RadioButton1.Text;
            }
            else
            {
                model.StaSex = RadioButton2.Text;
            }
            model.StaPhone = TextBox3.Text;
            model.StaCard = TextBox4.Text;
            model.IsWork = Convert.ToInt32(DropDownList3.SelectedValue) == 1 ? true : false;
            int StaID = num;
            model.StaID = Convert.ToInt32(StaID);
            model.UserName = "1234";
            model.UserPwd = "123456";
            model.UserCard = 1;
            if (StaID != 0)
            {
                if (bll.stuinfoupdate(model) > 0)
                {
                    Response.Write("<script>alert('更新成功');location.href='StaffInfo.aspx'</script>");
                }
                else
                {
                    Response.Write("<script>alert('添加失败')</script>");
                }
            }
            else
            {
                if (bll.stuinfoadd(model) > 0)
                {
                    Response.Write("<script>alert('添加成功');location.href='staffinfo.aspx'</script>");
                }
                else
                {
                    Response.Write("<script>alert('添加失败')</script>");
                }
            }
        }
    }
}