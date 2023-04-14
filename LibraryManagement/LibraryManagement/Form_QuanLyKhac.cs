using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Entity.Core.Metadata.Edm;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using QLTV.BUS;
using QLTV.DTO;

namespace LibraryManagement
{
    public partial class Form_QuanLyKhac : Form
    {
        TacGiaBUS tacgia;
        NhaCCBUS nhacc;
        Utils u;
        public Form_QuanLyKhac()
        {
            InitializeComponent();
            tacgia = new TacGiaBUS();
            nhacc = new NhaCCBUS();
            u = new Utils();
        }



        private void btnSave_TG_Click(object sender, EventArgs e)
        {
            if (rdbtnAdd_TG.Checked)
            {
                AddTacGia();
            }
            else if (rdbtnEdit_TG.Checked)
            {
                EditTacGia();
            }

            dataTacGia.DataSource = tacgia.TacGiaList();
        }

        private void txtSDT_TacGia_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!Char.IsDigit(e.KeyChar) && !Char.IsControl(e.KeyChar))
            {
                e.Handled = true;
            }
        }

        private void txtSDT_NCC_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!Char.IsDigit(e.KeyChar) && !Char.IsControl(e.KeyChar))
            {
                e.Handled = true;
            }
        }

        private void Form_QuanLyKhac_Load(object sender, EventArgs e)
        {
            u.SetPropertiesDataGridView(dataTacGia);
            u.SetPropertiesDataGridView(dataNhaCungCap);
            dataTacGia.DataSource = tacgia.TacGiaList();
            dataNhaCungCap.DataSource = new NhaCCBUS().NhaCCList();
            ShowDataTacGiaToTextBox();
        }

        private void btnSearch_TG_Click(object sender, EventArgs e)
        {
            if (txtSearch_TG.Text == "")
            {
                dataTacGia.DataSource = tacgia.TacGiaList();
                return;
            }
            if (rdTenTacGia.Checked)
                dataTacGia.DataSource = tacgia.LoadTacGiaByName(txtSearch_TG.Text);
            else
                dataTacGia.DataSource = tacgia.LoadTacGiaByID(txtSearch_TG.Text);
        }

        private void dataTacGia_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            DataGridViewRow row = dataTacGia.SelectedRows[0];

            txtMaTacGia.Text = row.Cells["MaTacGia"].Value.ToString();
            txtTenTacGia.Text = row.Cells["TenTacGia"].Value.ToString();
            txtSDT_TacGia.Text = row.Cells["SDT"].Value.ToString();
            txtEmail_TacGia.Text = row.Cells["Email"].Value.ToString();
        }

        private void ShowDataTacGiaToTextBox()
        {
            DataGridViewRow row = dataTacGia.SelectedRows[0];

            txtMaTacGia.Text = row.Cells["MaTacGia"].Value.ToString();
            txtTenTacGia.Text = row.Cells["TenTacGia"].Value.ToString();
            txtSDT_TacGia.Text = row.Cells["SDT"].Value.ToString();
            txtEmail_TacGia.Text = row.Cells["Email"].Value.ToString();
        }

        private void btnClear_TG_Click(object sender, EventArgs e)
        {
            txtMaTacGia.Text = "";
            txtTenTacGia.Text = "";
            txtSDT_TacGia.Text = "";
            txtEmail_TacGia.Text = "";
        }

        private void rdbtnAdd_TG_Click(object sender, EventArgs e)
        {
            using (var db = new QLTVEntities())
            {
                txtMaTacGia.Text = u.CreateID_4("TG", db.TacGias.ToList().Last().MaTacGia);
            }
        }

        private void AddTacGia()
        {
            if (tacgia.AddTacGia(txtMaTacGia.Text, txtTenTacGia.Text, 
                txtSDT_TacGia.Text, txtEmail_TacGia.Text))
                MessageBox.Show("Thêm Thành Công", "SUCCCESS", MessageBoxButtons.OK,
                    MessageBoxIcon.Information);
            else
                MessageBox.Show("Không thể thêm tác giả", "ERROR", MessageBoxButtons.OK,
                    MessageBoxIcon.Error);
        }

        private void EditTacGia()
        {
            if (tacgia.EditTacGia(txtMaTacGia.Text, txtTenTacGia.Text,
                txtSDT_TacGia.Text, txtEmail_TacGia.Text))
                MessageBox.Show("Sửa Thành Công", "SUCCCESS", MessageBoxButtons.OK,
                    MessageBoxIcon.Information);
            else
                MessageBox.Show("Không thể sửa tác giả", "ERROR", MessageBoxButtons.OK,
                    MessageBoxIcon.Error);
        }

        private void btnSearch_NCC_Click(object sender, EventArgs e)
        {
            if (txtSearch_NCC.Text == "")
            {
                dataNhaCungCap.DataSource = nhacc.NhaCCList();
                return;
            }
            if (rdTenNCC.Checked)
                dataNhaCungCap.DataSource = nhacc.LoadNCCByName(txtSearch_NCC.Text);
            else
                dataNhaCungCap.DataSource = nhacc.LoadNCCByID(txtSearch_NCC.Text);
        }
    }
}
