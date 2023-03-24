using QLTV.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLTV.DAO
{
    public class SachDAO
    {
        public SachDAO() { }
        public List<Sach> SachList()
        {
            using (var db = new QLTVEntities())
            {
                return db.Saches.ToList();
            }
        }
    }
}
