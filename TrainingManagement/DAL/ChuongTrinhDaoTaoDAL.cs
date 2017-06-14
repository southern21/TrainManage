﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TrainingManagement.DAL
{
    class ChuongTrinhDaoTaoDAL
    {
        DataServices ds;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataTable dt;
        public ChuongTrinhDaoTaoDAL()
        {
            ds = new DataServices();
        }
        public DataTable getAllChuongTrinhDaoTao()
        {
            string sql = "sp_tblChuongTrinhDaoTao_SelectAll";
            try
            {
                con = ds.getConnect();
                da = new SqlDataAdapter(sql, con);
                con.Open();
                dt = new DataTable();
                da.Fill(dt);
            }
            catch (Exception ex)
            {

            }
            finally
            {
                da.Dispose();
                con.Close();
            }
            return dt;
        }
        public DataTable getAllChuongTrinhDaoTao(int id)
        {
            string sql = "sp_tblChuongTrinhDaoTao_SelectID";
            try
            {
                con = ds.getConnect();
                da = new SqlDataAdapter(sql, con);
                con.Open();
                dt = new DataTable();
                da.Fill(dt);
            }
            catch (Exception ex)
            {

            }
            finally
            {
                da.Dispose();
                con.Close();
            }
            return dt;
        }
        public bool insertChuongTrinhDaoTao(Entities.tblChuongTrinhDaoTao ctdt)
        {
            bool check = false;
            string sql = "sp_tblChuongTrinhDaoTao_Insert";
            try
            {
                con = ds.getConnect();
                cmd = new SqlCommand(sql, con);
                con.Open();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = sql;
                cmd.Connection = con;
                cmd.Parameters.Add("@machuongtrinh", SqlDbType.NVarChar).Value = ctdt.Machuongtrinh;
                cmd.Parameters.Add("@tenchuongtrinh", SqlDbType.NVarChar).Value = ctdt.Tenchuongtrinh;
                cmd.ExecuteNonQuery();
                check = true;
            }
            catch (Exception ex)
            {

            }
            finally
            {
                cmd.Dispose();
                con.Close();
            }
            return check;
        }
        public bool updateChuongTrinhDaoTao(Entities.tblChuongTrinhDaoTao ctdt)
        {
            bool check = false;
            string sql = "sp_tblChuongTrinhDaoTao_Update";
            try
            {
                con = ds.getConnect();
                cmd = new SqlCommand(sql, con);
                con.Open();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = sql;
                cmd.Connection = con;
                cmd.Parameters.Add("@id", SqlDbType.Int).Value = ctdt.Id;
                cmd.Parameters.Add("@machuongtrinh", SqlDbType.NVarChar).Value = ctdt.Machuongtrinh;
                cmd.Parameters.Add("@tenchuongtrinh", SqlDbType.NVarChar).Value = ctdt.Tenchuongtrinh;
                cmd.ExecuteNonQuery();
                check = true;
            }
            catch (Exception ex)
            {

            }
            finally
            {
                cmd.Dispose();
                con.Close();
            }
            return check;
        }
        public bool deleteChuongTrinhDaoTao(Entities.tblChuongTrinhDaoTao ctdt)
        {
            bool check = false;
            string sql = "sp_tblChuongTrinhDaoTao_Delete";
            try
            {
                con = ds.getConnect();
                cmd = new SqlCommand(sql, con);
                con.Open();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@id", SqlDbType.Int).Value = ctdt.Id;
                cmd.ExecuteNonQuery();
                check = true;
            }
            catch (Exception ex)
            {

            }
            finally
            {
                cmd.Dispose();
                con.Close();
            }
            return check;
        }
    }
}
