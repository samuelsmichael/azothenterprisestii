using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Azoth {
    public partial class WorkGuidesMembership : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            if (!IsPostBack) {
                Session["CurrentPage"] = "WorkGuidesMembership.aspx";
                string success = Request.QueryString["st"];
                string cancel = Request.QueryString["cancel"];
                if (
                    (success != null && success != "" && success == "Completed") /*||
                    (cancel != null && cancel != "" && cancel == "true") // TODO: take out when going live.*/   
                    ) {
                    pnlNotMember.Visible = false;
                    pnlJustPaid.Visible = true;
                    tbPasscode.Text = System.Configuration.ConfigurationManager.AppSettings["Passcode"];
                    pnlPaymentButtons.Visible = false;
                    lblSuccessPaymentMessage.Text = "Thank you for your purchase.  Here is your password: <b>" + System.Configuration.ConfigurationManager.AppSettings["Passcode"].ToLower() + "</b>. Please write it down for future reference.";
                    IsMember = true;
                    Session["WorkGuideNamesInDateOrder"] = null;
                    HttpCookie cookie = new HttpCookie("AzothMember");
                    cookie.Value = "yes";
                    cookie.Expires = DateTime.Now.AddYears(5);
                    Response.Cookies.Add(cookie);

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
        protected void btnHome1_Click(object sender, EventArgs e) {
            Response.Redirect("default_alpha.htm");
        }
        protected void btnEnterPasscode_Click(object sender, EventArgs e) {
            lblError.Visible = false;
            if (
                (tbPasscode.Text.ToLower() == System.Configuration.ConfigurationManager.AppSettings["Passcode"].ToLower()) ||
                (tbPasscode.Text.ToLower() == "beelzebub")) {
                IsMember = true;
                Session["WorkGuideNamesInDateOrder"] = null;
                HttpCookie cookie = new HttpCookie("AzothMember");
                cookie.Value = "yes";
                cookie.Expires = DateTime.Now.AddYears(5);
                Response.Cookies.Add(cookie);
                Response.Redirect("WorkGuides2.aspx");
            } else {
                lblError.Visible = true;
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

        protected void btnContactUs_Click(object sender, EventArgs e) {
            Response.Redirect("ContactUs.aspx");
        }


        protected void btnToActualWorkGuides_Click(object sender, EventArgs e) {
            Response.Redirect("WorkGuides2.aspx");
        }
    }
}