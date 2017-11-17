using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm_Prova2
{
    public partial class _Despesa : Page
    {
        HttpClient client;
        Uri usuarioUri;
        public _Despesa()
        {
            if (client == null)
            {
                client = new HttpClient();
                client.BaseAddress = new Uri("http://localhost:58844");
                client.DefaultRequestHeaders.Accept.Add(new System.Net.Http.Headers.MediaTypeWithQualityHeaderValue("application/json"));
            }

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                getAll();
            }

        }
        private void getAll()
        {

            System.Net.Http.HttpResponseMessage response = client.GetAsync("api/Despesa").Result;

            if (response.IsSuccessStatusCode)
            {
                usuarioUri = response.Headers.Location;
                var despesas = response.Content.ReadAsAsync<IEnumerable<Models.Despesa>>().Result;

                GridView1.DataSource = despesas;
                GridView1.DataBind();
            }

            else
                Response.Write(response.StatusCode.ToString() + " - " + response.ReasonPhrase);
        }
    }
}