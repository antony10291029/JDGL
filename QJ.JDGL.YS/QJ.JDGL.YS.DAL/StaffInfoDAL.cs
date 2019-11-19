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
    public class StaffInfoDAL
    {

        /// <summary>
        /// 查询列表
        /// </summary>
        /// <returns></returns>
        public List<StaffModel> select(int UserCard=0,string StaName="",string StaSex="",int IsWork=2)
        {
            string sql = "StaffInfoAddSel";
            SqlParameter[] parameters = new SqlParameter[] 
            {
                new SqlParameter ("@UserCard",UserCard),
                new SqlParameter ("@StaName",StaName),
                new SqlParameter ("@StaSex",StaSex),
                new SqlParameter ("@IsWork",IsWork),
            };
            SqlDataReader reader = SqlHelper.ProcQueryReader(sql,parameters);
            List<StaffModel> list = new List<StaffModel>();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    StaffModel model = new StaffModel();
                    model.StaID = Convert.ToInt32(reader["StaID"]);
                    model.UserID = Convert.ToInt32(reader["UserID"]);
                    model.StaName = reader["StaName"].ToString();
                    model.StaSex = reader["StaSex"].ToString();
                    model.StaPhone = reader["StaPhone"].ToString();
                    model.StaCard = reader["StaCard"].ToString();
                    model.IsWork = Convert.ToBoolean(reader["IsWork"]);
                    model.UserName = reader["UserName"].ToString();
                    model.UserPwd = reader["UserPwd"].ToString();
                    model.UserCard = Convert.ToInt32(reader["UserCard"]);

                    list.Add(model);
                }
            }
            return list;

        }
        /// <summary>
        /// 添加
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>

        public int stuinfoadd(StaffModel model)
        {
            string sql = "StaffInfoAdd";
            SqlParameter[] parameters = new SqlParameter[]
                {
                    new SqlParameter("@StaName",model.StaName),
                    new SqlParameter("@StaSex",model.StaSex),
                    new SqlParameter("@StaPhone",model.StaPhone),
                    new SqlParameter("@StaCard",model.StaCard),
                    new SqlParameter("@IsWork",model.IsWork),
                       new SqlParameter("@UserName",model.UserName),
                          new SqlParameter("@UserPwd",model.UserPwd),
                             new SqlParameter("@UserCard",model.UserCard),
                };
            return SqlHelper.ProcNoQuery(sql, parameters);
        }
        /// <summary>
        /// 删除
        /// </summary>
        /// <param name="StaID"></param>
        /// <returns></returns>
        public int stuinfodelete(int StaID)
        {
            string sql = "delete StaffInfo where StaID=@StaID";
            SqlParameter[] parameter = new SqlParameter[]
                {
                    new SqlParameter("@StaID",StaID),
                };
            return SqlHelper.NoQuery(sql, parameter);
        }
        /// <summary>
        /// 更新
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public int stuinfoupdate(StaffModel model)
        {
            string sql = "update StaffInfo set StaName=@StaName,StaSex=@StaSex,StaPhone=@StaPhone,StaCard=@StaCard,IsWork=@IsWork where StaID=@StaID";
            SqlParameter[] parameters = new SqlParameter[]
                {
                    new SqlParameter("@StaName",model.StaName),
                    new SqlParameter("@StaSex",model.StaSex),
                    new SqlParameter("@StaPhone",model.StaPhone),
                    new SqlParameter("@StaCard",model.StaCard),
                    new SqlParameter("@IsWork",model.IsWork),
                    new SqlParameter("@StaID",model.StaID),
                };
            return SqlHelper.NoQuery(sql, parameters);
        }
        public StaffModel stuinfoupdateID(int StaID)
        {
            string sql = "select * from StaffInfo where StaID=@StaID";
            SqlParameter[] parameters = new SqlParameter[]
            {
                new SqlParameter ("@StaID",StaID)
            };
            SqlDataReader reader = SqlHelper.QueryReader(sql, parameters);
            StaffModel model = new StaffModel();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    model.StaID = Convert.ToInt32(reader["StaID"]);
                    model.UserID = Convert.ToInt32(reader["UserID"]);
                    model.StaName = reader["StaName"].ToString();
                    model.StaSex = reader["StaSex"].ToString();
                    model.StaPhone = reader["StaPhone"].ToString();
                    model.StaCard = reader["StaCard"].ToString();
                    model.IsWork = Convert.ToBoolean(reader["IsWork"]);

                }
            }
            return model;
        }

    }
}
