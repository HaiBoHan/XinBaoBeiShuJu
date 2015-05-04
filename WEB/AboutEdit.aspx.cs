using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Text;

public partial class AboutEdit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Response.ContentEncoding = System.Text.Encoding.GetEncoding("utf-8");
        this.Response.ContentType = "text/html;charset=utf8";

           
    }
    
    protected void txtContent_Changed(object sender, EventArgs e)
    {
        HiddenField tb = sender as HiddenField;
        string path = MapPath("./upload/Data.html");
        if (tb != null)
        {
            if (File.Exists(path))
            {
                File.Delete(path);
            }
            string txt = tb.Value;
            byte[] gbkSTR = Encoding.GetEncoding("utf-8").GetBytes(txt); //System.Text.Encoding.GetEncoding("gb2312").GetString(System.Text.Encoding.Default.GetBytes(tb.Text));
            FileStream myFs = new FileStream(path, FileMode.Create);
            BinaryWriter mySw = new BinaryWriter(myFs);
            mySw.Write(gbkSTR, 0, gbkSTR.GetLength(0));
            mySw.Close();
            myFs.Close();
            Response.Write("<script>alert('保存成功！');</script>");
        }
    }
  
   protected void BtnOpenHtml_Click(object sender, EventArgs e)
    {
    Response.Redirect(string.Format("./upload/Data.html?Redirect={0}", Request.Url.ToString()));
            return;
    }
}
