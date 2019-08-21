using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogicLayer
{
    public class Schedule
    {
        public int ScheduleID;
        public int TourID;
        public int PlaceID;
        public DateTime EntryTime;
        public DateTime ExitTime;
        public int TimeToReach;
        public string ScheduleOrder;
    }
}
