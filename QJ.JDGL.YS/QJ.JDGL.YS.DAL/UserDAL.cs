using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using QJ.JDGL.YS.Modal;

namespace QJ.JDGL.YS.DAL
{
    public class UserDAL
    {
        public object Login(string UserName, string UserPwd)
        {
            string sql = "select * from [JDGL].[dbo].[UserInfo] where UserName=@UserName and UserPwd=@UserPwd";
            SqlParameter[] sqlp = new SqlParameter[] {
                new SqlParameter("@UserName",UserName),
                new SqlParameter("@UserPwd",UserPwd)
            };
            object result = SqlHelper.Query(sql,sqlp);
            return result;
        }

        public UserModel GetUserId(int UserID)
        {
            UserModel model = new UserModel();
            string sql = "select * from [JDGL].[dbo].[UserInfo] where UserID=@UserID";
            SqlParameter[] sqlp = new SqlParameter[1];
            sqlp[0] = new SqlParameter("@UserID",UserID);
            SqlDataReader sdr = SqlHelper.QueryReader(sql,sqlp);
            if (sdr.HasRows)
            {
                while (sdr.Read())
                {
                    model.UserID =int.Parse(sdr["UserID"].ToString());
                    model.UserName = sdr["UserName"].ToString();
                    model.UserPwd = sdr["UserPwd"].ToString();
                    model.UserCard = int.Parse(sdr["UserCard"].ToString());
                }
            }
            return model;
        }
    }
}
