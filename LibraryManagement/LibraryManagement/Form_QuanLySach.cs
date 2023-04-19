
using QLTV.BUS;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using QLTV.DTO;
using System.Data.Entity;


namespace BTL_LTCSDL_QLThưViện
{
    public partial class Form_QuanLySach : Form
    {
        public Form_QuanLySach()
        {
            InitializeComponent();
        }

        private void ShowDataToTextBox(DataGridView data)
        {
            DataGridViewRow row = dataSach.SelectedRows[0];

            // Gán cái vừa chọn cho các textbox

            txtMaSach.Text = row.Cells["MaSach"].Value.ToString();
            txtTenSach.Text = row.Cells["TenSach"].Value.ToString();
            txtSoLuong.Text = row.Cells["SoLuong"].Value.ToString();
            txtGia.Text = row.Cells["GiaNhap"].Value.ToString();
            txtLoaiSach.Text = row.Cells["TheLoai"].Value.ToString();
            comNhaCungCap.Text = row.Cells["NhaCungCap"].Value.ToString();
            comTacGia.Text = row.Cells["TenTacGia"].Value.ToString();
        }

        private void txtGia_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!Char.IsDigit(e.KeyChar) && !Char.IsControl(e.KeyChar))
            {
                e.Handled = true;
            }
        }

        private void txtSoLuong_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!Char.IsDigit(e.KeyChar) && !Char.IsControl(e.KeyChar))
            {
                e.Handled = true;
            }
        }

        private void Form_QuanLySach_Load(object sender, EventArgs e)
        {
            dataSach.DataSource = new SachBUS().SachList();
            ShowDataToTextBox(dataSach);
            comTacGia.DataSource = new TacGiaBUS().TacGiaList();
            comTacGia.DisplayMember = "TenTacGia";
            comTacGia.ValueMember = "MaTacGia";

            comNhaCungCap.DataSource = new NhaCCBUS().NhaCCList();
            comNhaCungCap.DisplayMember = "TenNCC";
            comNhaCungCap.ValueMember = "MaNCC";
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            if (txtSearch.Text == "")
                dataSach.DataSource = new SachBUS().SachList();
            else
            {
                if (rdMaSach.Checked)
                    dataSach.DataSource = new SachBUS().LoadSachByID(txtSearch.Text);
                else if (rdTenSach.Checked)
                    dataSach.DataSource = new SachBUS().LoadSachBySach(txtSearch.Text);
                else
                    dataSach.DataSource = new SachBUS().LoadSachByTacGia(txtSearch.Text);
            }

        }

        private void dataSach_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            
            ShowDataToTextBox(dataSach);
        }

        private void btnClear_Click(object sender, EventArgs e)
        {
            txtMaSach.Text = "";
            txtTenSach.Text = "";
            comTacGia.SelectedIndex = 0;
            comNhaCungCap.SelectedIndex = 0;
            txtLoaiSach.Text = "";
            txtSoLuong.Text = "";
            txtGia.Text = "";
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            if (rdbtnAdd.Checked) 
            {
                if (new SachBUS().AddSach(txtTenSach.Text, txtLoaiSach.Text,
                    txtGia.Text,
                    comTacGia.SelectedValue.ToString(),
                    comNhaCungCap.SelectedValue.ToString(),
                   txtSoLuong.Text))
                    MessageBox.Show("Thêm Thành Công", "SUCCCESS", MessageBoxButtons.OK,
                        MessageBoxIcon.Information);
                else
                    MessageBox.Show("Không thể thêm sách", "ERROR", MessageBoxButtons.OK,
                        MessageBoxIcon.Error);
                dataSach.DataSource = new SachBUS().SachList();
            }
            else if (rdbtnEdit.Checked) 
            {
                if (new SachBUS().EditSach(txtMaSach.Text, txtTenSach.Text, txtLoaiSach.Text,
                txtGia.Text, comTacGia.SelectedValue.ToString(),
                comNhaCungCap.SelectedValue.ToString(), txtSoLuong.Text))
                    MessageBox.Show("Sửa Thành Công", "SUCCCESS", MessageBoxButtons.OK,
                        MessageBoxIcon.Information);
                else
                    MessageBox.Show("Không thể sửa sách", "ERROR", MessageBoxButtons.OK,
                        MessageBoxIcon.Error);
                dataSach.DataSource = new SachBUS().SachList();
            }
            else { MessageBox.Show("Xóa"); }
        }

    }
}
