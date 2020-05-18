using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ComicBookCatalog
{
    public class Story
    {
        public virtual int Id { get; set; }
        public virtual string Name { get; set; }
        public virtual Title Title { get; set; }
    }
}
