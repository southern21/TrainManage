﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TrainingManagement.BLL
{
    class TinChiBLL
    {
        DAL.TinChiDAL dal;
        public TinChiBLL()
        {
            dal = new DAL.TinChiDAL();
        }
        public DataTable getAllTinChi()
        {
            return dal.getAllTinChi();
        }
        public DataTable getAllTinChi(int id)
        {
            return dal.getAllTinChi(id);
        }
        public bool insertTinChi(Entities.tblTinChi tt)
        {
            return dal.insertTinChi(tt);
        }
        public bool updateTinChi(Entities.tblTinChi tt)
        {
            return dal.updateTinChi(tt);
        }
        public bool deleteTinChi(Entities.tblTinChi tt)
        {
            return dal.deleteTinChi(tt);
        }
    }
}
