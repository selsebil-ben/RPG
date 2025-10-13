##  Experimental Design & Objectives

This section summarizes the four main workloads conducted on **Property Graphs (PG)** and **Reified Property Graphs (RPG)** using **CozoDB** and **Neo4j**.

---

###  Workload 1: PG in CozoDB vs. PG in Neo4j.

- **Databases**:
  - A CozoDB instance represented as a Property Graph (follow setup in [`/_1_Workloads_Design_&_Objectives`](./_1_Workloads_Design_&_Objectives))
  - A Neo4j instance using CSV imports (see [`/_3_PG_from_cozoDB_to_Neo4j`](./_3_PG_from_cozoDB_to_Neo4j))

- **Scope**: Both use the **same structure** (simple property graph) and progressively increasing datasets.

- **Objective**:  
  Establish aperformance baseline, ensuring that CozoDB is at least comparableto classical graph DBMSs before employing it for a PG model withreification.

---

###  Workload 2: PG in CozoDB vs. RPG in CozoDB

- **Databases**:
  - CozoDB with a standard Property Graph (from [`/_1_Workloads_Design_&_Objectives`](./_1_Workloads_Design_&_Objectives))
  - CozoDB with a Reified Property Graph (from [`/_4_RPG_cozoDB`](./_4_RPG_cozoDB))

- **Objective**:  
 Measure the cost of storing reified elements on queries that do not use reified elements.

---

###  Workload 3: Reification queries on RPG in CozoDB
- We partitioned the workload into three sub-workloads. Each sub-workload focuses on executing reification queries while varying a single pa-rameter: the size of the graph dataset, the number of reified nodesand edges, and the depth of the multi-level abstraction.

- **Database**:
  - CozoDB using a Reified Property Graph (from [`/_4_RPG_cozoDB`](./_4_RPG_cozoDB))
####  Workload 3.a:
-  We used a set of reified elementsand and we progressively increased the size of dataset in the same conditions than for the work-load 2. We executed a set of representive queries leveraging reified elements. Objective: Evaluate the impact of Graph DB size on execution time.
####  Workload 3.b: 
-  We used the largest dataset (2.9M nodes and 14.5M edges) and progressively increased the number of reified nodes reified edges. Objective: Evaluate the impact of reified elements on execution time.
####  Workload 3.c: 
- We used the largest dataset and we increased progressively the depth of multi-level abstractions of reified nodes. We used reifeid nodes that contain other reified nodes. Objective: Evaluate the impact of recursive calls on execution time. 

---

###  Workload 4: RPG in CozoDB vs. HO-GDB in Neo4j
- We con-ducted a comparative evaluation between our RPG model in Co-zoDB and the HO-GDB model in Neo4j. 
- **Database**:
  - RPG in CozoDB  (from [`/_4_RPG_cozoDB`](./_4_RPG_cozoDB))
  - HO-GDB in Neo4j  (from [`/_5_RPG_HOGDB`](./_5_RPG_HOGDB))
- **Objective**:  
  Analyze the performance between the two abstraction mechanisms interms of execution time and storage cost. 

---

🚀 These experiments offer insight into how reification and multi-level abstractions influence property graph performance in modern graph databases.
