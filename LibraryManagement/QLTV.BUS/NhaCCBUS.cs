using QLTV.DAO;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLTV.BUS
{
    public class NhaCCBUS
    {
        public NhaCCBUS() { }
        public IEnumerable NhaCCList()
        {
            return new NhaCCDAO().NhaCCList();
        }
    }
}
