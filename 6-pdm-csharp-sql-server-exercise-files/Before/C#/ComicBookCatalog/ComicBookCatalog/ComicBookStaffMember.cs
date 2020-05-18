using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ComicBookCatalog
{
    public class ComicBookStaffMember
    {
        public virtual int Id { get; set; }

        public virtual StaffMember StaffMember { get; set; }
        public virtual ComicBook ComicBook { get; set; }
    }
}
