﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm_Prova2
{
    public partial class _Default : Page
    {
        HttpClient client;
        Uri usuarioUri;
        public _Default()
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
            
            System.Net.Http.HttpResponseMessage response = client.GetAsync("api/Cliente").Result;
            
            if (response.IsSuccessStatusCode)
            {
                usuarioUri = response.Headers.Location;
                var clientes = response.Content.ReadAsAsync<IEnumerable<Models.Cliente>>().Result;

                GridView1.DataSource = clientes;
                GridView1.DataBind();
            }

            else
                Response.Write(response.StatusCode.ToString() + " - " + response.ReasonPhrase);
        }

        
    }
}