using QLTV.DTO;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLTV.DAO
{
    public class TacGiaDAO
    {
        public TacGiaDAO() { }
        public IEnumerable TacGiaList()
        {
            using (var db = new QLTVEntities())
            {
                var query = db.TacGias.Select(tg => new
                {
                    tg.MaTacGia,
                    tg.TenTacGia,
                    tg.SDT,
                    tg.Email
                });
                return query.ToList();
            }
        }
    }
}
