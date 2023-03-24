using QLTV.DAO;
using QLTV.DTO;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLTV.BUS
{
    public class DocGiaBUS
    {
        public DocGiaBUS() { }
        public IEnumerable DocGiaList()
        {
            return new DocGiaDAO().DocGiaList();
        }
    }
}
