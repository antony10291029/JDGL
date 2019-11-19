using QJ.JDGL.YS.Modal;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace QJ.JDGL.YS.DAL
{
    public class CumrooInfoDAL
    {
        
        public static int int_kaifang(CumrooInfoModel model)
        {
            SqlParameter[] sqlp = new SqlParameter[]
            {
                new SqlParameter("@CusName",model.CusName),
                new SqlParameter("@CusSex",model.CusSex),
                new SqlParameter("@CusPhone",model.CusPhone),
                new SqlParameter("@CusBodyId",model.CusBodyId),
                new SqlParameter("@RTypeID",model.RTypeID),
                new SqlParameter("@NumID",model.NumID),
                new SqlParameter("@RightID",model.RightID)
            };
            return SqlHelper.DBNoQuery("ins_kaifang",sqlp);
        }
    }
}
