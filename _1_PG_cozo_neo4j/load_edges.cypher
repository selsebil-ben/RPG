LOAD CSV WITH HEADERS 
FROM 'file:///hasMember.xls' AS row
MATCH (a:FORUM{id: toInteger(row.from_id)}) 
MATCH  (b:PERSON {id: toInteger(row.to_id)})
CREATE (a)-[:HASMEMBER {id: toInteger(row.id_e), joinDate: row.joinDate}]->(b);



LOAD CSV WITH HEADERS 
FROM 'file:///hasModerator.xls' AS row
MATCH (a:FORUM {id: toInteger(row.from_id)}) 
MATCH  (b:PERSON {id: toInteger(row.to_id)})
CREATE (a)-[:HASMODERATOR {id: toInteger(row.id_e), assignedDate: row.assignedDate}]->(b);

LOAD CSV WITH HEADERS 
FROM 'file:///hasTag.xls' AS row
MATCH (a:COMMENT {id: toInteger(row.from_id)}) 
MATCH  (b:TAG {id: toInteger(row.to_id)})
CREATE (a)-[:HASTAG {id: toInteger(row.id_e), relevance: row.relevance}]->(b);

LOAD CSV WITH HEADERS 
FROM 'file:///hasTag.xls' AS row
MATCH (a:POST {id: toInteger(row.from_id)}) 
MATCH  (b:TAG {id: toInteger(row.to_id)})
CREATE (a)-[:HASTAG {id: toInteger(row.id_e), relevance: row.relevance}]->(b);

LOAD CSV WITH HEADERS 
FROM 'file:///hasTag.xls' AS row
MATCH (a:FORUM {id: toInteger(row.from_id)}) 
MATCH  (b:TAG {id: toInteger(row.to_id)})
CREATE (a)-[:HASTAG {id: toInteger(row.id_e), relevance: row.relevance}]->(b);

LOAD CSV WITH HEADERS 
FROM 'file:///hasType.xls' AS row
MATCH (a:TAG {id: toInteger(row.from_id)}) 
MATCH  (b:TAGCLASS {id: toInteger(row.to_id)})
CREATE (a)-[:HASTYPE {id: toInteger(row.id_e)}]->(b);

LOAD CSV WITH HEADERS 
FROM 'file:///isLocatedin.xls' AS row
MATCH (a:POST {id: toInteger(row.from_id)}) 
MATCH  (b:PLACE {id: toInteger(row.to_id)})
CREATE (a)-[:ISLOCATEDIN {id: toInteger(row.id_e), certainty: row.certainty}]->(b);

LOAD CSV WITH HEADERS 
FROM 'file:///isLocatedin.xls' AS row
MATCH (a:FORUM {id: toInteger(row.from_id)}) 
MATCH  (b:PLACE {id: toInteger(row.to_id)})
CREATE (a)-[:ISLOCATEDIN {id: toInteger(row.id_e), certainty: row.certainty}]->(b);

LOAD CSV WITH HEADERS 
FROM 'file:///isLocatedin.xls' AS row
MATCH (a:COMMENT {id: toInteger(row.from_id)}) 
MATCH  (b:PLACE {id: toInteger(row.to_id)})
CREATE (a)-[:ISLOCATEDIN {id: toInteger(row.id_e), certainty: row.certainty}]->(b);

LOAD CSV WITH HEADERS 
FROM 'file:///isLocatedin.xls' AS row
MATCH (a:POST {id: toInteger(row.from_id)}) 
MATCH  (b:PLACE {id: toInteger(row.to_id)})
CREATE (a)-[:ISLOCATEDIN {id: toInteger(row.id_e), certainty: row.certainty}]->(b);

LOAD CSV WITH HEADERS 
FROM 'file:///isLocatedin.xls' AS row
MATCH (a:PERSON {id: toInteger(row.from_id)}) 
MATCH  (b:PLACE {id: toInteger(row.to_id)})
CREATE (a)-[:ISLOCATEDIN {id: toInteger(row.id_e), certainty: row.certainty}]->(b);

LOAD CSV WITH HEADERS 
FROM 'file:///knows.xls' AS row
MATCH (a:PERSON {id: toInteger(row.from_id)}) 
MATCH  (b:PERSON {id: toInteger(row.to_id)})
CREATE (a)-[:KNOWS {id: toInteger(row.id_e), since: row.since, strength: row.strength}]->(b); 


LOAD CSV WITH HEADERS 
FROM 'file:///likes.xls' AS row
MATCH (a:PERSON {id: toInteger(row.from_id)}) 
MATCH  (b:COMMENT {id: toInteger(row.to_id)})
CREATE (a)-[:LIKES {id: toInteger(row.id_e), creationDate: row.creationDate}]->(b);

LOAD CSV WITH HEADERS 
FROM 'file:///likes.xls' AS row
MATCH (a:PERSON {id: toInteger(row.from_id)}) 
MATCH  (b:POST {id: toInteger(row.to_id)})
CREATE (a)-[:LIKES {id: toInteger(row.id_e), creationDate: row.creationDate}]->(b);

