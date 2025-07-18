# Reified Property Graph Model

## Model Definition

Our model is an **extension of the Property Graph model** that introduces:

- **Reified nodes**
- **Reified edges**
- **Nested levels of abstraction**
- **Operators** to create and query them

A **reified node** or **reified edge** is a representation of a **subgraph** composed of nodes, edges, their labels, and properties.  
This subgraph is encapsulated into a single abstract object — the reified node or edge — which can:

- Have its own `id`, `labels`, and `properties`
- Be connected to other parts of the graph
- Be used to build higher-order structures and abstractions

A **reified node** or **reified edge** is considered as an abstraction level.  
A multi-level abstraction occurs when a reified node or edge contains other reified elements.

> For more details, see the [`/papers`](./papers) folder.

---

## Implementation

We apply our model to the **Social Network Benchmark (SNB)** as follows:

1. **Data Transformation:**
   - Convert SNB data into **Cozo scripts** to construct a Property Graph (PG) in [CozoDB](https://cozodb.org)
   - Also convert SNB data into **CSV files** compatible with Neo4j

2. **Performance Benchmarking:**

   a. *Property Graph Comparison*  
   - Compare **execution time** of equivalent queries on both **Neo4j PG** and **Cozo PG**

   b. *Reified Property Graph Evaluation*  
   - Extend the Cozo PG to a **Reified Property Graph (RPG)** by:
     - Adding reified nodes and edges
     - Introducing nested abstraction levels
   - Measure how query execution time evolves in the **RPG** as we increase:
     - The number of reified nodes
     - The number of reified edges
     - The depth of nested abstractions

---

## Repository Structure & How to Explore

| Folder                          | Description                                                                 |
|---------------------------------|-----------------------------------------------------------------------------|
| [`/Benchmark`](./Benchmark)     | Link to the original SNB dataset and scripts to transform it into Cozo PG  |
| [`/_1_PG_cozo_neo4j`](./_1_PG_cozo_neo4j) | Scripts to convert the Cozo PG into CSV files for Neo4j                  |
| [`/_2_RPG_cozo`](./_2_RPG_cozo) | Scripts to upgrade the Cozo PG into a **Reified Property Graph (RPG)**     |
| [`/_3_Queries_Results`](./_3_Queries_Results) | Query scripts, experimental results, and benchmark graphs              |

---

## Getting Started

To get started:

1. Follow the setup instructions in [`/Benchmark`](./Benchmark)
2. Load the PG into Neo4j using the CSV files from [`/_1_PG_cozo_neo4j`](./_1_PG_cozo_neo4j)
3. Add reified abstractions with [`/_2_RPG_cozo`](./_2_RPG_cozo)
4. Analyze performance in [`/_3_Queries_Results`](./_3_Queries_Results)

---

## Special Thanks

This project is built with love, curiosity, and the goal of exploring abstraction and reification in property graphs.  
Feel free to open an issue or contribute if you're interested in **graph modeling**, **CozoDB**, or **knowledge representation**.

Big thanks to my supervisors for their continuous support and valuable advice 
