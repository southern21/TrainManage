﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TrainingManagement.BLL
{
    class HocKyBLL
    {
        DAL.HocKyDAL dal;
        public HocKyBLL()
        {
            dal = new DAL.HocKyDAL();
        }
        public DataTable getAllHocKy()
        {
            return dal.getAllHocKy();
        }
        public DataTable getAllHocKy(int id)
        {
            return dal.getAllHocKy(id);
        }
        public bool insertHocKy(Entities.tblHocKy hk)
        {
            return dal.insertHocKy(hk);
        }
        public bool updateHocKy(Entities.tblHocKy hk)
        {
            return dal.updateHocKy(hk);
        }
        public bool deleteHocKy(Entities.tblHocKy hk)
        {
            return dal.deleteHocKy(hk);
        }
    }
}
