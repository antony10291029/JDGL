using QJ.JDGL.YS.DAL;
using QJ.JDGL.YS.Modal;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QJ.JDGL.YS.BLL
{
    public class RoomInfoBLL
    {
        public static List<RoomInfoModel> sel_kaifang()
        {
            return RoomInfoDAL.sel_kaifang();
        }
    }
}
