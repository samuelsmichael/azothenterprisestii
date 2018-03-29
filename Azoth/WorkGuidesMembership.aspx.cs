using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Azoth {
    public partial class WorkGuidesMembership : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
        }
        protected void btnHome1_Click(object sender, EventArgs e) {
            Response.Redirect("default_alpha.htm");
        }

        protected void btnToActualWorkGuides_Click(object sender, EventArgs e) {
            Response.Redirect("WorkGuides2.aspx");
        }
    }
}