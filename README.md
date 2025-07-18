\# Reified Property Graph Model



\## Model Definition



Our model is an \*\*extension of the Property Graph model\*\* that introduces:



\- \*\*Reified nodes\*\*

\- \*\*Reified edges\*\*

\- \*\*Nested levels of abstraction\*\*

\- \*\*Operators\*\* to create and query them



A \*\*reified node\*\* or \*\*reified edge\*\* is a representation of a \*\*subgraph\*\* composed of nodes, edges, their labels, and properties. This subgraph is encapsulated into a single abstract object — the reified node or edge — which can:

\- Have its own `id`, `labels`, and `properties`

\- Be connected to other parts of the graph

\- Be used to build higher-order structures and abstractions

A \*\*reified node\*\* or \*\*reified edge\ is consedered as an abstraction level .

A multi level abstraction is when a *reified node\*\* or \*\*reified edge contains other reified elements.


>  For more details, see the \[`/papers`](./papers) folder.



---



\## Implementation



We apply our model to the \*\*Social Network Benchmark (SNB)\*\* as follows:



1\. \*\*Data Transformation:\*\*

&nbsp;  - Convert SNB data into \*\*Cozo scripts\*\* to construct a Property Graph (PG) in \[CozoDB](https://cozodb.org)

&nbsp;  - Also convert SNB data into \*\*CSV files\*\* compatible with Neo4j



2\. \*\*Performance Benchmarking:\*\*

&nbsp;  
a. **Our model for a Property Graph**

- Compare \*\*execution time\*\* of equivalent queries on both \*\*Neo4j PG\*\* and \*\*Cozo PG\*\*



a. **Our model for a Reified Property Graph**

&nbsp;  - Extend the Cozo PG to a \*\*Reified Property Graph (RPG)\*\* by:

&nbsp;      - Adding reified nodes and edges

&nbsp;      - Introducing nested abstraction levels


&nbsp; - Measure how query execution time evolves in the \*\*RPG\*\* as we increase:

&nbsp;    - The number of reified nodes

&nbsp;    - The number of reified edges

&nbsp;    - The depth of nested abstractions



---



\##  Repository Structure \& How to Explore



| Folder | Description |

|--------|-------------|

| \[`/Benchmark`](./Benchmark) | Link to the original SNB dataset and scripts to transform it into Cozo PG |

| \[`/\_1\_PG\_cozo\_neo4j`](./\_1\_PG\_cozo\_neo4j) | Scripts to convert the Cozo PG into CSV files compatible with Neo4j |

| \[`/\_2\_RPG\_cozo`](./\_2\_RPG\_cozo) | Scripts to upgrade the Cozo PG into a \*\*Reified Property Graph (RPG)\*\* by adding reified structures |

| \[`/\_3\_Queries\_Results`](./\_3\_Queries\_Results) | Query scripts, experimental results, and graphs for \*\*five benchmark scenarios\*\* |



---



\##  Getting Started



To get started:



1\. Follow the setup instructions in \[`/benchmark`](./benchmark)

2\. Load the PG into Neo4j using the CSV files from \[`/\_1\_PG\_cozo\_neo4j`](./\_1\_PG\_cozo\_neo4j)

3\. Add reified abstractions with \[`/\_2\_RPG\_cozo`](./\_2\_RPG\_cozo)

4\. Analyze performance in \[`/\_3\_Queries\_Results`](./\_3\_Queries\_Results)



---



\##  Special Thanks



This project is built with love, curiosity, and the goal of exploring abstraction and reification in property graphs.



Feel free to open an issue or contribute if you're interested in \*\*graph modeling, CozoDB, or knowledge representation\*\*.


Big thanks to my supervisors for their continuous support and valuable advice
---





