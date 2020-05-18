using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ComicBookCatalog
{
    public class StaffMember
    {
        public virtual int Id { get; set; }
        public virtual Person Person { get; set; }
        public virtual Role Role { get; set; }
    }
}
