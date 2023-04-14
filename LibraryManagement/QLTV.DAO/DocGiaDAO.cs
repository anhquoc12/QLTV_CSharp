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

        public void AddDocGia(DocGia d)
        {

            using (var db = new QLTVEntities())
            {
                db.DocGias.Add(d);
                db.SaveChanges();

            }
        }

        public void EditDocGia(DocGia d)
        {
            using (var db = new QLTVEntities())
            {
                var docgia = db.DocGias.Find(d.MaDocGia);
                if (docgia != null) 
                {
                    docgia.TenDocGia = d.TenDocGia;
                    docgia.SDT = d.SDT;
                    docgia.NgaySinh = d.NgaySinh;
                    db.SaveChanges();
                }
            }
        }
    }
}
