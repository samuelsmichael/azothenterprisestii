using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using Common;

namespace Azoth {
    public partial class WorkGuides2 : System.Web.UI.Page {
        private List<WorkGuide2> WorkGuideNamesInDateOrder {
            get {

                if (Session["WorkGuideNamesInDateOrder"] == null) {
                    int i = 0;
                    List<WorkGuide2> list = new List<WorkGuide2>();
                    DirectoryInfo di = new DirectoryInfo(MapPath("~/WorkGuides/rtfs"));
                    foreach (FileInfo fi in di.GetFiles("*.rtf")) {
                        WorkGuide2 workGuide = new WorkGuide2(fi.Name, this.Context);
                        if (IsMember || workGuide.IsPublic) {
                            list.Add(workGuide);
                        }
                    }

                    List<WorkGuide2> sortedList = list.OrderBy(o => o.Date).ToList();
                    Session["WorkGuideNamesInDateOrder"] = sortedList;
                }
                return (List<WorkGuide2>)Session["WorkGuideNamesInDateOrder"];
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
        private bool AllowPaging {
            get {
                object obj = Session["AllowPaging"];
                return obj == null ? true : (bool)obj;
            }
            set {
                Session["AllowPaging"] = value;
            }
        }

        protected void Page_Load(object sender, EventArgs e) {
            if (!IsPostBack) {
                Session["WorkGuideNamesInDateOrder"] = null;
                Session["IsMember"] = null;
                string secretKey = Request.QueryString["q103"];
                if (secretKey != null && secretKey == "b103") {
                    IsMember = true;
                }
                string allowPaging = Request.QueryString["AllowPaging"];
                if (allowPaging != null) {
                    AllowPaging=Utils.ObjectToBool(allowPaging);
                }
                bindWorkGuides();
            }
        }
        protected void LinkButton1_Command(object sender, CommandEventArgs e) {
            Response.Redirect("~/DownloadFile.ashx?FileName=" + e.CommandName);
        }
        private void bindWorkGuides() {
            PagedDataSource pg = new PagedDataSource();
            pg.DataSource = WorkGuideNamesInDateOrder;
            pg.AllowPaging = AllowPaging;
            pg.PageSize = 1;
            if (CurrentPage >= pg.PageCount) {
                CurrentPage--;
            }
            if (CurrentPage < 0) {
                CurrentPage++;
            }
            pg.CurrentPageIndex = CurrentPage;
            dlWorkGuides.DataSource = pg;
            dlWorkGuides.DataBind();
        }

        protected void btnPrevious_Click(object sender, EventArgs e) {
            CurrentPage--;
            bindWorkGuides();
        }

        protected void btnNext_Click(object sender, EventArgs e) {
            CurrentPage++;
            bindWorkGuides();
        }
        public int CurrentPage {
            get {
                object obj = ViewState["CurrentPage"];
                return obj == null ? 0 : (int)obj;
            }
            set {
                ViewState["CurrentPage"] = value;
            }
        }
    }
}