LOAD CSV WITH HEADERS 
FROM 'file:///likes.xls' AS row
MATCH (a:PERSON {id: toInteger(row.from_id)}) 
MATCH  (b:COMMENT {id: toInteger(row.to_id)})
CREATE (a)-[:LIKES {id: toInteger(row.id_e), creationDate: row.creationDate}]->(b);

LOAD CSV WITH HEADERS 
FROM 'file:///studyAt.xls' AS row
MATCH (a:PERSON {id: toInteger(row.from_id)}) 
MATCH  (b:ORGANISATION {id: toInteger(row.to_id)})
CREATE (a)-[:STUDYAT {id: toInteger(row.id_e), classYear: row.classYear}]->(b);

LOAD CSV WITH HEADERS 
FROM 'file:///workAt.xls' AS row
MATCH (a:PERSON {id: toInteger(row.from_id)}) 
MATCH  (b:ORGANISATION {id: toInteger(row.to_id)})
CREATE (a)-[:WORKAT {id: toInteger(row.id_e), workFrom: row.workFrom}]->(b);

LOAD CSV WITH HEADERS 
FROM 'file:///speaks.xls' AS row
MATCH (a:PERSON {id: toInteger(row.from_id)}) 
MATCH  (b:LANGUAGE {id: toInteger(row.to_id)})
CREATE (a)-[:SPEAKS {id: toInteger(row.id_e)}]->(b);

LOAD CSV WITH HEADERS 
FROM 'file:///containerOf.xls' AS row
MATCH (a:FORUM {id: toInteger(row.from_id)}) 
MATCH  (b:POST {id: toInteger(row.to_id)})
CREATE (a)-[:CONTAINEROF {id: toInteger(row.id_e)}]->(b);

LOAD CSV WITH HEADERS 
FROM 'file:///email.xls' AS row
MATCH (a:PERSON {id: toInteger(row.from_id)}) 
MATCH  (b:EMAILADDRESS {id: toInteger(row.to_id)})
CREATE (a)-[:EMAIL {id: toInteger(row.id_e)}]->(b);

LOAD CSV WITH HEADERS 
FROM 'file:///hasCreator.xls' AS row
MATCH (a:COMMENT {id: toInteger(row.from_id)}) 
MATCH  (b:PERSON {id: toInteger(row.to_id)})
CREATE (a)-[:HASCREATOR {id: toInteger(row.id_e)}]->(b);

LOAD CSV WITH HEADERS 
FROM 'file:///hasCreator.xls' AS row
MATCH (a:POST {id: toInteger(row.from_id)}) 
MATCH  (b:PERSON {id: toInteger(row.to_id)})
CREATE (a)-[:HASCREATOR {id: toInteger(row.id_e)}]->(b);

LOAD CSV WITH HEADERS 
FROM 'file:///hasInterest.xls' AS row
MATCH (a:PERSON {id: toInteger(row.from_id)}) 
MATCH  (b:TAG {id: toInteger(row.to_id)})
CREATE (a)-[:HASINTEREST {id: toInteger(row.id_e)}]->(b);

LOAD CSV WITH HEADERS 
FROM 'file:///hasMemberWithPosts.xls' AS row
MATCH (a:FORUM {id: toInteger(row.from_id)}) 
MATCH  (b:PERSON {id: toInteger(row.to_id)})
CREATE (a)-[:HASMEMBERWITHPOSTS {id: toInteger(row.id_e)}]->(b);



LOAD CSV WITH HEADERS 
FROM 'file:///isSubclassOf.xls' AS row
MATCH (a:TAGCLASS {id: toInteger(row.from_id)}) 
MATCH  (b:TAGCLASS {id: toInteger(row.to_id)})
CREATE (a)-[:ISSUBCLASSOF {id: toInteger(row.id_e)}]->(b);

LOAD CSV WITH HEADERS 
FROM 'file:///isPartOf.xls' AS row
MATCH (a:PLACE {id: toInteger(row.from_id)}) 
MATCH  (b:PLACE {id: toInteger(row.to_id)})
CREATE (a)-[:ISPARTOF {id: toInteger(row.id_e)}]->(b);

LOAD CSV WITH HEADERS 
FROM 'file:///replyOf.xls' AS row
MATCH (a:COMMENT {id: toInteger(row.from_id)}) 
MATCH  (b:COMMENT {id: toInteger(row.to_id)})
CREATE (a)-[:REPLYOF {id: toInteger(row.id_e), confidence: row.confidence}]->(b);

LOAD CSV WITH HEADERS 
FROM 'file:///replyOf.xls' AS row
MATCH (a:COMMENT {id: toInteger(row.from_id)}) 
MATCH  (b:POST {id: toInteger(row.to_id)})
CREATE (a)-[:REPLYOF {id: toInteger(row.id_e), confidence: row.confidence}]->(b);