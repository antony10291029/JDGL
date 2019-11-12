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
    public class LBH_DAL
    {
        public List<CustomInfoModel> getlist()
        {

            string sql = "select * from[JDGL].[dbo].[CustomInfo]";

            SqlDataReader reader = SqlHelper.QueryReader(sql);
            List<CustomInfoModel> users = new List<CustomInfoModel>();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    CustomInfoModel model = new CustomInfoModel();
                    model.CusID = Convert.ToInt32(reader["CusID"]);
                    model.CusName = reader["CusName"].ToString();
                    model.CusSex = reader["CusSex"].ToString();
                    model.CusPhone = reader["CusPhone"].ToString();
                    model.CusBodyId = reader["CusBodyId"].ToString();
                    users.Add(model);
                }
            }
            return users;
        }
        public List<RoomInfoModel> getfang()
        {
            string sql = "select * from[JDGL].[dbo].[RoomInfo]";
            SqlDataReader reader = SqlHelper.QueryReader(sql);
            List<RoomInfoModel> users = new List<RoomInfoModel>();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    RoomInfoModel model = new RoomInfoModel();
                    model.RooID = Convert.ToInt32(reader["RooID"]);
                    model.RTypeID = Convert.ToInt32(reader["RTypeID"]);
                    model.Rooname = reader["Rooname"].ToString();
                    model.RooPrice = Convert.ToInt32(reader["RooPrice"]);
                    model.IsRoo = Convert.ToBoolean(reader["IsRoo"]);
                    users.Add(model);
                }
            }
            return users;
        }
        public List<StaffModel> getyuan()
        {
            string sql = "select * from[JDGL].[dbo].[StaffInfo]";
            SqlDataReader reader = SqlHelper.QueryReader(sql);
            List<StaffModel> users = new List<StaffModel>();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    StaffModel model = new StaffModel();
                    model.StaID = Convert.ToInt32(reader["StaID"]);
                    model.StaName = reader["StaName"].ToString();
                    model.StaSex = reader["StaSex"].ToString();
                    model.StaPhone = reader["StaPhone"].ToString();
                    model.StaCard = reader["StaCard"].ToString();
                    model.IsWork = Convert.ToBoolean(reader["IsWork"]);
                    users.Add(model);
                }
            }
            return users;
        }

        public List<tousuModel> gettousu()
        {
            string sql = "select * from [JDGL].[dbo].[tousu]";
            SqlDataReader reader = SqlHelper.QueryReader(sql);
            List<tousuModel> users = new List<tousuModel>();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    tousuModel model = new tousuModel();
                    model.touid = Convert.ToInt32(reader["touid"]);
                    model.touname = reader["touname"].ToString();
                    model.toufang = Convert.ToInt32( reader["toufang"]);
                    model.toudui = reader["toudui"].ToString();
                    model.touliyou = reader["touliyou"].ToString();
                    users.Add(model);
                }
            }
            return users;
        }
        public int addUser(tousuModel model)
        {
            string sql = @"insert into [JDGL].[dbo].[tousu](touname,toufang,toudui,touliyou) values (@touname,@toufang,@toudui,@touliyou)";
            List<SqlParameter> parameters = new List<SqlParameter>();
            parameters.Add(new SqlParameter("@touname", model.touname));
            parameters.Add(new SqlParameter("@toufang", model.toufang));
            parameters.Add(new SqlParameter("@toudui", model.toudui));
            parameters.Add(new SqlParameter("@touliyou", model.touliyou));
            //string sqlExist = "select UserID from [Test].[dbo].[UserInfo] where username=@name and isdelete=0";
            //SqlParameter[] sqlp = new SqlParameter[1];
            //sqlp[0] = new SqlParameter("@touname", model.username);
            //object obj = SqlHelper.NoQuery(sqlExist, sqlp);
            int result = 0;
            //if (obj != null)
            //{
            //    result = 100;
            //    return result;
            //}
            result = SqlHelper.NoQuery(sql, parameters.ToArray());
            return result;
        }
    }
}
