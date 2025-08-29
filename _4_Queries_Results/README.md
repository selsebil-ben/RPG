##  Experimental Design & Objectives

This section summarizes the six main experiments conducted on **Property Graphs (PG)**, **Reified Property Graphs (RPG)** and **Higher Order Graph Database (HOGDB)** using **CozoDB** and **Neo4j**.

---

###  Experiment 1: Cozo vs. Neo4j on Simple Queries (PG)

- **Databases**:
  - A CozoDB instance represented as a Property Graph (follow setup in [`/Benchmark`](./Benchmark))
  - A Neo4j instance using CSV imports (see [`/_1_PG_cozo_neo4j`](./_1_PG_cozo_neo4j))

- **Scope**: Both use the **same structure** (simple property graph) and progressively increasing datasets.

- **Objective**:  
  Compare query execution times between **CozoDB** and **Neo4j**, two prominent systems for property graph storage and querying in both academia and industry.

---

###  Experiment 2: PG vs. RPG in CozoDB

- **Databases**:
  - CozoDB with a standard Property Graph (from [`/Benchmark`](./Benchmark))
  - CozoDB with a Reified Property Graph (from [`/_2_RPG_cozo`](./_2_RPG_cozo))

- **Objective**:  
  Analyze the performance impact of **adding abstraction** via reification by comparing execution times on both graph types.

---

###  Experiment 3: Query Scaling on RPG (CozoDB)

- **Database**:
  - CozoDB using a Reified Property Graph (from [`/_2_RPG_cozo`](./_2_RPG_cozo))

- **Setup**:  
  Execute **reification-based queries** on datasets of increasing size.

- **Objective**:  
  Evaluate how **query performance** evolves as dataset size grows when **reification** is used.

---

###  Experiment 4: Reified Query Load (Fixed Size, Variable Reified Elements)

- **Database**:
  - Fixed-size CozoDB RPG (from [`/_2_RPG_cozo`](./_2_RPG_cozo))

- **Variation**:
  - Number of **reified nodes**
  - Number of **reified edges**
  - Up to **two abstraction levels**

- **Objective**:  
  Investigate the impact of increasing **reified structure complexity** on query performance.

---

###  Experiment 5: Deep Abstraction Impact

- **Database**:
  - Fixed-size CozoDB RPG (from [`/_2_RPG_cozo`](./_2_RPG_cozo))

- **Variation**:
  - **Depth** of nested abstraction levels

- **Objective**:  
  Explore the effect of **increasing abstraction depth** on query execution times.

---
###  Experiment 6: RPG vs. HOGDB 

- **Database**:
  - Fixed-size (from [`/_3_RPG_HOGDB`](._3_RPG_HOGDB))

- **Variation**:
  - Number of **reified nodes** in the RPG
  - Number of **subgraph collections** in the HOGDB

- **Objective**:  
  Explore the effect of **increasing number of reified nodes/subgraph collections** on query execution times.

---

🚀 These experiments offer insight into how reification and multi-level abstractions influence property graph performance in modern graph databases.
