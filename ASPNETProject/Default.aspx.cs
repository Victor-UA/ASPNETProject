using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETProject
{
    public partial class Default : System.Web.UI.Page
    {
        public string main { get; set; } = "";
        public string header { get; set; } = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            header = HTML2String(@"HTML_app\header.html");
            if (Request.QueryString["page"] != null)
            {
                main = MakeContent(Request.QueryString["page"]);
            }
            else
            {
                main = "";
                for (int i = 0; i < 5; i++)
                {
                    main += ReplaceContent(HTML2String(@"HTML_app\main.html"), "[Article number]", (i+1).ToString());
                }
            }
        }

        public string ReplaceContent(string Source, string lookingFor, string String2Replace)
        {
            return ReplaceContent(Source, new string[] { lookingFor }, new string[] { String2Replace });
        }
        public string ReplaceContent(string Source, string[] lookingFor, string[] String2Replace)
        {
            string result = Source;
            if (lookingFor.Length != String2Replace.Length)
            {
                result = Source;
            }
            else
            {
                for (int i = 0; i < lookingFor.Length; i++)
                {
                    result = result.Replace(lookingFor[i], String2Replace[i]);
                }
            }
            return result;
        }
        public string HTML2String(string path)
        {
            string result = "";
            try
            {
                result = File.ReadAllText(Server.MapPath(path));
            }
            catch (Exception ex) {
                result += ex.Message;
            }
            return result;
        }
        public string HTML2String(string path, int count)
        {
            string result = "";
            for(int i = 0; i < count; i++)
            {
                result += HTML2String(path);
            }
            return result;
        }
        public string MakeContent(string param)
        {
            string result = "";
            switch (param)
            {
                case "video":
                    result = HTML2String(@"HTML_app\video.html");
                    break;
                case "photo":
                    result = "Сторінка Фотогалерея";
                    break;
                case "contacts":
                    result = HTML2String(@"HTML_app\contacts.html");
                    result = ReplaceContent(result, 
                        new string[] { "[author]", "[moderator]" },
                        new string[] { "Victor-UA", "Victor-UA" }
                        );
                    if (Request.Form["textEmail"] != null)
                    {
                        result = ReplaceContent(result, 
                            new string[] { "[textLogin]", "[textSubmit]" },
                            new string[] { Request.Form["textEmail"], Request.Form["textSubmit"] }
                            );
                    }
                    else
                    {
                        result = ReplaceContent(result,
                            new string[] { "[textLogin]", "[textSubmit]" },
                            new string[] { "", "" }
                            );
                    }
                    break;
                default:
                    result = "h1 >Помилка 404</h1> <p>Сторінку не знайдено</p>";
                    break;
            }
            return result;
        }

        protected void ButtonAuthorisation_Click(object sender, EventArgs e)
        {
            LabelTest.Text = "Ok!";
        }
    }
}