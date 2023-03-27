using QLTV.DTO;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLTV.DAO
{
    public class DocGiaDAO
    {
        public DocGiaDAO() { }
        public IEnumerable DocGiaList()
        {

            using (var db = new QLTVEntities())
            {
                var query = db.DocGias.Select(s => new
                {
                    s.MaDocGia,
                    s.TenDocGia,
                    s.NgaySinh,
                    s.SDT
                });
                return query.ToList();
            }
        }

        public IEnumerable LoadDocGiaByID(string key)
        {
            using (var db = new QLTVEntities())
            {
                var query = db.DocGias.Select(s => new
                {
                    s.MaDocGia,
                    s.TenDocGia,
                    s.NgaySinh,
                    s.SDT
                }).Where(d => d.MaDocGia.ToLower().Contains(key.ToLower()) || 
                d.MaDocGia.ToLower().StartsWith(key.ToLower()) || 
                d.MaDocGia.ToLower().EndsWith(key.ToLower()));
                return query.ToList();
            }
        }

        public IEnumerable LoadDocGiaByName(string key) 
        {
            using (var db = new QLTVEntities())
            {
                var query = db.DocGias.Select(s => new
                {
                    s.MaDocGia,
                    s.TenDocGia,
                    s.NgaySinh,
                    s.SDT
                }).Where(d => d.TenDocGia.ToLower().Contains(key.ToLower()) ||
                d.TenDocGia.ToLower().StartsWith(key.ToLower()) ||
                d.TenDocGia.ToLower().EndsWith(key.ToLower()));
                return query.ToList();
            }
        }

        public void AddDocGia(string tendocgia, string phone, DateTime ngaysinh)
        {

            using (var db = new QLTVEntities())
            {
                // Lấy mã cuối cùng
                string str_id = db.Saches.ToList().Last().MaSach;

                // chuyển về
                int id = Convert.ToInt32(str_id.Substring(2, 4)) + 1;

                // Tạo mã

                string madocgia = "DG" + "0000".Substring(0, 6 - id.ToString().Length - 2) + id;
                var docgia = new DocGia()
                {
                    MaDocGia = madocgia,
                    TenDocGia = tendocgia,
                    SDT = phone,
                    NgaySinh = ngaysinh
                };
                db.DocGias.Add(docgia);
                db.SaveChanges();

            }
        }
    }
}
