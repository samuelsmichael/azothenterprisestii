using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.IO;

namespace Azoth {
    public class WorkGuide {
        public string Uri { get; set; }
        public DateTime Date { get; set; }
        public string FileName { get; set; }
        public string ToPonder { get; set; }
        private bool _IsPublic;
        public bool IsPublic {
            get {                
                return
                    Date == Convert.ToDateTime(System.Configuration.ConfigurationManager.AppSettings["PublicFile1"])
                    || Date == Convert.ToDateTime(System.Configuration.ConfigurationManager.AppSettings["PublicFile2"])
                    || Date == Convert.ToDateTime(System.Configuration.ConfigurationManager.AppSettings["PublicFile3"]);
            }
        }
        public WorkGuide(string fileName, HttpContext context) {
            Uri = "/WorkGuides/rtfs/" + fileName;
            Date = dateFromFileName(fileName);
            FileName = fileName;
            string toPonder=Path.GetFileNameWithoutExtension(fileName) + ".txt";
            try {
                using (StreamReader sr = new StreamReader(context.Server.MapPath("~/WorkGuides/rtfs/"+toPonder))) {
                    // Read the stream to a string, and write the string to the console.
                    ToPonder = sr.ReadToEnd();
                }
            } catch (Exception e) {
                ToPonder = "";
            }
        }

        private DateTime dateFromFileName(string fileName) {
            // Work Guide 3-20-2017.rtf
            try {
                int indexOfMonth = 11;
                int indexOfDay = fileName.IndexOf("-", indexOfMonth) + 1;
                int indexOfYear = fileName.IndexOf("-", indexOfDay) + 1;
                int indexOfDot = fileName.IndexOf(".", indexOfYear);
                int month = Convert.ToInt32(fileName.Substring(indexOfMonth, (indexOfDay - indexOfMonth - 1)));
                int day = Convert.ToInt32(fileName.Substring(indexOfDay, (indexOfYear - indexOfDay - 1)));
                int year = Convert.ToInt32(fileName.Substring(indexOfYear, indexOfDot - indexOfYear));
                return new DateTime(year, month, day);
            } catch (Exception e) {
                throw e;
            }
        }
        //List<Order> SortedList = objListOrder.OrderBy(o=>o.OrderDate).ToList();
    }
}