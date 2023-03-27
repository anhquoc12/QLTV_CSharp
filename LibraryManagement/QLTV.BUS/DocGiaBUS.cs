using QLTV.DAO;
using QLTV.DTO;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLTV.BUS
{
    public class DocGiaBUS
    {
        public DocGiaBUS() { }
        public IEnumerable DocGiaList()
        {
            return new DocGiaDAO().DocGiaList();
        }

        public IEnumerable LoadDocGiaByID(string key)
        {
            return new DocGiaDAO().LoadDocGiaByID(key);
        }

        public IEnumerable LoadDocGiaByName(string key)
        {
            return new DocGiaDAO().LoadDocGiaByName(key);
        }

        public bool AddDocGia(string madocgia, string tendocgia, string sdt, DateTime ngaysinh)
        {
            if (madocgia != "" || tendocgia == "" || sdt == "")
                return false;
            new DocGiaDAO().AddDocGia(tendocgia, sdt, ngaysinh);
            return true;
        }
    }
}
