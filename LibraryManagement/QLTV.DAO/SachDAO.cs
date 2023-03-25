using QLTV.DTO;
using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Metadata.Edm;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections;

namespace QLTV.DAO
{
    public class SachDAO
    {
        public SachDAO() { }
        public IEnumerable SachList()
        {
            using (var db = new QLTVEntities())
            {
                var query = db.Saches.Join(db.TacGias, s => s.MaTacGia, t => t.MaTacGia,
                    (s, t) => new
                    {
                        s.MaSach,
                        s.TenSach,
                        s.TheLoai,
                        s.GiaNhap,
                        t.TenTacGia,
                        s.SoLuong,
                        s.MaNCC
                    }).Join(db.NhaCungCaps, c => c.MaNCC, n => n.MaNCC, (s, n) => new
                    {
                        s.MaSach,
                        s.TenSach,
                        s.TheLoai,
                        s.GiaNhap,
                        s.TenTacGia,
                        s.SoLuong,
                        n.TenNCC
                    }).
                    ToList().Select(s => new
                    {
                        s.MaSach,
                        s.TenSach,
                        s.TheLoai,
                        GiaNhap = s.GiaNhap.ToString("#,##0.00"),
                        s.TenTacGia,
                        s.SoLuong,
                       s.TenNCC
                    });
                return query.ToList();
            }
        }
    }
}
