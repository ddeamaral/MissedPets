using System;
using System.Collections.Generic;
using System.Text;

namespace MissingPets.Data.Graph.Interfaces
{
    public interface IOperation
    {
        // Add Node
        Node<T> Add<T>(Node<T> node);

        // Add node with relationship
        Node<T> AddWithEdge<T>(Node<T> node, Relationship relationship);

        // Add Relationship between two nodes
        Node<T1> AddEdge<T1, T2>(Node<T1> node, Node<T2> child, Relationship relationship);

        // Remove Node
        bool Remove<T>(Node<T> node);

        // Remove Relationship  
        bool RemoveEdge<T>(Relationship relationship);

        // Remove Node and relationship
        // Fetch Node
        // Fetch Related
    }
}
