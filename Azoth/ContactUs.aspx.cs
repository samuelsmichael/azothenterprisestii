using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Azoth {
    public partial class ContactUs : System.Web.UI.Page {
        public string CurrentPage {
            get {
                if (Common.Utils.isNothing(Session["CurrentPage"])) {
                    Session["CurrentPage"] = "ContactUs.aspx";
                }
                return (string)Session["CurrentPage"];
            }
            set {
                Session["CurrentPage"] = value;
            }
        }
        protected void Page_Load(object sender, EventArgs e) {
            if (IsPostBack) {
                Session["showedthankyou"] = null;
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