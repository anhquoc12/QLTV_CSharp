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
    }
}
