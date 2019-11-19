using QJ.JDGL.YS.DAL;
using QJ.JDGL.YS.Modal;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QJ.JDGL.YS.BLL
{
    public class CumrooInfoBLL
    {
        public static int int_kaifang(CumrooInfoModel model)
        {
            return CumrooInfoDAL.int_kaifang(model);
        }
    }
}
