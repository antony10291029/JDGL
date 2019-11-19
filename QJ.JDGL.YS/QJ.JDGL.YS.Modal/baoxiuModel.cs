using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QJ.JDGL.YS.Modal
{
    public class baoxiuModel
    {
        public int baoid { get; set; }
        public string baoname { get; set; }
        public int baofang { get; set; }
        public string wupin { get; set; }
        public string shijian { get; set; }
        public int ischuli { get; set; }

        public string ischulistring
        {
            get
            {
                if (ischuli == 0)
                {
                    return "未处理";
                }
                if (ischuli == 1)
                {
                    return "已处理";
                }
                return "";
            }
            
        }
        public string chushijian { get; set; }
    }
}
