using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using QLTV.DTO;

namespace QLTV.DAO
{
    public class PhieuMuonDAO
    {
        public PhieuMuonDAO() { }
        public void luuPhieuMuon(DateTime ngaylapphieu, string madocgia)
        {
            using(var db = new QLTVEntities())
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
        //public void luuCTPM(string masach, int soluong, int maphieumuon, decimal tiendatcoc)
        //{
        //    using(var db = new QLTVEntities())
        //    {
        //        var ctpm = new ChiTietPhieuMuon()
        //        {
        //            MaSach = masach,
        //            SoLuong = soluong,
        //            MaPM = maphieumuon,

        //        }
        //    }
        //}
    }
}
