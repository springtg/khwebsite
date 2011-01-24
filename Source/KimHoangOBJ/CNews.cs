using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace KimHoangOBJ
{
   public class CNews
    {
        public int Id { get; set; }
        public int Language_Id { get; set; }
        public string Title { get; set; }
        public string News_Content { get; set; }
        public string Crt_By { get; set; }
        public DateTime Crt_Dt { get; set; }
        public DateTime Mod_Dt { get; set; }
        public string Mod_By { get; set; }
        public int Number_Read { get; set; }
    }
}
