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
            ShowDataTacGiaToTextBox();
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

        private void rdbtnAdd_NCC_Click(object sender, EventArgs e)
        {
            using (var db = new QLTVEntities())
            {
                txtMaNCC.Text = u.CreateID_3("NCC", db.NhaCungCaps.ToList().Last().MaNCC);
            }
        }

        private void btnClear_NCC_Click(object sender, EventArgs e)
        {
            txtMaNCC.Text = "";
            txtTenNCC.Text = "";
            txtSDT_NCC.Text = "";
            txtEmail_NCC.Text = "";
        }

        private void btnSave_NCC_Click(object sender, EventArgs e)
        {
            if (rdbtnAdd_NCC.Checked) 
            {
                AddNCC();
            }
            else if (rdbtnEdit_NCC.Checked)
            {
                EditNCC();
            }

            dataNhaCungCap.DataSource = nhacc.NhaCCList();
        }

        private void AddNCC()
        {
            if (nhacc.AddNCC(txtMaNCC.Text, txtTenNCC.Text, txtSDT_NCC.Text, txtEmail_NCC.Text))
                MessageBox.Show("Thêm thành công", "Thông báo", MessageBoxButtons.OK, 
                    MessageBoxIcon.Information);
            else
                MessageBox.Show("Thêm thất bại", "Thông báo", MessageBoxButtons.OK, 
                    MessageBoxIcon.Error);
        }

        private void EditNCC()
        {
            if (nhacc.EditNCC(txtMaNCC.Text, txtTenNCC.Text, txtSDT_NCC.Text, txtEmail_NCC.Text))
                MessageBox.Show("Sửa thành công", "Thông báo", MessageBoxButtons.OK,
                    MessageBoxIcon.Information);
            else
                MessageBox.Show("Sửa thất bại", "Thông báo", MessageBoxButtons.OK,
                    MessageBoxIcon.Error);
        }

        private void ShowDataNCCShowToTextBox()
        {
            DataGridViewRow row = dataNhaCungCap.SelectedRows[0];

            txtMaNCC.Text = row.Cells["MaNCC"].Value.ToString();
            txtTenNCC.Text = row.Cells["TenNCC"].Value.ToString();
            txtSDT_NCC.Text = row.Cells["SDT"].Value.ToString();
            txtEmail_NCC.Text = row.Cells["Email"].Value.ToString();
        }

        private void dataNhaCungCap_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            ShowDataNCCShowToTextBox();
        }

        private void tabNCC_Click(object sender, EventArgs e)
        {
            ShowDataNCCShowToTextBox();
        }

        private void tabNCC_ChangeUICues(object sender, UICuesEventArgs e)
        {
            ShowDataNCCShowToTextBox();
        }

        private void tabFormQLKhac_SelectedIndexChanged(object sender, EventArgs e)
        {
            ShowDataNCCShowToTextBox();
        }
    }
}
