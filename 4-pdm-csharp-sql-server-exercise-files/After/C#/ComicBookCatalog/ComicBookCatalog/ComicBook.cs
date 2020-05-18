using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ComicBookCatalog
{
    public class ComicBook
    {
        public virtual int Id { get; set; }
        public virtual StoryPart StoryPart { get; set; }
        public virtual int Volume { get; set; }
        public virtual int Issue { get; set; }
        public virtual int Year { get; set; }
        public virtual int Month { get; set; }
        public virtual string Synopsis { get; set; }
    }
}
