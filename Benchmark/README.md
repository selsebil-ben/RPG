\# Transforming the Benchmark into a Cozo Database



\## Benchmark Overview



This repository explains how to transform the \[Social Network Benchmark (SNB)](https://ldbcouncil.org/benchmarks/snb/) dataset into a Cozo database.



The \*\*LDBC Social Network Benchmark (SNB)\*\* is a standard benchmark defined by the \[Linked Data Benchmark Council (LDBC)](https://ldbcouncil.org), which models a social network using a \*\*property graph model\*\*. It represents interactions between people through friendships, posts, comments, likes, forums, tags, and more.



For our experiments, we work with the SNB at \*\*scale factor SF1\*\*, which contains:



\- \*\*~3 million nodes\*\*

\- \*\*~17 million edges\*\*



\## Dataset Partitioning



To analyze performance at different scales, we divided the original benchmark into \*\*30 progressively growing datasets\*\*:



\- The \*\*smallest dataset\*\* contains \*\*100K nodes\*\* and ~\*\*500K edges\*\*.

\- Each following dataset adds \*\*+100K nodes\*\* and \*\*~+500K edges\*\*, preserving connectivity and content.



We extract the full SNB data from \[this Zenodo record](https://zenodo.org/records/3452106).



\## Data Transformation Steps



For each dataset:



1\. Run the notebook `from\_benchmark\_to\_cozo.ipynb` to randomly select the nodes and extract their corresponding edges.

2\. This notebook will output a `.cozo` script with around \*\*100K nodes\*\* and \*\*~500K edges\*\* per batch.



\## Cozo Property Graph Model



You can find our data model for representing the Property Graph in CozoDB inside the file \[`/Benchmark`](./from\_benchmark\_to\_cozo.ipynb) 

This file defines the schema, relations, and how we structure nodes, edges, labels, and properties in CozoDB.



\## Getting Started with Cozo Queries



We included some basic example queries inside the script files.



To learn how to write and run Cozo queries, check the official CozoDB tutorial:  

&nbsp;\[https://docs.cozodb.org/en/latest/tutorial.html](https://docs.cozodb.org/en/latest/tutorial.html)



---



Enjoy exploring and querying the social graph with CozoDB 🚀





