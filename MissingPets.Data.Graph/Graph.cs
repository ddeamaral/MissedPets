using System;
using System.Collections.Generic;
using System.Text;
using Neo4jClient.Cypher;

namespace MissingPets.Data.Graph
{
    public class GraphClient
    {
        public static Neo4jClient.IGraphClient Client { get; private set; }

        public GraphClient()
        {

        }

    }
}
