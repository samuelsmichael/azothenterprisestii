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
                Session["WorkGuideNamesInDateOrder"] = null;
                Session["IsMember"] = null;
                string secretKey = Request.QueryString["q103"];
                if (secretKey != null && secretKey == "b103") {
                    IsMember = true;
                } else {
                    IsMember = false;
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
            Response.Redirect("default_alpha.htm");
        }

        protected void btnToActualWorkGuides_Click(object sender, EventArgs e) {
            Response.Redirect("WorkGuides2.aspx");
        }
    }
}