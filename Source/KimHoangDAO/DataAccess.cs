using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;

namespace KimHoangDAO
{
    class DataAccess
    {
       // private static readonly string dataProvider =
       //   ConfigurationManager.ConnectionStrings["ConnectionString"].ProviderName;

        public static string ConnectionString
        {
            get
            {
                return ConfigurationManager.AppSettings["KimHoangConnection"];
            }
        }
        public int SaveDataToWEB(string strSQL)
        {
            int kq = 0;
            SqlConnection con = new SqlConnection(ConnectionString);
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(strSQL, con);
                kq = cmd.ExecuteNonQuery();
            }
            catch (Exception e)
            { }
            finally
            {
                con.Close();
            }
            return kq;
        }

        //public static void DeletePartner(int id)
        //{
        //    SqlConnection con = new SqlConnection(ConnectionString_WEB);
        //    try
        //    {
        //        string strSQL = "Delete from Partner where ID=" + id;
        //        con.Open();
        //        SqlCommand cmd = new SqlCommand(strSQL, con);
        //        cmd.ExecuteNonQuery();
        //    }
        //    catch (Exception e)
        //    { }
        //    finally
        //    {
        //        con.Close();
        //    }
        //}



        public DataTable GetDataBySql_WEB(string sql)
        {
            DataTable dt = new DataTable();
            SqlConnection cn = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cm = new SqlCommand(sql, cn);
                cm.CommandType = CommandType.Text;
                // If connection is not connected then connect
                if (cn.State != ConnectionState.Open)
                    cn.Open();
                using (SqlDataAdapter da = new SqlDataAdapter())
                {
                    da.SelectCommand = cm;
                    da.Fill(dt);
                }
            }
            catch (SqlException ex)
            {
                //throw ex;
            }
            finally
            {
                if (cn.State != ConnectionState.Closed)
                    cn.Close();
            }
            return dt;
        }

        /// <summary>
        /// Get datatable with specifying procedure name
        /// </summary>
        /// <param name="sProcedureName">Name of stored procedure</param>
        /// <returns></returns>
        public DataTable GetDataByStoredProcedure(string sProcedureName)
        {
            DataTable dt = new DataTable();
            SqlConnection cn = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cm = new SqlCommand(sProcedureName, cn);
                cm.CommandType = CommandType.StoredProcedure;
                // If connection is not connected then connect
                if (cn.State != ConnectionState.Open)
                    cn.Open();
                using (SqlDataAdapter da = new SqlDataAdapter())
                {
                    da.SelectCommand = cm;
                    da.Fill(dt);
                }
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                if (cn.State != ConnectionState.Closed)
                    cn.Close();
            }
            return dt;
        }

        /// <summary>
        /// Get scalar data with specifying procedure name
        /// </summary>
        /// <param name="sProcedureName">Name of stored procedure</param>
        /// <returns></returns>
        public object GetScalarDataByStoredProcedure(string sProcedureName)
        {
            object objResult = null;
            SqlConnection cn = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cm = new SqlCommand(sProcedureName, cn);
                cm.CommandType = CommandType.StoredProcedure;
                // If connection is not connected then connect
                if (cn.State != ConnectionState.Open)
                    cn.Open();

                objResult = cm.ExecuteScalar();
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                if (cn.State != ConnectionState.Closed)
                    cn.Close();
            }
            return objResult;
        }

        /// <summary>
        /// Get scalar data with specifying sql query
        /// </summary>
        /// <param name="sProcedureName">sql query</param>
        /// <returns></returns>
        public object GetScalarDataBySql(string sSql)
        {
            object objResult = null;
            SqlConnection cn = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cm = new SqlCommand(sSql, cn);
                cm.CommandType = CommandType.Text;
                // If connection is not connected then connect
                if (cn.State != ConnectionState.Open)
                    cn.Open();

                objResult = cm.ExecuteScalar();
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                if (cn.State != ConnectionState.Closed)
                    cn.Close();
            }
            return objResult;
        }

        /// <summary>
        /// Get scalar data with specifying procedure name
        /// </summary>
        /// <param name="sProcedureName">Name of stored procedure</param>
        /// <param name="arrNames">Array of parameter's name</param>
        /// <param name="arrValues">Array of parameter's value</param>
        public object GetScalarDataByStoredProcedure(string sProcedureName, string[] arrNames, object[] arrValues)
        {
            object objResult = null;
            SqlConnection cn = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cm = new SqlCommand(sProcedureName, cn);
                cm.CommandType = CommandType.StoredProcedure;
                // If connection is not connected then connect
                if (cn.State != ConnectionState.Open)
                    cn.Open();

                SqlParameter par = null;
                for (int i = 0; i < arrNames.Length; i++)
                {
                    par = new SqlParameter(arrNames[i], arrValues[i]);
                    cm.Parameters.Add(par);
                }

                objResult = cm.ExecuteScalar();
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                if (cn.State != ConnectionState.Closed)
                    cn.Close();
            }
            return objResult;
        }

        /// <summary>
        /// Get datatable with specifying procedure name
        /// </summary>
        /// <param name="sProcedureName">Name of stored procedure</param>
        /// <param name="arrNames">Array of parameter's name</param>
        /// <param name="arrValues">Array of parameter's value</param>
        public DataTable GetDataByStoredProcedure(string sProcedureName, string[] arrNames, object[] arrValues)
        {
            DataTable dt = new DataTable();
            SqlConnection cn = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cm = new SqlCommand(sProcedureName, cn);
                cm.CommandType = CommandType.StoredProcedure;
                // If connection is not connected then connect
                if (cn.State != ConnectionState.Open)
                    cn.Open();

                SqlParameter par = null;
                for (int i = 0; i < arrNames.Length; i++)
                {
                    par = new SqlParameter(arrNames[i], arrValues[i]);
                    cm.Parameters.Add(par);
                }

                using (SqlDataAdapter da = new SqlDataAdapter())
                {
                    da.SelectCommand = cm;
                    da.Fill(dt);
                }
            }
            catch (SqlException ex)
            {
                //throw ex;
            }
            finally
            {
                if (cn.State != ConnectionState.Closed)
                    cn.Close();
            }
            return dt;
        }
        /// <summary>
        /// Execute a procedure to update database
        /// </summary>
        /// <param name="sProcedureName">Name of stored procedure</param>
        /// <param name="arrNames">Array of parameter's name</param>
        /// <param name="arrValues">Array of parameter's value</param>
        public int ExecuteUpdate(string sProcedureName, string[] arrNames, object[] arrValues)
        {
            SqlConnection cn = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cm = new SqlCommand(sProcedureName, cn);
                cm.CommandType = CommandType.StoredProcedure;
                // If connection is not connected then connect
                if (cn.State != ConnectionState.Open)
                    cn.Open();

                SqlParameter par = null;
                for (int i = 0; i < arrNames.Length; i++)
                {
                    par = new SqlParameter(arrNames[i], arrValues[i]);
                    cm.Parameters.Add(par);
                }

                return cm.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                if (cn.State != ConnectionState.Closed)
                    cn.Close();
            }
        }
        public DataTable GetDataBySql(string sql)
        {
            DataTable dt = new DataTable();
            SqlConnection cn = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cm = new SqlCommand(sql, cn);
                cm.CommandType = CommandType.Text;
                // If connection is not connected then connect
                if (cn.State != ConnectionState.Open)
                    cn.Open();
                using (SqlDataAdapter da = new SqlDataAdapter())
                {
                    da.SelectCommand = cm;
                    da.Fill(dt);
                }
            }
            catch (SqlException ex)
            {
                //throw ex;
            }
            finally
            {
                if (cn.State != ConnectionState.Closed)
                    cn.Close();
            }
            return dt;
        }
    }
}
