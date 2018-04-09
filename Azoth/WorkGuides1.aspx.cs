using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Azoth {
    public partial class WorkGuides1 : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            if (!IsPostBack) {
                IsMember = false;
                Session["CurrentPage"] = "WorkGuides1.aspx";
                if (Request.Cookies["AzothMember"] != null) {
                    HttpCookie cookie = Request.Cookies["AzothMember"];
                    if (cookie.Value == "yes") {
                        IsMember = true;
                    }
                }
                if (!IsMember) {
                    Session["WorkGuideNamesInDateOrder"] = null;
                    string secretKey = Request.QueryString["q103"];
                    if (secretKey != null && secretKey == "b103") {
                        IsMember = true;
                    } else {
                        IsMember = false;
                    }
                }
            }
            lblThankYou.Visible = false;
            string from = Request.QueryString["From"];
            if (Common.Utils.isNothingNot(from)) {
                if (from.ToLower() == "email") {
                    if (Common.Utils.isNothing(Session["showedthankyou"])) {
                        lblThankYou.Visible = true;
                        Session["showedthankyou"] = true;
                    }
                }
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

        protected void btnHome1_Click(object sender, EventArgs e) {
            Response.Redirect("default.htm");
        }
        protected void btnContactUs_Click(object sender, EventArgs e) {
            Response.Redirect("ContactUs.aspx");
        }

        protected void btnToActualWorkGuides_Click(object sender, EventArgs e) {
            Response.Redirect("WorkGuides2.aspx");
        }
    }
}