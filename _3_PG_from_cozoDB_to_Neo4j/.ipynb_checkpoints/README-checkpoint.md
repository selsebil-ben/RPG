## Create CSV Data from cozoBD & Load it into Neo4j

### Prerequisites

- Ensure that you run the script **in the same directory** where the `datafile.bd` file is located.
- This file is required to extract and generate CSV files correctly.

### Steps

1. Run the provided Python script.  
   It will generate **CSV files** for each **node type** and **edge type**.

2. Launch your **Neo4j** project.

3. Open the `import` folder in your Neo4j project directory and **paste all the generated CSV files** into it.

4. In the **Neo4j Browser**, run the commands from:

   - `load_nodes.cypher` → to load all nodes  
   - `load_edges.cypher` → to load all relationships

That's it! Your data should now be successfully imported into Neo4j and ready for querying.

