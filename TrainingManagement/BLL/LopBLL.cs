﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TrainingManagement.BLL
{
    class LopBLL
    {
        DAL.LopDAL dal;
        public LopBLL()
        {
            dal = new DAL.LopDAL();
        }
        public DataTable getAllLop()
        {
            return dal.getAllLop();
        }
        public DataTable getAllLop(int id)
        {
            return dal.getIDLop(id);
        }
        public bool insertLop(Entities.tblLop lp)
        {
            return dal.insertLop(lp);
        }
        public bool updateLop(Entities.tblLop lp)
        {
            return dal.updateLop(lp);
        }
        public bool deleteLop(Entities.tblLop lp)
        {
            return dal.deleteLop(lp);
        }
    }
}
