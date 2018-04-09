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
                pnlBottom.Visible = true;   
                AllowPaging = true;
                Session["CurrentPage"] = "WorkGuides2.aspx";
                Session["WorkGuideNamesInDateOrder"] = null;
                string secondSecretKey = Request.QueryString["forgoogle"];
                if (Common.Utils.isNothingNot(secondSecretKey) && secondSecretKey.ToLower() == "true") {
                    IsMember = true;
                    AllowPaging = false;
                    pnlBottom.Visible = false;
                }
                string allowPaging = Request.QueryString["AllowPaging"];
                if (allowPaging != null) {
                    AllowPaging = Utils.ObjectToBool(allowPaging);
                }
                bindWorkGuides();
            }
            lblThankYou.Visible = false;
            btnDAll.Visible = true;
            string from = Request.QueryString["From"];
            if (Common.Utils.isNothingNot(from)) {
                if (from.ToLower() == "email") {
                    if (Common.Utils.isNothing(Session["showedthankyou"])) {
                        Session["showedthankyou"] = true;
                        lblThankYou.Visible = true;
                        btnDAll.Visible = false;
                    } else {
                        btnDAll.Visible = true;
                    }
                } else {
                    btnDAll.Visible = true;
                }

            }
        }
        protected void LinkButton1_Command(object sender, CommandEventArgs e) {
            string fileName=((WorkGuide2)WorkGuideNamesInDateOrder[CurrentPage]).FileName;
            Response.Redirect("~/DownloadFile.ashx?FileName=" + fileName);
        }
        private void bindWorkGuides() {
            PagedDataSource pg = new PagedDataSource();
            pg.DataSource = WorkGuideNamesInDateOrder;
            pg.AllowPaging = AllowPaging;
            pg.PageSize = 1;
            pg.CurrentPageIndex = CurrentPage;
            dlWorkGuides.DataSource = pg;
            dlWorkGuides.DataBind();
            if (IsMember) {
                btnDAll.Visible = true;
            } else {
                btnDAll.Visible = false;
            }
        }

        protected void btnPrevious_Click(object sender, EventArgs e) {
            if (CurrentPage == 0) {
                Response.Redirect("WorkGuides1.aspx");
            }
            CurrentPage--;
            bindWorkGuides();
        }

        protected void btnNext_Click(object sender, EventArgs e) {
            if (CurrentPage == WorkGuideNamesInDateOrder.Count -1) {
                if (IsMember) {
                    CurrentPage--;
                } else {
                    Response.Redirect("WorkGuidesMembership.aspx");
                }
            }
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
        protected void btnHome1_Click(object sender, EventArgs e) {
            Response.Redirect("default.htm");
        }

        protected void btnDownloadZipFileOfAllFiles_Click(object sender, EventArgs e) {
            Response.Redirect("~/DownloadFile.ashx?FileName=All Work Guides.zip");
        }
        protected void btnContactUs_Click(object sender, EventArgs e) {
            Response.Redirect("ContactUs.aspx");
        }

        protected void dlWorkGuides_ItemDataBound(object sender, DataListItemEventArgs e) {
            if (e.Item is DataListItem) {
                Button l1 = (Button)e.Item.FindControl("btnPrevious");
                if (l1 != null) {
                    if (CurrentPage == 0) {
                        l1.Enabled = false;
                    } else {
                        l1.Enabled = true;
                    }
                }
            }
        }
    }
}