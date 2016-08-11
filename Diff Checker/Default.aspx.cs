using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Diff_Checker
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCheck_Click(object sender, EventArgs e)
        {
            var dmp = new diff_match_patch();            
            var list = dmp.diff_main(text1.Text, text2.Text);
            var line1 = dmp.GetDifferent(list);
            var line2 = dmp.GetDifferent(list,false);           
            dmp.diff_cleanupSemantic(list);

            var str =  "<br>OLD = "+dmp.diff_prettyHtml(line1);
            str += "<br>New = " + dmp.diff_prettyHtml(line2);
            str += "<br><br><br><b>Single Line</b><br>" + dmp.diff_prettyHtml(list);
            result.InnerHtml = str;
        }
    }
}