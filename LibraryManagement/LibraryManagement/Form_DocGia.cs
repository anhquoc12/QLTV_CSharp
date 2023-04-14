using QLTV.BUS;
using QLTV.DTO;
using System;
using System.Linq;
using System.Windows.Forms;

namespace LibraryManagement
{
    public partial class Form_DocGia : Form
    {
        DocGiaBUS docgia;
        Utils u;
        public Form_DocGia()
        {
            InitializeComponent();
            docgia = new DocGiaBUS();
            u = new Utils();
            u.SetPropertiesDataGridView(dataDocGia);
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
            dataDocGia.DataSource = docgia.DocGiaList();

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
                dataDocGia.DataSource = docgia.DocGiaList();

            else
                if (rdTenDocGia.Checked)
                dataDocGia.DataSource = docgia.LoadDocGiaByName(txtSearch.Text);
            else
                dataDocGia.DataSource = docgia.LoadDocGiaByID(txtSearch.Text);
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            if (rdbtnAdd.Checked)
            {
                AddReader();
            }
            else if (rdbtnEdit.Checked)
            {
                EditReader();
            }

            dataDocGia.DataSource = docgia.DocGiaList();
        }

        private void dataDocGia_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            ShowDataToTextBox(dataDocGia);
        }

        private void AddReader()
        {
            if (docgia.AddDocGia(txtMaDocGia.Text, txtTenDocGia.Text,
                    txtSDT.Text, dateBirthDay.Value.Date))
                MessageBox.Show("Thêm Thành Công", "SUCCCESS", MessageBoxButtons.OK,
                    MessageBoxIcon.Information);
            else
                MessageBox.Show("Không thể thêm độc giả", "ERROR", MessageBoxButtons.OK,
                    MessageBoxIcon.Error);
        }

        private void EditReader()
        {
            if (docgia.EditSach(txtMaDocGia.Text, txtTenDocGia.Text,
                    txtSDT.Text, dateBirthDay.Value.Date))
                MessageBox.Show("Sửa thông tin Thành Công", "SUCCCESS", MessageBoxButtons.OK,
                    MessageBoxIcon.Information);
            else
                MessageBox.Show("Không thể Sửa thông tin độc giả", "ERROR", MessageBoxButtons.OK,
                    MessageBoxIcon.Error);
        }

        private void rdbtnAdd_Click(object sender, EventArgs e)
        {
            using (var db = new QLTVEntities())
            {
                txtMaDocGia.Text = u.CreateID_4("DG", db.DocGias.ToList().Last().MaDocGia);
            }
        }
    }
}
