using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using QLTV.DTO;
using QLTV.DAO;

namespace QLTV.BUS
{
    public class PhieuMuonBUS
    {
        public PhieuMuonBUS()
        {

        }
        public bool LapPhieuMuon(DateTime ngaylapphieu, string madocgia)
        {
            if (ngaylapphieu == null || madocgia.Equals(""))
                return false;
            else
            {
                new PhieuMuonDAO().luuPhieuMuon(ngaylapphieu, madocgia);
                return true;
            }
        }
    }
}
