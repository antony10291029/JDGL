﻿using System;
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
    }
}
