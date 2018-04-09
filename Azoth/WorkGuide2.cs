using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.IO;

namespace Azoth {
    public class WorkGuide2 {
        public string Uri { get; set; }
        public DateTime Date { get; set; }
        public string FileName { get; set; }
        public string FileBody { get; set; }
        public string ToPonder { get; set; }
        public string ToReadURL {
            get {
                string anchor = ToRead;
                int startIndex = anchor.IndexOf("href=\"");
                int endIndex = anchor.IndexOf("\"", startIndex + 6);
                return anchor.Substring(startIndex+6, endIndex - (startIndex+6));
            }
        }
        public string DateString {
            get {
                return Date.ToString("MM/dd/yyyy");
            }
        }
        public string ToPonderAuthor { get; set; }
        public string ToRead { get; set; }
        public string ToReadPages { get; set; }
        public string ToPractice { get; set; }
        public bool IsPublic {
            get {
                return
                    Date == Convert.ToDateTime(System.Configuration.ConfigurationManager.AppSettings["PublicFile1"])
                    || Date == Convert.ToDateTime(System.Configuration.ConfigurationManager.AppSettings["PublicFile2"])
                    || Date == Convert.ToDateTime(System.Configuration.ConfigurationManager.AppSettings["PublicFile3"]);
            }
        }
        public WorkGuide2(string fileName, HttpContext context) {
            if (fileName.ToLower().IndexOf("12-25") >= 0) {
                int bkhere = 3;
            }
            Uri = "/WorkGuides/rtfs/" + fileName;
            Date = dateFromFileName(fileName);
            FileName = fileName;
            string name = Path.GetFileNameWithoutExtension(fileName) + ".2.txt";
            try {
                using (StreamReader sr = new StreamReader(context.Server.MapPath("~/WorkGuides/rtfs/" + name))) {
                    // Read the stream to a string, and write the string to the console.
                    FileBody = sr.ReadToEnd();
                    ToPonder = findItem("ponderence");
                    ToPonderAuthor = findItem("ponderenceauthor");
                    ToRead = findItem("toread");
                    ToReadPages=findItem("toreadpages");
                    ToPractice = findItem("topractice");
                }
            } catch (Exception e) {
            }
        }
        private string findItem(string title) {
            int startIndex=FileBody.IndexOf("<" + title+">");
            int endIndex = FileBody.IndexOf("</" + title+">");
            if (startIndex < 0 || endIndex < 0) {
                return "";
            } else {
                startIndex += +title.Length + 2;
                return FileBody.Substring(startIndex, endIndex - startIndex);
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