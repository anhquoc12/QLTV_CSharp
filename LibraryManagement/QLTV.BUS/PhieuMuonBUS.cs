using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using QLTV.DAO;
using QLTV.DTO;

namespace QLTV.BUS
{
    public class PhieuMuonBUS
    {
        public PhieuMuonBUS() { }

        public bool LapPhieuMuon(DateTime ngaylapphieu, string madocgia)
        {
            if (madocgia.Equals(""))
                return false;
            else
            {
                new PhieuMuonDAO().luuPhieuMuon(ngaylapphieu, madocgia);
                return true;
            }
        }
        public void LapCTPM(string masach, int soluong, int maphieumuon, decimal tiendatcoc)
        {
            new PhieuMuonDAO().luuCTPM(masach, soluong, maphieumuon, tiendatcoc);
        }
        public void SetSoLuongSachTrongCTPM(string masach, int soluong)
        {
                new PhieuMuonDAO().setSoLuongSachTrongCTPM(masach, soluong);
        }
        public int LayIDPhieuMuonLonNhat()
        {
            return new PhieuMuonDAO().layIDPhieuMuonLonNhat();
        }
    }
}
