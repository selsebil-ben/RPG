#Benchmark Overview

We used a synthetic dataset with a schema inspired from the Social Network Benchmark (SNB), developed bythe LDBC Council. The graph contains 10 distinct node types (e.g., forum, person, post, comment, tag) and 19 distinct edge types (e.g., knows, likes, replyOf, hasTag, hasCreator). We affect randomly labels and properties to nodes and edges with an even distribution, as our objective is only to measure the execution time of queries.  

## Dataset Partitioning

To analyze performance at different scales, we vary the graph size from 100k nodes and 500k edges to **2.9M nodes** and **14.5M edges** with steps of 100k nodes and 500k edges. 

- The **smallest dataset** contains **100K nodes** and approximately **500K edges**.
- Each following dataset adds **+100K nodes** and approximately **+500K edges**, while preserving connectivity and content.
  
In results' figures, the x-axis represents theincreasing graph size. Each value indicates the number of nodesadded to the graph, an underscore, and the number of added edges.For example, the first point on the x-axis (corresponding to the sizeof the initial graph) is 100k_500k, meaning 100k nodes and 500k edges.


## Data Generation Steps

For each dataset:

1. Run the notebook `Generate_dataset_CozoDB.ipynb` to randomly select nodes and extract their corresponding edges.
2. This notebook will output a `.cozo` script containing about **100K nodes** and **~500K edges** per batch.

##  Property Graph Model in CozoDB

You can find our data model for representing the Property Graph in CozoDB inside the file [`PGModel.cozo`](./PGModel.cozo).

This file defines the schema, relations, and how we structure nodes, edges, labels, and properties in CozoDB.

## Getting Started with Cozo Queries

We included some basic example queries inside the script files.

To learn how to write and run Cozo queries, check the official CozoDB tutorial:  
[https://docs.cozodb.org/en/latest/tutorial.html](https://docs.cozodb.org/en/latest/tutorial.html)

---

Enjoy exploring and querying the social graph with **CozoDB** 🚀
