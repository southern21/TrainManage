﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TrainingManagement.Entities
{
    class tblChuongTrinhDaoTao
    {
        int _id;

        public int Id
        {
            get { return _id; }
            set { _id = value; }
        }

        string _machuongtrinh;

        public string Machuongtrinh
        {
            get { return _machuongtrinh; }
            set { _machuongtrinh = value; }
        }
        string _tenchuongtrinh;

        public string Tenchuongtrinh
        {
            get { return _tenchuongtrinh; }
            set { _tenchuongtrinh = value; }
        }
    }
}
