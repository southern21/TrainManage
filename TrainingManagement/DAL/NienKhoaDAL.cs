﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TrainingManagement.DAL
{
    class NienKhoaDAL
    {
        DataServices ds;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataTable dt;
        public NienKhoaDAL()
        {
            ds = new DataServices();
        }
        public DataTable getAllNienKhoa()
        {
            string sql = "sp_tblNienKhoa_SelectAll";
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
        public DataTable getAllNienKhoa(int id)
        {
            string sql = "sp_tblNienKhoa_SelectID";
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
        public bool insertNienKhoa(Entities.tblNienKhoa nk)
        {
            bool check = false;
            string sql = "sp_tblNienKhoa_Insert";
            try
            {
                con = ds.getConnect();
                cmd = new SqlCommand(sql, con);
                con.Open();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = sql;
                cmd.Connection = con;
                cmd.Parameters.Add("@manienkhoa", SqlDbType.NVarChar).Value = nk.Manienkhoa;
                cmd.Parameters.Add("@tennienkhoa", SqlDbType.NVarChar).Value = nk.Tennienkhoa;
                cmd.Parameters.Add("@nambatdau", SqlDbType.Date).Value = nk.Nambatdau;
                cmd.Parameters.Add("@namketthuc", SqlDbType.Date).Value = nk.Namketthuc;
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
        public bool updateNienKhoa(Entities.tblNienKhoa nk)
        {
            bool check = false;
            string sql = "sp_tblNienKhoa_Update";
            try
            {
                con = ds.getConnect();
                cmd = new SqlCommand(sql, con);
                con.Open();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = sql;
                cmd.Connection = con;
                cmd.Parameters.Add("@id", SqlDbType.Int).Value = nk.Id;
                cmd.Parameters.Add("@manienkhoa", SqlDbType.NVarChar).Value = nk.Manienkhoa;
                cmd.Parameters.Add("@tennienkhoa", SqlDbType.NVarChar).Value = nk.Tennienkhoa;
                cmd.Parameters.Add("@nambatdau", SqlDbType.Date).Value = nk.Nambatdau;
                cmd.Parameters.Add("@namketthuc", SqlDbType.Date).Value = nk.Namketthuc;
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
        public bool deleteNienKhoa(Entities.tblNienKhoa nk)
        {
            bool check = false;
            string sql = "sp_tblNienKhoa_Delete";
            try
            {
                con = ds.getConnect();
                cmd = new SqlCommand(sql, con);
                con.Open();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@id", SqlDbType.Int).Value = nk.Id;
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
