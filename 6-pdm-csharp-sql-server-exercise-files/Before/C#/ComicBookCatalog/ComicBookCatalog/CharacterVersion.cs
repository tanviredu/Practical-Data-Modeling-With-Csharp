﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ComicBookCatalog
{
    public class CharacterVersion
    {
        public virtual int Id { get; set; }
        public virtual Character Character { get; set; }
        public virtual Person AlterEgo { get; set; }
        public virtual int Version { get; set; }
    }
}
