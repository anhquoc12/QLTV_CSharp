﻿using QLTV.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using QLTV.DAO;
using System.Data.Entity;
using System.Collections;

namespace QLTV.BUS
{
    public class SachBUS
    {
        SachDAO sach;
        public SachBUS() 
        {
            sach = new SachDAO();        
        }
        public IEnumerable SachList()
        {
            return sach.SachList();
        }

        public IEnumerable LoadSachByID(string key)
        {
            return sach.LoadSachByID(key);
        }

        public IEnumerable LoadSachBySach(string key)
        {
            return sach.LoadSachBySach(key);
        }
        public IEnumerable LoadSachByTacGia(string key)
        {
            return sach.LoadSachByTacGia(key);
        }

        public Boolean AddSach(string masach, string tensach, string theloai, string gianhap, string matacgia, string mancc, string soluong)
        {
            if (tensach == "" || theloai == "" || gianhap == "" || soluong == "")
                return false;
            else
            {
                Sach s = new Sach()
                {
                    MaSach = masach,
                    TenSach = tensach,
                    TheLoai = theloai,
                    GiaNhap = decimal.Parse(gianhap),
                    MaTacGia = matacgia,
                    MaNCC = mancc,
                    SoLuong = Convert.ToInt32(soluong)
                };
                try
                {
                    sach.AddSach(s);
                    return true;
                }
                catch (Exception ex) { return false; }
            }
        }

        public bool EditSach(string masach, string tensach, string theloai, string gianhap, string matacgia, string mancc, string soluong)
        {
            if (masach == "" || tensach == "" || theloai == "" || gianhap == "" || soluong == "")
                return false;
            else 
            {
                Sach s = new Sach()
                {
                    MaSach = masach,
                    TenSach = tensach,
                    TheLoai = theloai,
                    GiaNhap = decimal.Parse(gianhap),
                    MaTacGia = matacgia,
                    MaNCC = mancc,
                    SoLuong = Convert.ToInt32(soluong)
                };
                sach.EditSach(s);
                return true;
            }
        }


    }
}
