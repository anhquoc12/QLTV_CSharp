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
    }
}
