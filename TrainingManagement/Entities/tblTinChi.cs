﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TrainingManagement.Entities
{
    class tblTinChi
    {
        int _id;

        public int Id
        {
            get { return _id; }
            set { _id = value; }
        }
        string _matinchi;

        public string Matinchi
        {
            get { return _matinchi; }
            set { _matinchi = value; }
        }
        int _sotinchi;

        public int Sotinchi
        {
            get { return _sotinchi; }
            set { _sotinchi = value; }
        }
    }
}
