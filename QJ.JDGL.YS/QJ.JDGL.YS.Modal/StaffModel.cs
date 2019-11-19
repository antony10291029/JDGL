using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QJ.JDGL.YS.Modal
{
    public class StaffModel
    {
        public int StaID { get; set; }
        public string StaName { get; set; }
        public string StaSex { get; set; }
        public string StaPhone { get; set; }
        public string StaCard { get; set; }
        public bool IsWork { get; set; }
        public string UserPwd { get; set; }
        public int UserCard { get; set; }
        public int UserID { get; set; }


        public string UserName { get; set; }

        public string UserCardStr
        {
            get
            {
                if (UserCard == 1) { return "老板"; }
                if (UserCard == 2) { return "经理"; }
                if (UserCard == 3) { return "员工"; }
                return "";
            }
            set { }
        }

        public string isworkstring
        {
            get
            {
                if (IsWork == true)
                {
                    return "是";
                }
                if (IsWork == false)
                {
                    return "否";
                }
                return "";
            }
            set
            {

            }
        }
    }
}
