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
        public List<baoxiuModel> getbaoxiu()
        {
            return dal.getbaoxiu();
        }
        public baoxiuModel getbaoxiu(int baoid)
        {
            return dal.getbaoxiu(baoid);
        }
            public int delete(int touid)
        {
            return dal.delete(touid);
        }
        public int deletebao(int baoid)
        {
            return dal.deletebao(baoid);
        }
        public int insbaoxiu(baoxiuModel model)
        {
            return dal.insbaoxiu(model);
        }
        public int update(int baoid )
        {
            return dal.update(baoid);
        }
    }
}
