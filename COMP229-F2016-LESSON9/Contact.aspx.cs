using System;
using System.Collections.Generic;
using System.Web.Mail;
using System.Net.Mail;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SubmitBtn_Click(object sender, EventArgs e)
    {
        try
        {
            System.Net.Mail.MailMessage mMailMessage = new System.Net.Mail.MailMessage();
            mMailMessage.From = new MailAddress(HttpUtility.HtmlEncode(EmailTextBox.Text));
           mMailMessage.To.Add(new MailAddress("HGKobeissi1@gmail.com"));

            // mMailMessage.Bcc.Add(new MailAddress(bcc));
            // mMailMessage.CC.Add(new MailAddress(cc));

            mMailMessage.Subject = "From:" + HttpUtility.HtmlEncode(YourNameTextBox.Text) + "-" +
                                             HttpUtility.HtmlEncode(SubjectTextBox.Text);
            mMailMessage.Body = HttpUtility.HtmlEncode(MessageTextBox.Text);
            mMailMessage.IsBodyHtml = true;
            mMailMessage.Priority = System.Net.Mail.MailPriority.Normal;
            SmtpClient mSmtpClient = new SmtpClient();
            mSmtpClient.Send(mMailMessage);
            LabelMessage.Text = "Thank You - Your Message was sent.";
        }
        catch (Exception exp)
        {
            LabelMessage.Text = "ERROR: Unable to Send Contact - " + exp.Message.ToString();
        }
    }
}