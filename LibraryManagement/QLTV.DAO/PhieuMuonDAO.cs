using QLTV.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLTV.DAO
{
    public class PhieuMuonDAO
    {
        public PhieuMuonDAO() { }

        public void luuPhieuMuon(DateTime ngaylapphieu, string madocgia)
        {
            using (var db = new QLTVEntities())
            {
                var phieumuon = new PhieuMuon()
                {
                    NgayLapPhieu = ngaylapphieu,
                    MaDocGia = madocgia
                };
                db.PhieuMuons.Add(phieumuon);
                db.SaveChanges();
            }
        }
        public void luuCTPM(string masach, int soluong, int maphieumuon, decimal tiendatcoc)
        {
            using (var db = new QLTVEntities())
            {
                var ctpm = new ChiTietPhieuMuon()
                {
                    MaSach = masach,
                    SoLuong = soluong,
                    MaPM = maphieumuon,
                    TienDatCoc = tiendatcoc
                };
                db.ChiTietPhieuMuons.Add(ctpm);
                db.SaveChanges();
            }
        }
        public void setSoLuongSachTrongCTPM(string masach, int soluong)
        {
            using (var db = new QLTVEntities())
            {
                var sach = db.Saches.Find(masach);
                if (sach != null)
                {
                    sach.SoLuong = soluong - 1;
                    db.SaveChanges();
                }
            }
        }
        public int layIDPhieuMuonLonNhat()
        {
            using (var db = new QLTVEntities())
            {
                int maxid = db.PhieuMuons.Max(pm => pm.MaPM);
                return maxid;
            }
        }
    }
}
