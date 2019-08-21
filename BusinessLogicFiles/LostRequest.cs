using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogicLayer
{
    public class LostRequest
    {
        public int LostRequestID;
        public int MemberID;
        public string Location;
        public int TourID;
        public DateTime RequestTime;
        public string Status;
    }
}
