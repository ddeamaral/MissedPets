using System;
using System.Collections.Generic;
using System.Text;
using Neo4jClient.Cypher;
using Neo4jClient.Extension.Cypher;

namespace MissingPets.Data.Graph
{
    public class GraphClient
    {
        public static Neo4jClient.IGraphClient Client {
            get {

                ClientCalls++;

                return Client;

            }
        }

        private static int ClientCalls { get; set; }

        public GraphClient()
        {
            // TODO: do some init stuff in here

            
        }

    }
}
