using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace KimHoangOBJ
{
    public class CControl
    {
        public int PK { get; set; }

        public string Code { get; set; }

        public string Name { get; set; }

        public string Detail { get; set; }

        public int ParentId { get; set; }

        public string CreateBy { get; set; }

        public System.DateTime CreateDate { get; set; }

        public string ModBy { get; set; }

        public System.DateTime ModDate { get; set; }

        public string Link { get; set; }

        public string Deleted { get; set; }

        public int Zorder { get; set; }

    }
}
