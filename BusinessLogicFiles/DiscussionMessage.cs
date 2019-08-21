using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogicLayer
{
   public class DiscussionMessage
    {
        public int DiscussionMessageID;
        public int MemberID;
        public DateTime SentTime;
        public int TourID;
        public string MessageText;
        public string MessageImage;
        public string MessageTitle;
    }
}
