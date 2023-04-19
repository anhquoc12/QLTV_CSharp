using QLTV.DTO;
using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Metadata.Edm;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections;
using System.Text.RegularExpressions;

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

        public void AddSach(Sach s)
        {
            using (var db = new QLTVEntities())
            {
                db.Saches.Add(s);
                db.SaveChanges();
            }
        }

        public void EditSach(Sach s)
        {
            using (var db = new QLTVEntities())
            {
                var sach = db.Saches.Find(s.MaSach);
                if (sach != null)
                {
                    sach.TenSach = s.TenSach;
                    sach.TheLoai = s.MaSach;
                    sach.GiaNhap = s.GiaNhap;
                    sach.MaTacGia = s.MaTacGia;
                    sach.MaNCC = s.MaNCC;
                    sach.SoLuong = s.SoLuong;
                    db.SaveChanges();
                }
            }
        }

        public void DeleteSach(string id)
        {
            using (var db = new QLTVEntities())
            {
                var sach = db.Saches.FirstOrDefault(s => s.MaSach == id);

                if (sach != null)
                {
                    var ctm = db.ChiTietPhieuMuons.FirstOrDefault(c => c.MaSach == id);

                    if (ctm != null)
                    {
                        var pm = db.ChiTietPhieuMuons.FirstOrDefault(p => p.MaPM == ctm.MaPM);

                        if (pm != null)
                        {
                            var hd = db.HoaDonTraSaches.FirstOrDefault(h => h.MaPM == pm.MaPM);

                            if (hd != null)
                            {
                                db.HoaDonTraSaches.Remove(hd);
                            }

                            db.PhieuMuons.Remove(pm);
                        }

                        db.ChiTietPhieuMuons.Remove(ctm);
                    }

                    db.Saches.Remove(sach);
                    db.SaveChanges();
                }
            }

        }
    }
}
