using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ComicBookCatalog
{
    public class ComicBook_v1
    {
        public virtual int Id;
        public virtual string Title;
        public virtual int Volume;
        public virtual int Issue;
        public virtual int Year;
        public virtual int Month;
        public virtual string Company;
        public virtual string Writer;
        public virtual string Pencils;
        public virtual string Inks;
        public virtual string Letterer;
        public virtual string Colorist;
        public virtual string Editor;
        public virtual string EditorInChief;
        public virtual string Synopsis;
        public virtual string Story;
        public virtual int Part;
    }
}
