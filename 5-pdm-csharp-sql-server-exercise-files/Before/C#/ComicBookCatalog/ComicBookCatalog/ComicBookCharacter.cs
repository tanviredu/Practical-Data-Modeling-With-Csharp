using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ComicBookCatalog
{
    public class ComicBookCharacter
    {
        public virtual int Id { get; set; }
        public virtual Character Character { get; set; }
        public virtual ComicBook ComicBook { get; set; }
    }
}
