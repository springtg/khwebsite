using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace KimHoangOBJ
{
   public class CSubCat
    {

        public int Id { get; set; }

        public string SubCategoryName { get; set; }

        public int CategoryId { get; set; }

        public System.DateTime CrtDt { get; set; }

        public string CrtBy { get; set; }

        public System.DateTime ModDt { get; set; }

        public string ModBy { get; set; }

        public bool IsDel { get; set; }

        public int LanguageId { get; set; }

        public string Detail { get; set; }

        public int ZOrder { get; set; }


    }
}
