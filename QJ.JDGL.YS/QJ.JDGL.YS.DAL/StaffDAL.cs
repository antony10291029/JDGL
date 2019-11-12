using QJ.JDGL.YS.Modal;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QJ.JDGL.YS.DAL
{
    public class StaffDAL
    {
        public static StaffModel GetStaffPwd(string StaPhone)
        {
            StaffModel model = new StaffModel();
            string sql = "select [StaPhone],[UserCard],[UserPwd] from [JDGL].[dbo].[StaffInfo] a,[JDGL].[dbo].[UserInfo] b where a.UserID = b.UserID and StaPhone = @StaPhone";
            SqlParameter[] sqlp = new SqlParameter[1];
            sqlp[0] = new SqlParameter("@StaPhone", StaPhone);
            SqlDataReader sdr = SqlHelper.QueryReader(sql, sqlp);
            if (sdr.HasRows)
            {
                while (sdr.Read())
                {
                    model.UserCard = int.Parse(sdr["UserCard"].ToString());
                    model.StaPhone = sdr["StaPhone"].ToString();
                    model.UserPwd = sdr["UserPwd"].ToString();
                }
            }
            return model;
        }
    }
}
