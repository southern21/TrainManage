﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using TrainingManagement.GUI;

namespace TrainingManagement
{
    public partial class frmTest : Form
    {
        private tblLop ctrl1;
        public frmTest()
        {
            InitializeComponent();
        }

        private void thôngTinCáNhânToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //pnQLThongTinGiaoVien.Visible = true;
            /*
            foreach (Control ctrl in pnQLThongTinGiaoVien.Controls)
            {
                ctrl.Dispose();
            }
            pnQLThongTinGiaoVien.Controls.Add(new tblLop());
             * */
        }

        private void frmTest_Load(object sender, EventArgs e)
        {
            //pnQLThongTinGiaoVien.Visible = false;

            ctrl1 = new tblLop();
            pnQLThongTinGiaoVien.Controls.Add(ctrl1);
            //mônHọcToolStripMenuItem.Click += new EventHandler(toggleUserCtrl);
            //ctrl1.Visible = false;
        }
        //uc.ButtonClick += new EventHandler(pnQLThongTinGiaoVien_Paint);
        private void pnQLThongTinGiaoVien_Paint(object sender, PaintEventArgs e)
        {

        }

        /*
        private void toggleUserCtrl(object sender, EventArgs e)
        {
            ctrl1.Visible = true;
            if (sender.Equals(button1))
            {
                ctrl1.Visible = true;
                ctrl2.Visible = false;
            }
            else if (sender.Equals(button2))
            {
                ctrl1.Visible = false;
                ctrl2.Visible = true;
            }
        }
        */

        private void mônHọcToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }
    }
}
