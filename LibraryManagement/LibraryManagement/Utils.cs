using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace LibraryManagement
{
    public class Utils
    {
        public Utils() { }
        public void SetPropertiesDataGridView(DataGridView dataview)
        {
            dataview.MultiSelect = false;
            dataview.ReadOnly = true;
            dataview.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            dataview.AutoSizeRowsMode = DataGridViewAutoSizeRowsMode.AllCellsExceptHeaders;
            dataview.BackgroundColor = Color.White;
            dataview.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
        }

        public string CreateID_4(string key, string str_id)
        {

            // chuyển về
            int id = Convert.ToInt32(str_id.Substring(2, 4)) + 1;

            // Tạo mã

            return key + "0000".Substring(0, 6 - id.ToString().Length - 2) + id;
        }


    }
}
