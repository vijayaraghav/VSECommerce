////////////////////////////////////////////////////////////////////////////////////////////
// <copyright>
// Copyright (c) 2014-2018 VS Online Services Pvt ltd, All Rights Reserved
// </copyright>
// <description>VSECommerce: A VBuy.in platform<description>
// <author>Sivakumar Anirudhan</author>
//VSOnline.VSECommerce.Domain ResultSet
///////////////////////////////////////////////////////////////////////////////////////////
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Elasticsearch.Net;
using Elasticsearch.Net.Connection;
using Nest;
using Elasticsearch.Net.ConnectionPool;
using Elasticsearch.Net.Providers;
using System.Configuration;


namespace VSOnline.VSECommerce.Domain.Search
{
    static class SearchConfiguration
    {

        public static ElasticClient GetSearchClient
        {
            get
            {
                var uriClient1 = ConfigurationManager.AppSettings["ElasticClientUri1"].ToString();
                var nodes = new Uri[]
                    {
                        new Uri(uriClient1)
                        //,
                        //new Uri("http://myserver2:9200"),
                        //new Uri("http://myserver3:9200")
                    };

                        var pool = new StaticConnectionPool(nodes);
                        var settings = new ConnectionSettings(pool, defaultIndex: "defaultIndex").SetTimeout(600000).SniffOnConnectionFault(false)
                            .SniffOnStartup(false)
                             .SetDefaultPropertyNameInferrer(s => s)
                            .DisablePing();
                      return new ElasticClient(settings);
            }
        }
    }
}
