﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TrainingManagement.Entities
{
    class tblTrangThai
    {
        int _id;

        public int Id
        {
            get { return _id; }
            set { _id = value; }
        }
        string _matrangthai;

        public string Matrangthai
        {
            get { return _matrangthai; }
            set { _matrangthai = value; }
        }
        string _tentrangthai;

        public string Tentrangthai
        {
            get { return _tentrangthai; }
            set { _tentrangthai = value; }
        }
    }
}