using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QJ.JDGL.YS.Modal
{
    public class BillInfoModel
    {
        private int BilID;

        public int bilID
        {
            get { return BilID; }
            set { BilID = value; }
        }
        private int CusID;

        public int cusID
        {
            get { return CusID; }
            set { CusID = value; }
        }
        private int RooID;

        public int rooID
        {
            get { return RooID; }
            set { RooID = value; }
        }

        private int CumID;

        public int cumID
        {
            get { return CumID; }
            set { CumID = value; }
        }

        private int ShopID;

        public int shopID
        {
            get { return ShopID; }
            set { ShopID = value; }
        }
        private int Cumprice;

        public int cumprice
        {
            get { return Cumprice; }
            set { Cumprice = value; }
        }

        private string CusName;

        public string cusName
        {
            get { return CusName; }
            set { CusName = value; }
        }

        private string CusSex;

        public string cusSex
        {
            get { return CusSex; }
            set { CusSex = value; }
        }

        private string CusPhone;

        public string cusPhone
        {
            get { return CusPhone; }
            set { CusPhone = value; }
        }
    }
}
