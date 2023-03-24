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
    }
}
