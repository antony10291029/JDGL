using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using QJ.JDGL.YS.DAL;
using QJ.JDGL.YS.Modal;

namespace QJ.JDGL.YS.BLL
{
    public class StaffInfoBLL
    {
        public StaffInfoDAL dal = new StaffInfoDAL();
        /// <summary>
        /// 查询列表
        /// </summary>
        /// <returns></returns>
        public List<StaffModel> select(int UserCard = 0, string StaName = "", string StaSex = "", int IsWork = 2)
        {
            return dal.select(UserCard, StaName, StaSex, @IsWork);
        }
        /// <summary>
        /// 添加
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public int stuinfoadd(StaffModel model)
        {
            return dal.stuinfoadd(model);
        }
        /// <summary>
        /// 删除
        /// </summary>
        /// <param name="StaID"></param>
        /// <returns></returns>
        public int stuinfodelete(int StaID)
        {
            return dal.stuinfodelete(StaID);
        }
        /// <summary>
        /// 更新
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public int stuinfoupdate(StaffModel model)
        {
            return dal.stuinfoupdate(model);
        }

        public StaffModel stuinfoupdateID(int StaID)
        {
            return dal.stuinfoupdateID(StaID);
        }
    }
}
