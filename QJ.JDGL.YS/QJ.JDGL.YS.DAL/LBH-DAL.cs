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
        public List<baoxiuModel> getbaoxiu()
        {
            string sql = "select * from [JDGL].[dbo].[baoxiu]";
            SqlDataReader reader = SqlHelper.QueryReader(sql);
            List<baoxiuModel> users = new List<baoxiuModel>();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    baoxiuModel model = new baoxiuModel();
                    model.baoid = Convert.ToInt32(reader["baoid"]);
                    model.baoname = reader["baoname"].ToString();
                    model.baofang = Convert.ToInt32(reader["baofang"]);
                    model.wupin = reader["wupin"].ToString();
                    model.shijian = reader["shijian"].ToString();
                    model.ischuli = Convert.ToInt32(reader["ischuli"]);
                    model.chushijian =reader["chushijian"].ToString();
                    users.Add(model);
                }
            }
            return users;
        }
        public baoxiuModel getbaoxiu(int baoid)
        {
            LBH_DAL lb = new LBH_DAL();
            return lb.getbaoxiu().FirstOrDefault(p=>p.baoid==baoid);
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
        public int delete(int touid)
        {
            string sql = @"delete [JDGL].[dbo].[tousu] where touid=@touid";
            SqlParameter[] sqlp = new SqlParameter[1];
            sqlp[0] = new SqlParameter("@touid", touid);
            int result = SqlHelper.NoQuery(sql, sqlp);
            return (result);
        }
        public int deletebao(int baoid)
        {
            string sql = @"delete [JDGL].[dbo].[baoxiu] where baoid=@baoid";
            SqlParameter[] sqlp = new SqlParameter[1];
            sqlp[0] = new SqlParameter("@baoid", baoid);
            int result = SqlHelper.NoQuery(sql, sqlp);
            return (result);
        }

        public int insbaoxiu(baoxiuModel model)
        {
            string sql = @"insert into [JDGL].[dbo].[baoxiu](baoname,baofang,wupin,shijian,ischuli,chushijian) values (@baoname,@baofang,@wupin,@shijian,@ischuli,null)";
            List<SqlParameter> parameters = new List<SqlParameter>();
            parameters.Add(new SqlParameter("@baoname", model.baoname));
            parameters.Add(new SqlParameter("@baofang", model.baofang));
            parameters.Add(new SqlParameter("@wupin", model.wupin));
            parameters.Add(new SqlParameter("@shijian", model.shijian));
            parameters.Add(new SqlParameter("@ischuli", model.ischuli));
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
        public int update(int baoid)
        {
            string sql = @"update [JDGL].[dbo].[baoxiu] set ischuli=1,chushijian=getdate() where baoid=@baoid";
            SqlParameter[] sqlp = new SqlParameter[1];
            sqlp[0] = new SqlParameter("@baoid", baoid);
            int result = SqlHelper.NoQuery(sql, sqlp);
            return (result);
        }
    }
}
