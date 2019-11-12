using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QJ.JDGL.YS.Modal
{
    public class UserModel
    {
        /// <summary>
        /// 用户编号 
        /// </summary>
        public int UserID { get; set; }
        /// <summary>
        /// 登录名
        /// </summary>
        public string UserName { get; set; }
        /// <summary>
        /// 密码
        /// </summary>
        public string UserPwd { get; set; }
        /// <summary>
        /// 身份 1 老板 2经理 3员工
        /// </summary>
        public int UserCard { get; set; }
    }
}
