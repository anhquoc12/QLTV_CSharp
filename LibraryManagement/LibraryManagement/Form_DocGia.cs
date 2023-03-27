
using QLTV.DTO;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Entity;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using QLTV.BUS;
using QLTV.DTO;
using System.Data.Entity.Core.Metadata.Edm;

namespace LibraryManagement
{
    public partial class Form_DocGia : Form
    {
        public Form_DocGia()
        {
            InitializeComponent();
        }

        private void ShowDataToTextBox(DataGridView data)
        {
            DataGridViewRow row = dataDocGia.SelectedRows[0];

            // Gán cái vừa chọn cho các textbox

            txtMaDocGia.Text = row.Cells["MaDocGia"].Value.ToString();
            txtTenDocGia.Text = row.Cells["TenDocGia"].Value.ToString();
            txtSDT.Text = row.Cells["SDT"].Value.ToString();
            dateBirthDay.Text = row.Cells["NgaySinh"].Value.ToString();
        }
        private void txtSDT_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!Char.IsDigit(e.KeyChar) && !Char.IsControl(e.KeyChar))
            {
                e.Handled = true;
            }
        }

        private void Form_DocGia_Load(object sender, EventArgs e)
        {
            dataDocGia.DataSource = new DocGiaBUS().DocGiaList();

        }

        private void btnClear_Click(object sender, EventArgs e)
        {
            txtMaDocGia.Text = "";
            txtTenDocGia.Text = "";
            txtSDT.Text = "";
            dateBirthDay.Value = DateTime.Now;
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            if (txtSearch.Text == "")
                dataDocGia.DataSource = new DocGiaBUS().DocGiaList();

            else
                if (rdTenDocGia.Checked)
                    dataDocGia.DataSource = new DocGiaBUS().LoadDocGiaByName(txtSearch.Text);
                else
                    dataDocGia.DataSource = new DocGiaBUS().LoadDocGiaByID(txtSearch.Text);
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            if (rdbtnAdd.Checked)
            {
                if (new DocGiaBUS().AddDocGia(txtMaDocGia.Text, txtTenDocGia.Text, 
                    txtSDT.Text, dateBirthDay.Value))
                    MessageBox.Show("Thêm Thành Công", "SUCCCESS", MessageBoxButtons.OK,
                        MessageBoxIcon.Information);
                else
                    MessageBox.Show("Không thể thêm độc giả", "ERROR", MessageBoxButtons.OK,
                        MessageBoxIcon.Error);
            }
        }

        private void dataDocGia_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            ShowDataToTextBox(dataDocGia);
        }
    }
}
