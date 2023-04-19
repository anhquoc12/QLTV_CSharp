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
                    }).ToList().Select(s => new
                    {
                        s.MaSach,
                        s.TenSach,
                        s.TheLoai,
                        GiaNhap = s.GiaNhap.ToString("#,##0.00"),
                        s.TenTacGia,
                        s.SoLuong,
                        NhaCungCap = s.TenNCC
                    });
                return query.ToList();
            }
        }

        public IEnumerable LoadSachByID(string key)
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
                    }).ToList().Select(s => new
                    {
                        s.MaSach,
                        s.TenSach,
                        s.TheLoai,
                        GiaNhap = s.GiaNhap.ToString("#,##0.00"),
                        s.TenTacGia,
                        s.SoLuong,
                        NhaCungCap = s.TenNCC
                    }).Where(q => q.MaSach.ToLower().Contains(key.ToLower()) || q.MaSach.ToLower().StartsWith(key.ToLower()) ||
                    q.MaSach.ToLower().EndsWith(key.ToLower()));
                return query.ToList();
            }
        }

        public IEnumerable LoadSachBySach(string key)
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
                    }).ToList().Select(s => new
                    {
                        s.MaSach,
                        s.TenSach,
                        s.TheLoai,
                        GiaNhap = s.GiaNhap.ToString("#,##0.00"),
                        s.TenTacGia,
                        s.SoLuong,
                        NhaCungCap = s.TenNCC
                    }).Where(q => q.TenSach.ToLower().Contains(key.ToLower()) || q.MaSach.ToLower().StartsWith(key.ToLower()) ||
                    q.MaSach.ToLower().EndsWith(key.ToLower()));
                return query.ToList();
            }
        }

        public IEnumerable LoadSachByTacGia(string key)
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
                    }).ToList().Select(s => new
                    {
                        s.MaSach,
                        s.TenSach,
                        s.TheLoai,
                        GiaNhap = s.GiaNhap.ToString("#,##0.00"),
                        s.TenTacGia,
                        s.SoLuong,
                        NhaCungCap = s.TenNCC
                    }).Where(q => q.TenTacGia.ToLower().Contains(key.ToLower()) || q.MaSach.ToLower().StartsWith(key.ToLower()) ||
                    q.MaSach.ToLower().EndsWith(key.ToLower()));
                return query.ToList();
            }
        }

        public void AddSach(string tensach, string theloai, decimal gianhap, string matacgia, string mancc, int soluong)
        {
            using (var db = new QLTVEntities())
            {
                // Lấy mã cuối cùng
                string str_id = db.Saches.ToList().Last().MaSach;

                // chuyển về
                int id = Convert.ToInt32(str_id.Substring(2, 4)) + 1;

                // Tạo mã

                string masach = "SA" + "0000".Substring(0, 6 - id.ToString().Length - 2) + id;
                var sach = new Sach()
                {
                    MaSach = masach,
                    TenSach = tensach,
                    TheLoai = theloai,
                    GiaNhap = gianhap,
                    MaTacGia = matacgia,
                    MaNCC = mancc,
                    SoLuong = soluong
                };
                db.Saches.Add(sach);
                db.SaveChanges();
            }
        }

        public void EditSach(string masach, string tensach, string theloai, decimal gianhap, string matacgia, string mancc, int soluong)
        {
            using (var db = new QLTVEntities())
            {
                var sach = db.Saches.Find(masach);
                if (sach != null)
                {
                    sach.TenSach = tensach;
                    sach.TheLoai = theloai;
                    sach.GiaNhap = gianhap;
                    sach.MaTacGia = matacgia;
                    sach.MaNCC = mancc;
                    sach.SoLuong = soluong;
                    db.SaveChanges();
                }
            }
        }
        public IEnumerable ListSachMuon()
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
                        s.SoLuong
                    }).ToList().Select(s => new
                    {
                        s.MaSach,
                        s.TenSach,
                        s.TheLoai,
                        GiaNhap = s.GiaNhap.ToString("#,##0.00"),
                        s.TenTacGia,
                        s.SoLuong
                    }).Where(s => s.SoLuong >=1);
                return query.ToList();
            }
        }
        public IEnumerable ListSachMuonByID(string key)
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
                        s.SoLuong
                    }).ToList().Select(s => new
                    {
                        s.MaSach,
                        s.TenSach,
                        s.TheLoai,
                        GiaNhap = s.GiaNhap.ToString("#,##0.00"),
                        s.TenTacGia,
                        s.SoLuong
                    }).Where(q =>q.SoLuong >=1 && (q.MaSach.ToLower().Contains(key.ToLower()) || q.MaSach.ToLower().StartsWith(key.ToLower()) ||
                    q.MaSach.ToLower().EndsWith(key.ToLower())));
                return query.ToList();
            }
        }
        public IEnumerable ListSachMuonByName(string key)
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
                        s.SoLuong
                    }).ToList().Select(s => new
                    {
                        s.MaSach,
                        s.TenSach,
                        s.TheLoai,
                        GiaNhap = s.GiaNhap.ToString("#,##0.00"),
                        s.TenTacGia,
                        s.SoLuong
                    }).Where(q =>q.SoLuong >=1 && (q.TenSach.ToLower().Contains(key.ToLower()) || q.MaSach.ToLower().StartsWith(key.ToLower()) ||
                    q.MaSach.ToLower().EndsWith(key.ToLower())));
                return query.ToList();
            }
        }

    }
}
