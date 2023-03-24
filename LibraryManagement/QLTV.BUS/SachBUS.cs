using QLTV.DTO;
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
        public SachBUS() { }
        public IEnumerable SachList()
        {
            return new SachDAO().SachList();
        }
    }
}
