using QJ.JDGL.YS.DAL;
using QJ.JDGL.YS.Modal;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QJ.JDGL.YS.BLL
{
    public class UserBLL
    {
        UserDAL dal = new UserDAL();
        public object Login(string UserName, string UserPwd)
        {
            return dal.Login(UserName, UserPwd);
        }

        public UserModel GetUserId(int UserID)
        {
            return dal.GetUserId(UserID);
        }
    }
}
