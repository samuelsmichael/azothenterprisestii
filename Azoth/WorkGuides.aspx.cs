using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Azoth {
    public partial class WorkGuides : System.Web.UI.Page {
        private List<WorkGuide> WorkGuideNamesInDateOrder {
            get {
                
                if (Session["WorkGuideNamesInDateOrder"] == null) {
                    int i = 0;
                    List<WorkGuide> list = new List<WorkGuide>();
                    DirectoryInfo di = new DirectoryInfo(MapPath("~/WorkGuides/rtfs"));
                    foreach (FileInfo fi in di.GetFiles("*.rtf")) {
                        WorkGuide workGuide = new WorkGuide(fi.Name, this.Context);
                        if (IsMember || workGuide.IsPublic) {
                            list.Add(workGuide);
                        }
                    }

                    List<WorkGuide> sortedList = list.OrderBy(o => o.Date).ToList();
                    Session["WorkGuideNamesInDateOrder"] = sortedList;
                }
                return (List<WorkGuide>)Session["WorkGuideNamesInDateOrder"];
            }
        }
        private bool IsMember {
            get {
                object obj = Session["IsMember"];
                return obj == null ? false : (bool)obj;                    
            }
            set {
                Session["IsMember"] = value;
            }
        }
        protected void Page_Load(object sender, EventArgs e) {
            if (!IsPostBack) {
                Session["WorkGuideNamesInDateOrder"] = null;
                Session["IsMember"] = null;
                dlWorkGuides.DataSource = WorkGuideNamesInDateOrder;
                dlWorkGuides.DataBind();
            }
        }

        protected void btnEnterPasscode_Click(object sender, EventArgs e) {
            lblError.Visible = false;
            if (tbPasscode.Text.ToLower() == System.Configuration.ConfigurationManager.AppSettings["Passcode"].ToLower()) {
                IsMember = true;
                pnlDownloadAll.Visible = true;
                pnlValidate.Visible = false;
                Session["WorkGuideNamesInDateOrder"] = null;
                dlWorkGuides.DataSource = WorkGuideNamesInDateOrder;
                dlWorkGuides.DataBind();
            } else {
                lblError.Visible = true;
            }
        }

        protected void LinkButton1_Command(object sender, CommandEventArgs e) {
            if (e.CommandName == "DownloadIt") {
                Response.Redirect("~/DownloadFile.ashx?FileName=" + ((LinkButton)sender).Text);
            }
        }

        protected void btnDownloadZipFileOfAllFiles_Click(object sender, EventArgs e) {
            Response.Redirect("~/DownloadFile.ashx?FileName=All Work Guides.zip");
        }
    }
}