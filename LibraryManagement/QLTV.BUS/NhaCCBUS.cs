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
        NhaCCDAO ncc;
        public NhaCCBUS() 
        {
            ncc = new NhaCCDAO();
        }
        public IEnumerable NhaCCList()
        {
            return new NhaCCDAO().NhaCCList();
        }

        public IEnumerable LoadNCCByID(string key)
        {
            return ncc.LoadNCCByID(key);
        }

        public IEnumerable LoadNCCByName(string key)
        {
            return ncc.LoadNCCByName(key);
        }
    }
}
