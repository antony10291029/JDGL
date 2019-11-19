using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace QJ.JDGL.YS.DAL
{
    public class SqlHelper
    {
        //连接数据库
        private static string str = ConfigurationManager.ConnectionStrings["JDGLConnectionString"].ConnectionString;

        //查询首行首列
        public static object Query(string sql,params SqlParameter[] sqlp)
        {
            using (SqlConnection sqlconn=new SqlConnection(str)) {
                using (SqlCommand sqlcomm=new SqlCommand(sql,sqlconn))
                {
                    if (sqlconn.State== ConnectionState.Closed)
                    {
                        sqlconn.Open();
                    }
                    sqlcomm.Parameters.AddRange(sqlp);
                    return sqlcomm.ExecuteScalar();
                }
            }
        }

        //查询
        public static SqlDataReader QueryReader(string sql,params SqlParameter[] sqlp)
        {
            SqlConnection sqlconn = new SqlConnection(str);
            using (SqlCommand sqlcomm=new SqlCommand(sql,sqlconn))
            {
                if(sqlconn.State== ConnectionState.Closed)
                {
                    sqlconn.Open();
                }
                sqlcomm.Parameters.AddRange(sqlp);
                return sqlcomm.ExecuteReader(CommandBehavior.CloseConnection);
            }
        }

        //添加，删除，修改
        public static int NoQuery(string sql, params SqlParameter[] sqlp)
        {
            using (SqlConnection sqlconn = new SqlConnection(str))
            {
                using (SqlCommand sqlcomm = new SqlCommand(sql, sqlconn))
                {
                    if (sqlconn.State == ConnectionState.Closed)
                    {
                        sqlconn.Open();
                    }
                    sqlcomm.Parameters.AddRange(sqlp);
                    return sqlcomm.ExecuteNonQuery();
                }
            }
        }

        //执行查询
        public static DataTable DBQuery(string proName, SqlParameter[] sqlParams = null)
        {
            DataTable table = new DataTable();
            SqlConnection Conn = new SqlConnection(str);
            SqlCommand Comm = new SqlCommand(proName, Conn);
            Comm.CommandType = CommandType.StoredProcedure;
            if (sqlParams != null)
                Comm.Parameters.AddRange(sqlParams);
            SqlDataAdapter sda = new SqlDataAdapter(Comm);
            sda.Fill(table);
            return table;
        }
        //执行非查询
        public static int DBNoQuery(string proName, SqlParameter[] sqlParams = null)
        {
            int num = 0;
            SqlConnection Conn = new SqlConnection(str);
            SqlCommand Comm = new SqlCommand(proName, Conn);
            Comm.CommandType = CommandType.StoredProcedure;
            if (sqlParams != null)
                Comm.Parameters.AddRange(sqlParams);
            try
            {
                Conn.Open();
                num = Comm.ExecuteNonQuery();
            }
            finally
            {
                if (Conn.State == ConnectionState.Open)
                {
                    Conn.Close();
                }
            }
            return num;
        }
        //查询存储过程
        public static SqlDataReader ProcQueryReader(string sql, params SqlParameter[] sqlp)
        {
            SqlConnection sqlconn = new SqlConnection(str);
            using (SqlCommand sqlcomm = new SqlCommand(sql, sqlconn))
            {
                if (sqlconn.State == ConnectionState.Closed)
                {
                    sqlconn.Open();
                }
                sqlcomm.CommandType = CommandType.StoredProcedure;
                sqlcomm.Parameters.AddRange(sqlp);
                return sqlcomm.ExecuteReader(CommandBehavior.CloseConnection);
            }
        }
        //非查询存储过程
        public static int ProcNoQuery(string sql, params SqlParameter[] sqlp)
        {
            using (SqlConnection sqlconn = new SqlConnection(str))
            {
                using (SqlCommand sqlcomm = new SqlCommand(sql, sqlconn))
                {
                    if (sqlconn.State == ConnectionState.Closed)
                    {
                        sqlconn.Open();
                    }
                    sqlcomm.CommandType = CommandType.StoredProcedure;
                    sqlcomm.Parameters.AddRange(sqlp);
                    return sqlcomm.ExecuteNonQuery();
                }
            }
        }

    }
}
