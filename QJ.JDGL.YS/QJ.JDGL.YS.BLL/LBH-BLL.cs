using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using QJ.JDGL.YS.DAL;
using QJ.JDGL.YS.Modal;

namespace QJ.JDGL.YS.BLL
{
    public class LBH_BLL
    {
        LBH_DAL dal = new LBH_DAL(); 
        public List<CustomInfoModel> getlist()
        {
            return dal.getlist();
        }
        public List<RoomInfoModel> getfang()
        {
            return dal.getfang();
        }
        public List<StaffModel> getyuan()
        {
            return dal.getyuan();
        }
        public int addUser(tousuModel model)
        {
            return dal.addUser(model);
        }
        public List<tousuModel> gettousu()
        {
            return dal.gettousu();
        }
    }
}
