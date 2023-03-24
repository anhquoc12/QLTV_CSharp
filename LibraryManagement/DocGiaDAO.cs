using QLTV.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLTV.DAO
{
    public class DocGiaDAO
    {
        public DocGiaDAO() { }
        public List<DocGia> DocGiaList()
        {

            using (var db = new QLTVEntities())
            {
                var query = from s in db.DocGias select s;
                return query.ToList();
            }
        }
    }
}
