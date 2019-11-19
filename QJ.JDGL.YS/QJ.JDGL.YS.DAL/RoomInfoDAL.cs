using QJ.JDGL.YS.Modal;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QJ.JDGL.YS.DAL
{
    public class RoomInfoDAL
    {
        public static List<RoomInfoModel> sel_kaifang()
        {
            List<RoomInfoModel> list = new List<RoomInfoModel>();
            DataTable dt = SqlHelper.DBQuery("sel_kaifang");
            foreach (DataRow row in dt.Rows)
            {
                RoomInfoModel model = new RoomInfoModel()
                {
                    RTypeID = Convert.ToInt32(row["RTypeID"]),
                    RooType = Convert.ToString(row["RooType"]),
                    RooID = Convert.ToInt32(row["RooID"]),
                    Rooname = Convert.ToString(row["Rooname"]),
                    RooPrice = Convert.ToInt32(row["RooPrice"]),
                    IsRoo = Convert.ToBoolean(row["IsRoo"])
                };
                list.Add(model);
            }
            return list;
        }
    }
}
