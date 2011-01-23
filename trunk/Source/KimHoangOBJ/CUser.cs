using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace KimHoangOBJ
{
    public class CUser
    {
        private int _Pk { get; set; }
        private string _User_Name { get; set; }
        private string Password { get; set; }
        private int _Role_pk { get; set; }
        private string _Full_Name { get; set; }
        private string _Email { get; set; }
        private string _Number_Login { get; set; }
        private int _Status { get; set; }
    }
}
