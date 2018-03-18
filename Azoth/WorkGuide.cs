using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;

namespace Azoth {
    public class WorkGuide {
        public string Uri { get; set; }
        public DateTime Date { get; set; }
        public string FileName { get; set; }
        private bool _IsPublic;
        public bool IsPublic {
            get {                
                return
                    Date == Convert.ToDateTime(System.Configuration.ConfigurationManager.AppSettings["PublicFile1"])
                    || Date == Convert.ToDateTime(System.Configuration.ConfigurationManager.AppSettings["PublicFile2"])
                    || Date == Convert.ToDateTime(System.Configuration.ConfigurationManager.AppSettings["PublicFile3"]);
            }
        }
        public WorkGuide(string fileName) {
            Uri = "/WorkGuides/rtfs/" + fileName;
            Date = dateFromFileName(fileName);
            FileName = fileName;
        }

        private DateTime dateFromFileName(string fileName) {
            // Work Guide 3-20-2017.rtf
            int indexOfMonth = 11;
            int indexOfDay = fileName.IndexOf("-", indexOfMonth) + 1;
            int indexOfYear = fileName.IndexOf("-", indexOfDay) + 1;
            int indexOfDot = fileName.IndexOf(".", indexOfYear);
            int month = Convert.ToInt32(fileName.Substring(indexOfMonth, (indexOfDay - indexOfMonth - 1)));
            int day = Convert.ToInt32(fileName.Substring(indexOfDay, (indexOfYear - indexOfDay - 1)));
            int year = Convert.ToInt32(fileName.Substring(indexOfYear, indexOfDot - indexOfYear));
            return new DateTime(year, month, day);
        }
        //List<Order> SortedList = objListOrder.OrderBy(o=>o.OrderDate).ToList();
    }
}