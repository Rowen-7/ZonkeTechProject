using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;

namespace ZonkeTechProject
{
    public partial class Quotations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SendMail()
        {
            //Address from where you send the mail
            var fromAddress = Email.Text.ToString();
            //Any address where the email will be sending
            var toAddress = "info@zonketech.co.za";

            // Passing the values and make a email formate to display
            string subject = CompanyName.Text.ToString() + " Social Media Quote";

            string body = "From: " + Name.Text + "\n";
            body += "Company: " + CompanyName.Text + "\n";
            body += "Email: " + Email.Text + "\n";
            body += "Tel. No: " + TelNo.Text + "\n\n";
            body += "Quote: \n" + textAreaSummary.InnerHtml + "\n";

            //smtp settings
            var smtp = new System.Net.Mail.SmtpClient();
            {
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
                smtp.Credentials = new NetworkCredential("zonketechtest@gmail.com", "zonketech");
                smtp.Timeout = 20000;
            }
            // Passing values to smtp object
            smtp.Send(fromAddress, toAddress, subject, body);
        }



        protected void btnQuoteMe_Click(object sender, EventArgs e)
        {
            try
            {
                //here on button click what will done 
                SendMail();
            }
            catch (Exception) { }

        }
    }
}