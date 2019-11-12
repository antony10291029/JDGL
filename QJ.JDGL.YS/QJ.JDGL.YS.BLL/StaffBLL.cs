using QJ.JDGL.YS.DAL;
using QJ.JDGL.YS.Modal;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QJ.JDGL.YS.BLL
{
    public class StaffBLL
    {
        public static StaffModel GetStaffPwd(string StaPhone)
        {
            return StaffDAL.GetStaffPwd(StaPhone);
        }
    }
}
