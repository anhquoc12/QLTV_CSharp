using QLTV.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using QLTV.DAO;
using System.Data.Entity;
using System.Collections;

namespace QLTV.BUS
{
    public class SachBUS
    {
        public SachBUS() { }
        public IEnumerable SachList()
        {
            return new SachDAO().SachList();
        }

        public IEnumerable LoadSachByID(string key)
        {
            return new SachDAO().LoadSachByID(key);
        }

        public IEnumerable LoadSachBySach(string key)
        {
            return new SachDAO().LoadSachBySach(key);
        }
        public IEnumerable LoadSachByTacGia(string key)
        {
            return new SachDAO().LoadSachByTacGia(key);
        }

        public bool AddSach(string tensach, string theloai, string gianhap, string matacgia, string mancc, string soluong)
        {
            if (tensach != "" || theloai == "" || gianhap == "" || soluong == "")
                return false;
            else
            {
                new SachDAO().AddSach(tensach, theloai, decimal.Parse(gianhap), matacgia, mancc, Convert.ToInt32(soluong));
                return true;
            }
        }

        public bool EditSach(string masach, string tensach, string theloai, string gianhap, string matacgia, string mancc, string soluong)
        {
            if (masach == "" || tensach == "" || theloai == "" || gianhap == "" || soluong == "")
                return false;
            else 
            {
                new SachDAO().EditSach(masach, tensach, theloai, decimal.Parse(gianhap), matacgia, mancc, Convert.ToInt32(soluong));
                return true;
            }
        }
    }
}
