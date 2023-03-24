using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using QLTV.DAO;

namespace QLTV.BUS
{
    public class TacGiaBUS
    {
        public TacGiaBUS() { }
        public IEnumerable TacGiaList()
        {
            return new TacGiaDAO().TacGiaList();
        }
    }
}
