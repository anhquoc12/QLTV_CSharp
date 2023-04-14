using QLTV.DTO;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLTV.DAO
{
    public class NhaCCDAO
    {
        public NhaCCDAO() { }
        public IEnumerable NhaCCList()
        {
            using (var db = new QLTVEntities())
            {
                var query = db.NhaCungCaps.Select(n => new
                {
                    n.MaNCC,
                    n.TenNCC,
                    n.SDT,
                    n.Email
                });
                return query.ToList();
            }
        }

        public IEnumerable LoadNCCByID(string key)
        {
            using (var db = new QLTVEntities())
            {
                var query = db.NhaCungCaps.Select(n => new
                {
                    n.MaNCC,
                    n.TenNCC,
                    n.SDT,
                    n.Email
                }).Where(n => n.MaNCC.ToLower().Contains(key.ToLower()) ||
                n.MaNCC.ToLower().StartsWith(key.ToLower()) ||
                n.MaNCC.ToLower().EndsWith(key.ToLower()));
                return query.ToList();
            }
        }

        public IEnumerable LoadNCCByName(string key)
        {
            using (var db = new QLTVEntities())
            {
                var query = db.NhaCungCaps.Select(n => new
                {
                    n.MaNCC,
                    n.TenNCC,
                    n.SDT,
                    n.Email
                }).Where(n => n.TenNCC.ToLower().Contains(key.ToLower()) ||
                n.TenNCC.ToLower().StartsWith(key.ToLower()) ||
                n.TenNCC.ToLower().EndsWith(key.ToLower()));
                return query.ToList();
            }
        }

        public void AddNCC(NhaCungCap nhacungcap)
        {

            using (var db = new QLTVEntities())
            {;
                db.NhaCungCaps.Add(nhacungcap);
                db.SaveChanges();

            }
        }

        public void EditNCC(string madocgia, string tendocgia, string sdt, DateTime ngaysinh)
        {
            using (var db = new QLTVEntities())
            {
                var docgia = db.DocGias.Find(madocgia);
                if (docgia != null)
                {
                    docgia.TenDocGia = tendocgia;
                    docgia.SDT = sdt;
                    docgia.NgaySinh = ngaysinh;
                    db.SaveChanges();
                }
            }
        }
    }
}
