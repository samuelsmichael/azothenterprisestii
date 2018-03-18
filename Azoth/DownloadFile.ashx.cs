using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Azoth {
    /// <summary>
    /// Summary description for DownloadFile1
    /// </summary>
    public class DownloadFile1 : IHttpHandler {
        public void ProcessRequest(HttpContext context) {
            System.Web.HttpResponse response = System.Web.HttpContext.Current.Response;
            response.ClearContent();
            response.Clear();
            response.ContentType = "Application/msword";
            response.AddHeader("Content-Disposition",
                               "attachment; filename=" + context.Request.QueryString["FileName"] + ";");
            response.TransmitFile(context.Server.MapPath("~/WorkGuides/rtfs/" + context.Request.QueryString["FileName"]));
            response.Flush();
            response.End();
        }

        public bool IsReusable {
            get {
                return false;
            }
        }
    }
}